; ModuleID = 'cfglayout.bc'
source_filename = "cfglayout.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
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
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_location_t_heap = type { %struct.VEC_location_t_base }
%struct.VEC_location_t_base = type { i32, i32, [1 x i32] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type opaque
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
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
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@epilogue_locator = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@prologue_locator = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !1936
@block_locators_locs = internal global %struct.VEC_int_heap* null, align 8, !dbg !1928
@block_locators_blocks = internal global %struct.VEC_tree_gc* null, align 8, !dbg !1930
@locations_locators_locs = internal global %struct.VEC_int_heap* null, align 8, !dbg !1932
@locations_locators_vals = internal global %struct.VEC_location_t_heap* null, align 8, !dbg !1934
@last_location = internal unnamed_addr global i32 0, align 4, !dbg !1940
@curr_location = internal global i32 0, align 4, !dbg !1938
@curr_block = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !1942
@last_block = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !1944
@curr_rtl_loc = internal unnamed_addr global i32 -1, align 4, !dbg !1946
@.str = private unnamed_addr constant [15 x i8] c"into_cfglayout\00", align 1
@pass_into_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @into_cfg_layout_mode, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 1 } }, align 8, !dbg !1880
@.str.1 = private unnamed_addr constant [16 x i8] c"outof_cfglayout\00", align 1
@pass_outof_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8 ()* null, i32 ()* @outof_cfg_layout_mode, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 512, i32 0, i32 1 } }, align 8, !dbg !1908
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Reordered sequence:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %i \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"duplicate of %i \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"compensation \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bb %i \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [%i]\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cfglayout.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@gt_ggc_r_gt_cfglayout_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.VEC_tree_gc** @block_locators_blocks to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_tree_gc, void (i8*)* @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1910
@cfg_layout_function_footer = common dso_local local_unnamed_addr global %struct.rtx_def* null, align 8, !dbg !1924
@cfg_layout_function_header = common dso_local local_unnamed_addr global %struct.rtx_def* null, align 8, !dbg !1926
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_reorder_blocks_and_partition = external dso_local local_unnamed_addr global i32, align 4
@optimize = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Emitting label for block %d\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1966, metadata !DIExpression()), !dbg !1967
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1968
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1969
  ret i32 %call, !dbg !1970
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1971 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1975
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1976
  ret i32 %call, !dbg !1977
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2033, metadata !DIExpression()), !dbg !2034
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2035
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2035
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2035
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2035
  %cmp = icmp uge i8* %0, %1, !dbg !2035
  %conv1 = zext i1 %cmp to i64, !dbg !2035
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2035
  %tobool = icmp eq i64 %expval, 0, !dbg !2035
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2035

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2035
  br label %cond.end, !dbg !2035

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2035
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2035
  %2 = load i8, i8* %0, align 1, !dbg !2035
  %conv3 = zext i8 %2 to i32, !dbg !2035
  br label %cond.end, !dbg !2035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2035
  ret i32 %cond, !dbg !2036
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2037 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2039, metadata !DIExpression()), !dbg !2040
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2041
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2041
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2041
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2041
  %cmp = icmp uge i8* %0, %1, !dbg !2041
  %conv1 = zext i1 %cmp to i64, !dbg !2041
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2041
  %tobool = icmp eq i64 %expval, 0, !dbg !2041
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2041

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2041
  br label %cond.end, !dbg !2041

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2041
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2041
  %2 = load i8, i8* %0, align 1, !dbg !2041
  %conv3 = zext i8 %2 to i32, !dbg !2041
  br label %cond.end, !dbg !2041

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2041
  ret i32 %cond, !dbg !2042
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2043 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2044
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2044
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2044
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2044
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2044
  %cmp = icmp uge i8* %1, %2, !dbg !2044
  %conv1 = zext i1 %cmp to i64, !dbg !2044
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2044
  %tobool = icmp eq i64 %expval, 0, !dbg !2044
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2044

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2044
  br label %cond.end, !dbg !2044

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2044
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2044
  %3 = load i8, i8* %1, align 1, !dbg !2044
  %conv3 = zext i8 %3 to i32, !dbg !2044
  br label %cond.end, !dbg !2044

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2044
  ret i32 %cond, !dbg !2045
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2046 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2050, metadata !DIExpression()), !dbg !2051
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2052
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2053
  ret i32 %call, !dbg !2054
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2060, metadata !DIExpression()), !dbg !2061
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2062
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2062
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2062
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2062
  %cmp = icmp uge i8* %0, %1, !dbg !2062
  %conv1 = zext i1 %cmp to i64, !dbg !2062
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2062
  %tobool = icmp eq i64 %expval, 0, !dbg !2062
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2062

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2062
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2062
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2062
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2062
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2062
  store i8 %conv2, i8* %0, align 1, !dbg !2062
  %conv6 = and i32 %__c, 255, !dbg !2062
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2062
  ret i32 %cond, !dbg !2063
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2067, metadata !DIExpression()), !dbg !2068
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2069
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2069
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2069
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2069
  %cmp = icmp uge i8* %0, %1, !dbg !2069
  %conv1 = zext i1 %cmp to i64, !dbg !2069
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2069
  %tobool = icmp eq i64 %expval, 0, !dbg !2069
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2069

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2069
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2069
  br label %cond.end, !dbg !2069

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2069
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2069
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2069
  store i8 %conv2, i8* %0, align 1, !dbg !2069
  %conv6 = and i32 %__c, 255, !dbg !2069
  br label %cond.end, !dbg !2069

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2069
  ret i32 %cond, !dbg !2070
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2073, metadata !DIExpression()), !dbg !2074
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2075
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2075
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2075
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2075
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2075
  %cmp = icmp uge i8* %1, %2, !dbg !2075
  %conv1 = zext i1 %cmp to i64, !dbg !2075
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2075
  %tobool = icmp eq i64 %expval, 0, !dbg !2075
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2075

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2075
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2075
  br label %cond.end, !dbg !2075

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2075
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2075
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2075
  store i8 %conv4, i8* %1, align 1, !dbg !2075
  %conv6 = and i32 %__c, 255, !dbg !2075
  br label %cond.end, !dbg !2075

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2075
  ret i32 %cond, !dbg !2076
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2087
  ret i64 %call, !dbg !2088
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2091, metadata !DIExpression()), !dbg !2092
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2093
  %0 = load i32, i32* %_flags, align 8, !dbg !2093
  %and = lshr i32 %0, 4, !dbg !2093
  %and.lobit = and i32 %and, 1, !dbg !2093
  ret i32 %and.lobit, !dbg !2094
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2097, metadata !DIExpression()), !dbg !2098
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2099
  %0 = load i32, i32* %_flags, align 8, !dbg !2099
  %and = lshr i32 %0, 5, !dbg !2099
  %and.lobit = and i32 %and, 1, !dbg !2099
  ret i32 %and.lobit, !dbg !2100
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2104, metadata !DIExpression()), !dbg !2105
  %__c.off = add i32 %__c, 128, !dbg !2106
  %0 = icmp ult i32 %__c.off, 384, !dbg !2106
  br i1 %0, label %cond.true, label %cond.end, !dbg !2106

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2107
  %1 = load i32*, i32** %call, align 8, !dbg !2108
  %idxprom = sext i32 %__c to i64, !dbg !2109
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2109
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2109
  br label %cond.end, !dbg !2110

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2110
  ret i32 %cond, !dbg !2111
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2114, metadata !DIExpression()), !dbg !2115
  %__c.off = add i32 %__c, 128, !dbg !2116
  %0 = icmp ult i32 %__c.off, 384, !dbg !2116
  br i1 %0, label %cond.true, label %cond.end, !dbg !2116

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2117
  %1 = load i32*, i32** %call, align 8, !dbg !2118
  %idxprom = sext i32 %__c to i64, !dbg !2119
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2119
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2119
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2127, metadata !DIExpression()), !dbg !2128
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2129
  %conv = trunc i64 %call to i32, !dbg !2130
  ret i32 %conv, !dbg !2131
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2136, metadata !DIExpression()), !dbg !2137
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2138
  ret i64 %call, !dbg !2139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2147
  ret i64 %call, !dbg !2148
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2155, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2156, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2157, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2158, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2159, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 0, metadata !2160, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2161, metadata !DIExpression()), !dbg !2165
  br label %while.cond, !dbg !2166

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2167
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2160, metadata !DIExpression()), !dbg !2165
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2168
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2166

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2169
  %div = lshr i64 %add, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %div, metadata !2162, metadata !DIExpression()), !dbg !2165
  %mul = mul i64 %div, %__size, !dbg !2172
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2163, metadata !DIExpression()), !dbg !2165
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %call, metadata !2164, metadata !DIExpression()), !dbg !2165
  %cmp1 = icmp slt i32 %call, 0, !dbg !2175
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2177

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2178
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2180

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2160, metadata !DIExpression()), !dbg !2165
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2165
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2160, metadata !DIExpression()), !dbg !2165
  br label %while.cond, !dbg !2166, !llvm.loop !2182

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2165
  ret i8* %retval.0, !dbg !2184
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2185 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2193
  ret double %call, !dbg !2194
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %base, metadata !2206, metadata !DIExpression()), !dbg !2207
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2208
  ret i64 %call, !dbg !2209
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2210 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %base, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2220
  ret i64 %call, !dbg !2221
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %base, metadata !2235, metadata !DIExpression()), !dbg !2236
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2237
  ret i64 %call, !dbg !2238
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2239 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %base, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2247
  ret i64 %call, !dbg !2248
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2292
  ret i32 %call, !dbg !2293
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2297, metadata !DIExpression()), !dbg !2298
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2299
  ret i32 %call, !dbg !2300
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2301 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2308
  ret i32 %call, !dbg !2309
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2314, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2317, metadata !DIExpression()), !dbg !2318
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2319
  ret i32 %call, !dbg !2320
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2321 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2327, metadata !DIExpression(DW_OP_deref)), !dbg !2328
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2329
  ret i32 %call, !dbg !2330
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2331 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2335, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2338, metadata !DIExpression()), !dbg !2339
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2338, metadata !DIExpression(DW_OP_deref)), !dbg !2339
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2340
  ret i32 %call, !dbg !2341
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2342 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2367, metadata !DIExpression()), !dbg !2368
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2369
  ret i32 %call, !dbg !2370
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2376
  ret i32 %call, !dbg !2377
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2378 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2383, metadata !DIExpression()), !dbg !2384
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2385
  ret i32 %call, !dbg !2386
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2391, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2396
  ret i32 %call, !dbg !2397
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %first, %struct.rtx_def* %last) local_unnamed_addr #4 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last, metadata !2403, metadata !DIExpression()), !dbg !2406
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %first, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2407
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !2407
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2404, metadata !DIExpression()), !dbg !2406
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %last, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2408
  %rt_rtx4 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2408
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !2405, metadata !DIExpression()), !dbg !2406
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx, align 8, !dbg !2409
  store %struct.rtx_def* null, %struct.rtx_def** %rt_rtx4, align 8, !dbg !2410
  %tobool = icmp eq %struct.rtx_def* %1, null, !dbg !2411
  br i1 %tobool, label %if.end, label %if.then, !dbg !2413

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2414
  %rt_rtx16 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2414
  store %struct.rtx_def* %3, %struct.rtx_def** %rt_rtx16, align 8, !dbg !2415
  br label %if.end, !dbg !2414

if.end:                                           ; preds = %entry, %if.then
  %tobool17 = icmp eq %struct.rtx_def* %3, null, !dbg !2416
  br i1 %tobool17, label %if.else, label %if.then18, !dbg !2418

if.then18:                                        ; preds = %if.end
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2419
  %rt_rtx22 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2419
  store %struct.rtx_def* %1, %struct.rtx_def** %rt_rtx22, align 8, !dbg !2420
  br label %if.end23, !dbg !2419

if.else:                                          ; preds = %if.end
  tail call void @set_last_insn(%struct.rtx_def* %1) #6, !dbg !2421
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !2422

if.then25:                                        ; preds = %if.end23
  tail call void @set_first_insn(%struct.rtx_def* %3) #6, !dbg !2423
  br label %if.end26, !dbg !2423

if.end26:                                         ; preds = %if.end23, %if.then25
  ret %struct.rtx_def* %first, !dbg !2425
}

declare dso_local void @set_last_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @set_first_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_alloc() local_unnamed_addr #4 !dbg !2426 {
entry:
  store i32 0, i32* @epilogue_locator, align 4, !dbg !2429
  store i32 0, i32* @prologue_locator, align 4, !dbg !2430
  %call = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 32) #7, !dbg !2431
  store %struct.VEC_int_heap* %call, %struct.VEC_int_heap** @block_locators_locs, align 8, !dbg !2432
  %call1 = tail call fastcc %struct.VEC_tree_gc* @VEC_tree_gc_alloc(i32 32) #7, !dbg !2433
  store %struct.VEC_tree_gc* %call1, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !2434
  %call2 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 32) #7, !dbg !2435
  store %struct.VEC_int_heap* %call2, %struct.VEC_int_heap** @locations_locators_locs, align 8, !dbg !2436
  %call3 = tail call fastcc %struct.VEC_location_t_heap* @VEC_location_t_heap_alloc(i32 32) #7, !dbg !2437
  store %struct.VEC_location_t_heap* %call3, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !2438
  store i32 -1, i32* @last_location, align 4, !dbg !2439
  store i32 -1, i32* @curr_location, align 4, !dbg !2440
  store %union.tree_node* null, %union.tree_node** @curr_block, align 8, !dbg !2441
  store %union.tree_node* null, %union.tree_node** @last_block, align 8, !dbg !2442
  store i32 0, i32* @curr_rtl_loc, align 4, !dbg !2443
  ret void, !dbg !2444
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i32 32, metadata !2449, metadata !DIExpression()), !dbg !2450
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 32, i64 8, i64 4) #6, !dbg !2451
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2451
  ret %struct.VEC_int_heap* %0, !dbg !2451
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_gc* @VEC_tree_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2452 {
entry:
  call void @llvm.dbg.value(metadata i32 32, metadata !2456, metadata !DIExpression()), !dbg !2457
  %call = tail call i8* @vec_gc_p_reserve_exact(i8* null, i32 32) #6, !dbg !2458
  %0 = bitcast i8* %call to %struct.VEC_tree_gc*, !dbg !2458
  ret %struct.VEC_tree_gc* %0, !dbg !2458
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_location_t_heap* @VEC_location_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata i32 32, metadata !2463, metadata !DIExpression()), !dbg !2464
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 32, i64 8, i64 4) #6, !dbg !2465
  %0 = bitcast i8* %call to %struct.VEC_location_t_heap*, !dbg !2465
  ret %struct.VEC_location_t_heap* %0, !dbg !2465
}

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_finalize() local_unnamed_addr #4 !dbg !2466 {
entry:
  %0 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2467
  %cmp = icmp sgt i32 %0, -1, !dbg !2469
  br i1 %cmp, label %if.then, label %if.end, !dbg !2470

if.then:                                          ; preds = %entry
  %call = tail call i32 @curr_insn_locator() #7, !dbg !2471
  store i32 %call, i32* @epilogue_locator, align 4, !dbg !2472
  br label %if.end, !dbg !2473

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, i32* @curr_rtl_loc, align 4, !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: nounwind uwtable
define dso_local i32 @curr_insn_locator() local_unnamed_addr #4 !dbg !2476 {
entry:
  %0 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2477
  %cmp = icmp eq i32 %0, -1, !dbg !2479
  br i1 %cmp, label %return, label %if.end, !dbg !2480

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @last_block, align 8, !dbg !2481
  %2 = load %union.tree_node*, %union.tree_node** @curr_block, align 8, !dbg !2483
  %cmp1 = icmp eq %union.tree_node* %1, %2, !dbg !2484
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !2485

if.then2:                                         ; preds = %if.end
  %inc = add nsw i32 %0, 1, !dbg !2486
  store i32 %inc, i32* @curr_rtl_loc, align 4, !dbg !2486
  %call = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull @block_locators_locs, i32 %inc) #7, !dbg !2488
  %3 = load %union.tree_node*, %union.tree_node** @curr_block, align 8, !dbg !2489
  %call3 = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @block_locators_blocks, %union.tree_node* %3) #7, !dbg !2489
  %4 = load i64, i64* bitcast (%union.tree_node** @curr_block to i64*), align 8, !dbg !2490
  store i64 %4, i64* bitcast (%union.tree_node** @last_block to i64*), align 8, !dbg !2491
  br label %if.end4, !dbg !2492

if.end4:                                          ; preds = %if.end, %if.then2
  %5 = load i32, i32* @last_location, align 4, !dbg !2493
  %6 = load i32, i32* @curr_location, align 4, !dbg !2495
  %cmp5 = icmp eq i32 %5, %6, !dbg !2496
  br i1 %cmp5, label %if.end10, label %if.then6, !dbg !2497

if.then6:                                         ; preds = %if.end4
  %7 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2498
  %inc7 = add nsw i32 %7, 1, !dbg !2498
  store i32 %inc7, i32* @curr_rtl_loc, align 4, !dbg !2498
  %call8 = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull @locations_locators_locs, i32 %inc7) #7, !dbg !2500
  %call9 = tail call fastcc i32* @VEC_location_t_heap_safe_push(%struct.VEC_location_t_heap** nonnull @locations_locators_vals, i32* nonnull @curr_location) #7, !dbg !2501
  %8 = load i32, i32* @curr_location, align 4, !dbg !2502
  store i32 %8, i32* @last_location, align 4, !dbg !2503
  br label %if.end10, !dbg !2504

if.end10:                                         ; preds = %if.end4, %if.then6
  %9 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2505
  br label %return, !dbg !2506

return:                                           ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ %9, %if.end10 ], [ 0, %entry ], !dbg !2507
  ret i32 %retval.0, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_free() local_unnamed_addr #4 !dbg !2509 {
entry:
  store i32 0, i32* @epilogue_locator, align 4, !dbg !2510
  store i32 0, i32* @prologue_locator, align 4, !dbg !2511
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull @block_locators_locs) #7, !dbg !2512
  tail call fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** nonnull @block_locators_blocks) #7, !dbg !2513
  tail call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull @locations_locators_locs) #7, !dbg !2514
  tail call fastcc void @VEC_location_t_heap_free(%struct.VEC_location_t_heap** nonnull @locations_locators_vals) #7, !dbg !2515
  ret void, !dbg !2516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !2517 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !2522, metadata !DIExpression()), !dbg !2523
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !2524
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2524
  br i1 %tobool, label %if.end, label %if.then, !dbg !2526

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !2526
  tail call void @free(i8* nonnull %1) #6, !dbg !2524
  br label %if.end, !dbg !2524

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** %vec_) unnamed_addr #0 !dbg !2527 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @block_locators_blocks, metadata !2532, metadata !DIExpression()), !dbg !2533
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !2534
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2534
  br i1 %tobool, label %if.end, label %if.then, !dbg !2536

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_gc* %0 to i8*, !dbg !2536
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2534
  br label %if.end, !dbg !2534

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_gc* null, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !2536
  ret void, !dbg !2536
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_location_t_heap_free(%struct.VEC_location_t_heap** %vec_) unnamed_addr #0 !dbg !2537 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_heap** @locations_locators_vals, metadata !2542, metadata !DIExpression()), !dbg !2543
  %0 = load %struct.VEC_location_t_heap*, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !2544
  %tobool = icmp eq %struct.VEC_location_t_heap* %0, null, !dbg !2544
  br i1 %tobool, label %if.end, label %if.then, !dbg !2546

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_location_t_heap* %0 to i8*, !dbg !2546
  tail call void @free(i8* nonnull %1) #6, !dbg !2544
  br label %if.end, !dbg !2544

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_location_t_heap* null, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !2546
  ret void, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local void @set_curr_insn_source_location(i32 %location) local_unnamed_addr #4 !dbg !2547 {
entry:
  call void @llvm.dbg.value(metadata i32 %location, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2553
  %cmp = icmp eq i32 %0, -1, !dbg !2555
  br i1 %cmp, label %return, label %if.end, !dbg !2556

if.end:                                           ; preds = %entry
  store i32 %location, i32* @curr_location, align 4, !dbg !2557
  br label %return, !dbg !2558

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2558
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_curr_insn_source_location() local_unnamed_addr #4 !dbg !2559 {
entry:
  %0 = load i32, i32* @curr_location, align 4, !dbg !2562
  ret i32 %0, !dbg !2563
}

; Function Attrs: nounwind uwtable
define dso_local void @set_curr_insn_block(%union.tree_node* %b) local_unnamed_addr #4 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !2568, metadata !DIExpression()), !dbg !2569
  %0 = load i32, i32* @curr_rtl_loc, align 4, !dbg !2570
  %cmp = icmp ne i32 %0, -1, !dbg !2572
  %tobool = icmp ne %union.tree_node* %b, null, !dbg !2573
  %or.cond = and i1 %cmp, %tobool, !dbg !2575
  br i1 %or.cond, label %if.then1, label %if.end2, !dbg !2575

if.then1:                                         ; preds = %entry
  store %union.tree_node* %b, %union.tree_node** @curr_block, align 8, !dbg !2576
  br label %if.end2, !dbg !2577

if.end2:                                          ; preds = %entry, %if.then1
  ret void, !dbg !2578
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_curr_insn_block() local_unnamed_addr #4 !dbg !2579 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @curr_block, align 8, !dbg !2582
  ret %union.tree_node* %0, !dbg !2583
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !2584 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2591, metadata !DIExpression()), !dbg !2592
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #7, !dbg !2593
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !2593
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2593
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2593

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !2593
  br label %cond.end, !dbg !2593

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2593
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #7, !dbg !2593
  ret i32* %call1, !dbg !2593
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2594 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @block_locators_blocks, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2599, metadata !DIExpression()), !dbg !2600
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** nonnull @block_locators_blocks, i32 1) #7, !dbg !2601
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !2601
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2601
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2601

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2601
  br label %cond.end, !dbg !2601

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2601
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !2601
  ret %union.tree_node** %call1, !dbg !2601
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_location_t_heap_safe_push(%struct.VEC_location_t_heap** %vec_, i32* %obj_) unnamed_addr #0 !dbg !2602 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_heap** @locations_locators_vals, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32* @curr_location, metadata !2610, metadata !DIExpression()), !dbg !2611
  %call = tail call fastcc i32 @VEC_location_t_heap_reserve(%struct.VEC_location_t_heap** nonnull @locations_locators_vals, i32 1) #7, !dbg !2612
  %0 = load %struct.VEC_location_t_heap*, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !2612
  %tobool = icmp eq %struct.VEC_location_t_heap* %0, null, !dbg !2612
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2612

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_location_t_heap, %struct.VEC_location_t_heap* %0, i64 0, i32 0, !dbg !2612
  br label %cond.end, !dbg !2612

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_location_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2612
  %call1 = tail call fastcc i32* @VEC_location_t_base_quick_push(%struct.VEC_location_t_base* %cond, i32* nonnull @curr_location) #7, !dbg !2612
  ret i32* %call1, !dbg !2612
}

; Function Attrs: nounwind uwtable
define internal i32 @into_cfg_layout_mode() #4 !dbg !2613 {
entry:
  tail call void @cfg_layout_initialize(i32 0) #7, !dbg !2614
  ret i32 0, !dbg !2615
}

; Function Attrs: nounwind uwtable
define internal i32 @outof_cfg_layout_mode() #4 !dbg !2616 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2619
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2619
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2619
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2619
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2619
  %bb.0.in.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 6, !dbg !2621
  %bb.0.pre = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in.phi.trans.insert, align 8, !dbg !2621
  br label %for.cond, !dbg !2619

for.cond:                                         ; preds = %for.inc, %entry
  %.pre3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre, %for.inc ]
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre, %for.inc ], !dbg !2622
  %bb.0 = phi %struct.basic_block_def* [ %bb.0.pre, %entry ], [ %bb.02, %for.inc ], !dbg !2621
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2618, metadata !DIExpression()), !dbg !2624
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2622
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2622
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2622
  br i1 %cmp, label %for.end, label %for.body, !dbg !2619

for.body:                                         ; preds = %for.cond
  %next_bb3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2625
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb3, align 8, !dbg !2625
  %cmp7 = icmp eq %struct.basic_block_def* %5, %4, !dbg !2627
  br i1 %cmp7, label %for.inc, label %if.then, !dbg !2628

if.then:                                          ; preds = %for.body
  %6 = ptrtoint %struct.basic_block_def* %5 to i64, !dbg !2628
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2629
  %7 = bitcast i8** %aux to i64*, !dbg !2630
  store i64 %6, i64* %7, align 8, !dbg !2630
  %.pre.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2622
  br label %for.inc, !dbg !2631

for.inc:                                          ; preds = %for.body, %if.then
  %.pre = phi %struct.control_flow_graph* [ %.pre3, %for.body ], [ %.pre.pre, %if.then ], !dbg !2622
  %bb.02 = phi %struct.basic_block_def* [ %4, %for.body ], [ %5, %if.then ]
  br label %for.cond, !dbg !2622, !llvm.loop !2632

for.end:                                          ; preds = %for.cond
  tail call void @cfg_layout_finalize() #7, !dbg !2634
  ret i32 0, !dbg !2635
}

; Function Attrs: nounwind uwtable
define dso_local i32 @locator_location(i32 %loc) local_unnamed_addr #4 !dbg !2636 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2640, metadata !DIExpression()), !dbg !2646
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @locations_locators_locs, align 8, !dbg !2647
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !2647
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base) #7, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %call, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()), !dbg !2646
  br label %while.cond, !dbg !2648

while.cond:                                       ; preds = %cleanup, %entry
  %min.0 = phi i32 [ 0, %entry ], [ %min.2, %cleanup ], !dbg !2646
  %max.0 = phi i32 [ %call, %entry ], [ %max.2, %cleanup ], !dbg !2649
  call void @llvm.dbg.value(metadata i32 %max.0, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %min.0, metadata !2642, metadata !DIExpression()), !dbg !2646
  %add = add nsw i32 %min.0, %max.0, !dbg !2650
  %div = sdiv i32 %add, 2, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %div, metadata !2643, metadata !DIExpression()), !dbg !2652
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @locations_locators_locs, align 8, !dbg !2653
  %base3 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2653
  %call7 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %base3, i32 %div) #7, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2645, metadata !DIExpression()), !dbg !2652
  %cmp = icmp sle i32 %call7, %loc, !dbg !2654
  %cmp8 = icmp ne i32 %min.0, %div, !dbg !2656
  %or.cond = and i1 %cmp, %cmp8, !dbg !2657
  br i1 %or.cond, label %if.end14, label %if.else, !dbg !2657

if.else:                                          ; preds = %while.cond
  %cmp9 = icmp sgt i32 %call7, %loc, !dbg !2658
  %cmp11 = icmp ne i32 %max.0, %div, !dbg !2660
  %or.cond1 = and i1 %cmp9, %cmp11, !dbg !2661
  br i1 %or.cond1, label %if.end14, label %cleanup, !dbg !2661

if.end14:                                         ; preds = %if.else, %while.cond
  %min.1 = phi i32 [ %div, %while.cond ], [ %min.0, %if.else ], !dbg !2646
  %max.1 = phi i32 [ %max.0, %while.cond ], [ %div, %if.else ], !dbg !2646
  call void @llvm.dbg.value(metadata i32 %max.1, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %min.1, metadata !2642, metadata !DIExpression()), !dbg !2646
  br label %cleanup, !dbg !2662

cleanup:                                          ; preds = %if.else, %if.end14
  %min.2 = phi i32 [ %min.1, %if.end14 ], [ %div, %if.else ], !dbg !2663
  %max.2 = phi i32 [ %max.1, %if.end14 ], [ %max.0, %if.else ], !dbg !2649
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end14 ], [ false, %if.else ]
  call void @llvm.dbg.value(metadata i32 %max.2, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %min.2, metadata !2642, metadata !DIExpression()), !dbg !2646
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !2664

while.end:                                        ; preds = %cleanup
  %min.2.lcssa = phi i32 [ %min.2, %cleanup ], !dbg !2663
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2642, metadata !DIExpression()), !dbg !2646
  %2 = load %struct.VEC_location_t_heap*, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !2665
  %base18 = getelementptr inbounds %struct.VEC_location_t_heap, %struct.VEC_location_t_heap* %2, i64 0, i32 0, !dbg !2665
  %call22 = tail call fastcc i32* @VEC_location_t_base_index(%struct.VEC_location_t_base* %base18, i32 %min.2.lcssa) #7, !dbg !2665
  %3 = load i32, i32* %call22, align 4, !dbg !2666
  ret i32 %3, !dbg !2667
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !2668 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2674, metadata !DIExpression()), !dbg !2675
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !2676
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2676

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2676
  %0 = load i32, i32* %num, align 4, !dbg !2676
  br label %cond.end, !dbg !2676

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2676
  ret i32 %cond, !dbg !2676
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2677 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2682, metadata !DIExpression()), !dbg !2683
  br label %land.end, !dbg !2684

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2684
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2684
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2684
  ret i32 %0, !dbg !2684
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_location_t_base_index(%struct.VEC_location_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2685 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_base* %vec_, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2691, metadata !DIExpression()), !dbg !2692
  br label %land.end, !dbg !2693

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2693
  %arrayidx = getelementptr inbounds %struct.VEC_location_t_base, %struct.VEC_location_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2693
  ret i32* %arrayidx, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local i32 @locator_line(i32 %loc) local_unnamed_addr #4 !dbg !2694 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2696, metadata !DIExpression()), !dbg !2705
  %0 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !2706
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2706
  %tobool = icmp eq i32 %loc, 0, !dbg !2707
  br i1 %tobool, label %cleanup, label %if.else, !dbg !2709

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.expanded_location* %tmp to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2710
  %call = tail call i32 @locator_location(i32 %loc) #7, !dbg !2711
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2710
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !2712
  %2 = load i32, i32* %line, align 8, !dbg !2712
  br label %cleanup, !dbg !2713

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %2, %if.else ], [ 0, %entry ], !dbg !2705
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2714
  ret i32 %retval.0, !dbg !2714
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @insn_line(%struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !2715 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2722, metadata !DIExpression()), !dbg !2723
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 2, !dbg !2724
  %rt_int = bitcast i64* %arrayidx to i32*, !dbg !2724
  %0 = load i32, i32* %rt_int, align 8, !dbg !2724
  %call = tail call i32 @locator_line(i32 %0) #7, !dbg !2725
  ret i32 %call, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local i8* @locator_file(i32 %loc) local_unnamed_addr #4 !dbg !2727 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2731, metadata !DIExpression()), !dbg !2733
  %0 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2734
  %tobool = icmp eq i32 %loc, 0, !dbg !2735
  br i1 %tobool, label %cleanup, label %if.else, !dbg !2737

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.expanded_location* %tmp to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2738
  %call = tail call i32 @locator_location(i32 %loc) #7, !dbg !2739
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %call) #6, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2738
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2738
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !2740
  %2 = load i8*, i8** %file, align 8, !dbg !2740
  br label %cleanup, !dbg !2741

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i8* [ %2, %if.else ], [ null, %entry ], !dbg !2733
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2742
  ret i8* %retval.0, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local i8* @insn_file(%struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !2743 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2747, metadata !DIExpression()), !dbg !2748
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 2, !dbg !2749
  %rt_int = bitcast i64* %arrayidx to i32*, !dbg !2749
  %0 = load i32, i32* %rt_int, align 8, !dbg !2749
  %call = tail call i8* @locator_file(i32 %0) #7, !dbg !2750
  ret i8* %call, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @locator_eq(i32 %loc1, i32 %loc2) local_unnamed_addr #4 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc1, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %loc2, metadata !2757, metadata !DIExpression()), !dbg !2758
  %cmp = icmp eq i32 %loc1, %loc2, !dbg !2759
  br i1 %cmp, label %return, label %if.end, !dbg !2761

if.end:                                           ; preds = %entry
  %call = tail call i32 @locator_location(i32 %loc1) #7, !dbg !2762
  %call1 = tail call i32 @locator_location(i32 %loc2) #7, !dbg !2764
  %cmp2 = icmp eq i32 %call, %call1, !dbg !2765
  br i1 %cmp2, label %if.end4, label %return, !dbg !2766

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc %union.tree_node* @locator_scope(i32 %loc1) #7, !dbg !2767
  %call6 = tail call fastcc %union.tree_node* @locator_scope(i32 %loc2) #7, !dbg !2768
  %cmp7 = icmp eq %union.tree_node* %call5, %call6, !dbg !2769
  %conv8 = zext i1 %cmp7 to i8, !dbg !2767
  br label %return, !dbg !2770

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8 [ %conv8, %if.end4 ], [ 1, %entry ], [ 0, %if.end ], !dbg !2758
  ret i8 %retval.0, !dbg !2771
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @locator_scope(i32 %loc) unnamed_addr #4 !dbg !2772 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2776, metadata !DIExpression()), !dbg !2782
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @block_locators_locs, align 8, !dbg !2783
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !2783
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base) #7, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %call, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()), !dbg !2782
  %1 = load i32, i32* @prologue_locator, align 4, !dbg !2784
  %cmp = icmp eq i32 %1, %loc, !dbg !2786
  %2 = load i32, i32* @epilogue_locator, align 4, !dbg !2787
  %cmp1 = icmp eq i32 %2, %loc, !dbg !2788
  %or.cond = or i1 %cmp, %cmp1, !dbg !2789
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2789

if.then:                                          ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2790
  %decl = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 6, !dbg !2790
  %4 = bitcast %union.tree_node** %decl to %struct.tree_decl_common**, !dbg !2790
  %5 = load %struct.tree_decl_common*, %struct.tree_decl_common** %4, align 8, !dbg !2790
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %5, i64 0, i32 5, !dbg !2790
  %6 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2790
  br label %cleanup32, !dbg !2791

if.end:                                           ; preds = %entry
  %tobool2 = icmp ne i32 %call, 0, !dbg !2792
  %tobool4 = icmp ne i32 %loc, 0, !dbg !2794
  %or.cond1 = and i1 %tobool2, %tobool4, !dbg !2795
  br i1 %or.cond1, label %while.cond.preheader, label %cleanup32, !dbg !2795

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2796

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %min.0 = phi i32 [ %min.2, %cleanup ], [ 0, %while.cond.preheader ], !dbg !2782
  %max.0 = phi i32 [ %max.2, %cleanup ], [ %call, %while.cond.preheader ], !dbg !2797
  call void @llvm.dbg.value(metadata i32 %max.0, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %min.0, metadata !2778, metadata !DIExpression()), !dbg !2782
  %add = add nsw i32 %min.0, %max.0, !dbg !2798
  %div = sdiv i32 %add, 2, !dbg !2799
  call void @llvm.dbg.value(metadata i32 %div, metadata !2779, metadata !DIExpression()), !dbg !2800
  %7 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @block_locators_locs, align 8, !dbg !2801
  %base9 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %7, i64 0, i32 0, !dbg !2801
  %call13 = tail call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %base9, i32 %div) #7, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %call13, metadata !2781, metadata !DIExpression()), !dbg !2800
  %cmp14 = icmp sle i32 %call13, %loc, !dbg !2802
  %cmp15 = icmp ne i32 %min.0, %div, !dbg !2804
  %or.cond2 = and i1 %cmp14, %cmp15, !dbg !2805
  br i1 %or.cond2, label %if.end23, label %if.else, !dbg !2805

if.else:                                          ; preds = %while.cond
  %cmp17 = icmp sgt i32 %call13, %loc, !dbg !2806
  %cmp19 = icmp ne i32 %max.0, %div, !dbg !2808
  %or.cond3 = and i1 %cmp17, %cmp19, !dbg !2809
  br i1 %or.cond3, label %if.end23, label %cleanup, !dbg !2809

if.end23:                                         ; preds = %if.else, %while.cond
  %min.1 = phi i32 [ %div, %while.cond ], [ %min.0, %if.else ], !dbg !2782
  %max.1 = phi i32 [ %max.0, %while.cond ], [ %div, %if.else ], !dbg !2782
  call void @llvm.dbg.value(metadata i32 %max.1, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %min.1, metadata !2778, metadata !DIExpression()), !dbg !2782
  br label %cleanup, !dbg !2810

cleanup:                                          ; preds = %if.else, %if.end23
  %min.2 = phi i32 [ %min.1, %if.end23 ], [ %div, %if.else ], !dbg !2811
  %max.2 = phi i32 [ %max.1, %if.end23 ], [ %max.0, %if.else ], !dbg !2797
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end23 ], [ false, %if.else ]
  call void @llvm.dbg.value(metadata i32 %max.2, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %min.2, metadata !2778, metadata !DIExpression()), !dbg !2782
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !2812

while.end:                                        ; preds = %cleanup
  %min.2.lcssa = phi i32 [ %min.2, %cleanup ], !dbg !2811
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %min.2.lcssa, metadata !2778, metadata !DIExpression()), !dbg !2782
  %8 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !2813
  %base27 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %8, i64 0, i32 0, !dbg !2813
  %call31 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base27, i32 %min.2.lcssa) #7, !dbg !2813
  br label %cleanup32, !dbg !2814

cleanup32:                                        ; preds = %if.end, %while.end, %if.then
  %retval.0 = phi %union.tree_node* [ %6, %if.then ], [ %call31, %while.end ], [ null, %if.end ], !dbg !2782
  ret %union.tree_node* %retval.0, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local void @reemit_insn_block_notes() local_unnamed_addr #4 !dbg !2816 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2829
  %decl = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 6, !dbg !2829
  %1 = bitcast %union.tree_node** %decl to %struct.tree_decl_common**, !dbg !2829
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** %1, align 8, !dbg !2829
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 5, !dbg !2829
  %3 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2818, metadata !DIExpression()), !dbg !2830
  %call = tail call %struct.rtx_def* @get_insns() #6, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2819, metadata !DIExpression()), !dbg !2830
  %call1 = tail call i32 @active_insn_p(%struct.rtx_def* %call) #6, !dbg !2832
  %tobool = icmp eq i32 %call1, 0, !dbg !2832
  br i1 %tobool, label %if.then, label %if.end, !dbg !2834

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %call) #6, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2819, metadata !DIExpression()), !dbg !2830
  br label %if.end, !dbg !2836

if.end:                                           ; preds = %entry, %if.then
  %insn.0 = phi %struct.rtx_def* [ %call, %entry ], [ %call2, %if.then ], !dbg !2830
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2819, metadata !DIExpression()), !dbg !2830
  br label %for.cond, !dbg !2837

for.cond:                                         ; preds = %cleanup, %if.end
  %insn.1 = phi %struct.rtx_def* [ %insn.0, %if.end ], [ %call50, %cleanup ], !dbg !2830
  %cur_block.0 = phi %union.tree_node* [ %3, %if.end ], [ %cur_block.2, %cleanup ], !dbg !2838
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_block.0, metadata !2818, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2819, metadata !DIExpression()), !dbg !2830
  %tobool3 = icmp eq %struct.rtx_def* %insn.1, null, !dbg !2839
  br i1 %tobool3, label %for.end51, label %for.body, !dbg !2839

for.body:                                         ; preds = %for.cond
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2840
  %bf.load = load i32, i32* %4, align 8, !dbg !2840
  %bf.clear = and i32 %bf.load, 65535, !dbg !2840
  %cmp = icmp eq i32 %bf.clear, 9, !dbg !2840
  br i1 %cmp, label %land.lhs.true, label %for.body.if.end15_crit_edge, !dbg !2840

for.body.if.end15_crit_edge:                      ; preds = %for.body
  br label %if.end15, !dbg !2840

land.lhs.true:                                    ; preds = %for.body
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2840
  %5 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2840
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !2840
  %7 = load i32*, i32** %6, align 8, !dbg !2840
  %bf.load4 = load i32, i32* %7, align 8, !dbg !2840
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !2840
  %cmp6 = icmp eq i32 %bf.clear5, 20, !dbg !2840
  br i1 %cmp6, label %cleanup, label %lor.lhs.false, !dbg !2840

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp13 = icmp eq i32 %bf.clear5, 21, !dbg !2840
  br i1 %cmp13, label %cleanup, label %if.end15, !dbg !2842

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %lor.lhs.false
  %call16 = tail call fastcc %union.tree_node* @insn_scope(%struct.rtx_def* nonnull %insn.1) #7, !dbg !2843
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2821, metadata !DIExpression()), !dbg !2844
  %u17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2845
  %8 = getelementptr inbounds %union.u, %union.u* %u17, i64 1, i32 0, i32 0, i64 0, !dbg !2845
  %9 = bitcast %union.rtunion_def* %8 to i32**, !dbg !2845
  %10 = load i32*, i32** %9, align 8, !dbg !2845
  %bf.load21 = load i32, i32* %10, align 8, !dbg !2845
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !2845
  %cmp23 = icmp eq i32 %bf.clear22, 5, !dbg !2846
  br i1 %cmp23, label %if.then24, label %if.end42, !dbg !2847

if.then24:                                        ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32* %10, metadata !2828, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2821, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2825, metadata !DIExpression()), !dbg !2848
  %arrayidx32 = getelementptr inbounds i32, i32* %10, i64 2, !dbg !2849
  %rt_rtvec = bitcast i32* %arrayidx32 to %struct.rtvec_def**, !dbg !2849
  br label %for.cond29, !dbg !2852

for.cond29:                                       ; preds = %for.body34, %if.then24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body34 ], [ 0, %if.then24 ], !dbg !2848
  %this_block.0 = phi %union.tree_node* [ %call41, %for.body34 ], [ null, %if.then24 ], !dbg !2848
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2825, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.0, metadata !2821, metadata !DIExpression()), !dbg !2844
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2853
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i64 0, i32 0, !dbg !2853
  %12 = load i32, i32* %num_elem, align 8, !dbg !2853
  %13 = sext i32 %12 to i64, !dbg !2854
  %cmp33 = icmp slt i64 %indvars.iv, %13, !dbg !2854
  br i1 %cmp33, label %for.body34, label %if.end42.loopexit, !dbg !2855

for.body34:                                       ; preds = %for.cond29
  %arrayidx39 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i64 0, i32 1, i64 %indvars.iv, !dbg !2856
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx39, align 8, !dbg !2856
  %call40 = tail call fastcc %union.tree_node* @insn_scope(%struct.rtx_def* %14) #7, !dbg !2857
  %call41 = tail call fastcc %union.tree_node* @choose_inner_scope(%union.tree_node* %this_block.0, %union.tree_node* %call40) #7, !dbg !2858
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !2821, metadata !DIExpression()), !dbg !2844
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i32 undef, metadata !2825, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2848
  br label %for.cond29, !dbg !2860, !llvm.loop !2861

if.end42.loopexit:                                ; preds = %for.cond29
  %this_block.0.lcssa = phi %union.tree_node* [ %this_block.0, %for.cond29 ], !dbg !2848
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.0.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.0.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.0.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2844
  br label %if.end42, !dbg !2863

if.end42:                                         ; preds = %if.end42.loopexit, %if.end15
  %this_block.1 = phi %union.tree_node* [ %call16, %if.end15 ], [ %this_block.0.lcssa, %if.end42.loopexit ], !dbg !2844
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.1, metadata !2821, metadata !DIExpression()), !dbg !2844
  %tobool43 = icmp eq %union.tree_node* %this_block.1, null, !dbg !2863
  br i1 %tobool43, label %cleanup, label %if.end45, !dbg !2865

if.end45:                                         ; preds = %if.end42
  %cmp46 = icmp eq %union.tree_node* %this_block.1, %cur_block.0, !dbg !2866
  br i1 %cmp46, label %cleanup, label %if.then47, !dbg !2868

if.then47:                                        ; preds = %if.end45
  tail call fastcc void @change_scope(%struct.rtx_def* nonnull %insn.1, %union.tree_node* %cur_block.0, %union.tree_node* nonnull %this_block.1) #7, !dbg !2869
  call void @llvm.dbg.value(metadata %union.tree_node* %this_block.1, metadata !2818, metadata !DIExpression()), !dbg !2830
  br label %cleanup, !dbg !2871

cleanup:                                          ; preds = %if.end45, %if.end42, %if.then47, %land.lhs.true, %lor.lhs.false
  %cur_block.2 = phi %union.tree_node* [ %cur_block.0, %lor.lhs.false ], [ %cur_block.0, %land.lhs.true ], [ %cur_block.0, %if.end42 ], [ %this_block.1, %if.then47 ], [ %cur_block.0, %if.end45 ], !dbg !2830
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_block.2, metadata !2818, metadata !DIExpression()), !dbg !2830
  %call50 = tail call %struct.rtx_def* @next_active_insn(%struct.rtx_def* nonnull %insn.1) #6, !dbg !2872
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call50, metadata !2819, metadata !DIExpression()), !dbg !2830
  br label %for.cond, !dbg !2873, !llvm.loop !2874

for.end51:                                        ; preds = %for.cond
  %cur_block.0.lcssa = phi %union.tree_node* [ %cur_block.0, %for.cond ], !dbg !2838
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_block.0.lcssa, metadata !2818, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_block.0.lcssa, metadata !2818, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_block.0.lcssa, metadata !2818, metadata !DIExpression()), !dbg !2830
  %call52 = tail call %struct.rtx_def* @emit_note(i32 0) #6, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call52, metadata !2820, metadata !DIExpression()), !dbg !2830
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2877
  %decl54 = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 6, !dbg !2877
  %16 = bitcast %union.tree_node** %decl54 to %struct.tree_decl_common**, !dbg !2877
  %17 = load %struct.tree_decl_common*, %struct.tree_decl_common** %16, align 8, !dbg !2877
  %initial56 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %17, i64 0, i32 5, !dbg !2877
  %18 = load %union.tree_node*, %union.tree_node** %initial56, align 8, !dbg !2877
  tail call fastcc void @change_scope(%struct.rtx_def* %call52, %union.tree_node* %cur_block.0.lcssa, %union.tree_node* %18) #7, !dbg !2878
  %call57 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %call52) #6, !dbg !2879
  tail call void @reorder_blocks() #6, !dbg !2880
  ret void, !dbg !2881
}

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local i32 @active_insn_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @next_active_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @insn_scope(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2886, metadata !DIExpression()), !dbg !2887
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 2, !dbg !2888
  %rt_int = bitcast i64* %arrayidx to i32*, !dbg !2888
  %0 = load i32, i32* %rt_int, align 8, !dbg !2888
  %call = tail call fastcc %union.tree_node* @locator_scope(i32 %0) #7, !dbg !2889
  ret %union.tree_node* %call, !dbg !2890
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @choose_inner_scope(%union.tree_node* %s1, %union.tree_node* %s2) unnamed_addr #4 !dbg !2891 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %s1, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata %union.tree_node* %s2, metadata !2896, metadata !DIExpression()), !dbg !2897
  %tobool = icmp eq %union.tree_node* %s1, null, !dbg !2898
  br i1 %tobool, label %return, label %if.end, !dbg !2900

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %union.tree_node* %s2, null, !dbg !2901
  br i1 %tobool1, label %return, label %if.end3, !dbg !2903

if.end3:                                          ; preds = %if.end
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %s1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2904
  %bf.load = load i32, i32* %0, align 8, !dbg !2904
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !2904
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %s2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2906
  %bf.load6 = load i32, i32* %1, align 8, !dbg !2906
  %bf.lshr7 = lshr i32 %bf.load6, 1, !dbg !2906
  %cmp = icmp ugt i32 %bf.lshr, %bf.lshr7, !dbg !2907
  %s1.s2 = select i1 %cmp, %union.tree_node* %s1, %union.tree_node* %s2, !dbg !2897
  br label %return, !dbg !2897

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi %union.tree_node* [ %s2, %entry ], [ %s1, %if.end ], [ %s1.s2, %if.end3 ], !dbg !2897
  ret %union.tree_node* %retval.0, !dbg !2908
}

; Function Attrs: nounwind uwtable
define internal fastcc void @change_scope(%struct.rtx_def* %orig_insn, %union.tree_node* %s1, %union.tree_node* %s2) unnamed_addr #4 !dbg !2909 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn, metadata !2913, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s1, metadata !2914, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s2, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn, metadata !2916, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2917, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s1, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s2, metadata !2919, metadata !DIExpression()), !dbg !2923
  br label %while.cond, !dbg !2924

while.cond:                                       ; preds = %if.end25, %entry
  %ts1.0 = phi %union.tree_node* [ %s1, %entry ], [ %ts1.2, %if.end25 ], !dbg !2923
  %ts2.0 = phi %union.tree_node* [ %s2, %entry ], [ %ts2.2, %if.end25 ], !dbg !2925
  call void @llvm.dbg.value(metadata %union.tree_node* %ts2.0, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts1.0, metadata !2918, metadata !DIExpression()), !dbg !2923
  %cmp = icmp eq %union.tree_node* %ts1.0, %ts2.0, !dbg !2926
  br i1 %cmp, label %while.cond26.preheader, label %while.body, !dbg !2924

while.cond26.preheader:                           ; preds = %while.cond
  %ts1.0.lcssa = phi %union.tree_node* [ %ts1.0, %while.cond ], !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts1.0.lcssa, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts1.0.lcssa, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts1.0.lcssa, metadata !2918, metadata !DIExpression()), !dbg !2923
  br label %while.cond26, !dbg !2927

while.body:                                       ; preds = %while.cond
  %tobool = icmp ne %union.tree_node* %ts1.0, null, !dbg !2928
  %tobool1 = icmp ne %union.tree_node* %ts2.0, null, !dbg !2928
  %or.cond = and i1 %tobool, %tobool1, !dbg !2928
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !2928

cond.true:                                        ; preds = %while.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 429, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2928
  br label %cond.end, !dbg !2928

cond.end:                                         ; preds = %while.body, %cond.true
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ts1.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2930
  %bf.load = load i32, i32* %0, align 8, !dbg !2930
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !2930
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %ts2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2932
  %bf.load4 = load i32, i32* %1, align 8, !dbg !2932
  %bf.lshr5 = lshr i32 %bf.load4, 1, !dbg !2932
  %cmp6 = icmp ugt i32 %bf.lshr, %bf.lshr5, !dbg !2933
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2934

if.then:                                          ; preds = %cond.end
  %supercontext = getelementptr inbounds %union.tree_node, %union.tree_node* %ts1.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2935
  %2 = bitcast i40* %supercontext to %union.tree_node**, !dbg !2935
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2935
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2918, metadata !DIExpression()), !dbg !2923
  br label %if.end25, !dbg !2936

if.else:                                          ; preds = %cond.end
  %cmp16 = icmp ult i32 %bf.lshr, %bf.lshr5, !dbg !2937
  br i1 %cmp16, label %if.then17, label %if.else20, !dbg !2939

if.then17:                                        ; preds = %if.else
  %supercontext19 = getelementptr inbounds %union.tree_node, %union.tree_node* %ts2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2940
  %4 = bitcast i40* %supercontext19 to %union.tree_node**, !dbg !2940
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !2940
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2919, metadata !DIExpression()), !dbg !2923
  br label %if.end25, !dbg !2941

if.else20:                                        ; preds = %if.else
  %supercontext22 = getelementptr inbounds %union.tree_node, %union.tree_node* %ts1.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2942
  %6 = bitcast i40* %supercontext22 to %union.tree_node**, !dbg !2942
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !2942
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2918, metadata !DIExpression()), !dbg !2923
  %supercontext24 = getelementptr inbounds %union.tree_node, %union.tree_node* %ts2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2944
  %8 = bitcast i40* %supercontext24 to %union.tree_node**, !dbg !2944
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !2944
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2919, metadata !DIExpression()), !dbg !2923
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.else20, %if.then
  %ts1.2 = phi %union.tree_node* [ %3, %if.then ], [ %ts1.0, %if.then17 ], [ %7, %if.else20 ], !dbg !2923
  %ts2.2 = phi %union.tree_node* [ %ts2.0, %if.then ], [ %5, %if.then17 ], [ %9, %if.else20 ], !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts2.2, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %ts1.2, metadata !2918, metadata !DIExpression()), !dbg !2923
  br label %while.cond, !dbg !2924, !llvm.loop !2945

while.cond26:                                     ; preds = %while.cond26.preheader, %while.body28
  %s.0 = phi %union.tree_node* [ %11, %while.body28 ], [ %s1, %while.cond26.preheader ], !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s.0, metadata !2920, metadata !DIExpression()), !dbg !2923
  %cmp27 = icmp eq %union.tree_node* %s.0, %ts1.0.lcssa, !dbg !2947
  br i1 %cmp27, label %while.cond32.preheader, label %while.body28, !dbg !2927

while.cond32.preheader:                           ; preds = %while.cond26
  br label %while.cond32, !dbg !2948

while.body28:                                     ; preds = %while.cond26
  %call = tail call %struct.rtx_def* @emit_note_before(i32 3, %struct.rtx_def* %orig_insn) #6, !dbg !2949
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2921, metadata !DIExpression()), !dbg !2950
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 2, !dbg !2951
  %rt_tree = bitcast i64* %arrayidx to %union.tree_node**, !dbg !2951
  store %union.tree_node* %s.0, %union.tree_node** %rt_tree, align 8, !dbg !2952
  %supercontext30 = getelementptr inbounds %union.tree_node, %union.tree_node* %s.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2953
  %10 = bitcast i40* %supercontext30 to %union.tree_node**, !dbg !2953
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2920, metadata !DIExpression()), !dbg !2923
  br label %while.cond26, !dbg !2927, !llvm.loop !2954

while.cond32:                                     ; preds = %while.cond32.preheader, %while.body34
  %insn.0 = phi %struct.rtx_def* [ %call35, %while.body34 ], [ %orig_insn, %while.cond32.preheader ], !dbg !2923
  %s.1 = phi %union.tree_node* [ %13, %while.body34 ], [ %s2, %while.cond32.preheader ], !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %s.1, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2916, metadata !DIExpression()), !dbg !2923
  %cmp33 = icmp eq %union.tree_node* %s.1, %ts1.0.lcssa, !dbg !2956
  br i1 %cmp33, label %while.end42, label %while.body34, !dbg !2948

while.body34:                                     ; preds = %while.cond32
  %call35 = tail call %struct.rtx_def* @emit_note_before(i32 2, %struct.rtx_def* %insn.0) #6, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call35, metadata !2916, metadata !DIExpression()), !dbg !2923
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call35, i64 0, i32 1, i32 0, i32 2, !dbg !2959
  %rt_tree39 = bitcast i64* %arrayidx38 to %union.tree_node**, !dbg !2959
  store %union.tree_node* %s.1, %union.tree_node** %rt_tree39, align 8, !dbg !2960
  %supercontext41 = getelementptr inbounds %union.tree_node, %union.tree_node* %s.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2961
  %12 = bitcast i40* %supercontext41 to %union.tree_node**, !dbg !2961
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !2961
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !2920, metadata !DIExpression()), !dbg !2923
  br label %while.cond32, !dbg !2948, !llvm.loop !2962

while.end42:                                      ; preds = %while.cond32
  ret void, !dbg !2964
}

declare dso_local %struct.rtx_def* @emit_note(i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @reorder_blocks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @relink_block_chain(i8 zeroext %stay_in_cfglayout_mode) local_unnamed_addr #4 !dbg !2965 {
entry:
  call void @llvm.dbg.value(metadata i8 %stay_in_cfglayout_mode, metadata !2969, metadata !DIExpression()), !dbg !2973
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2974
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2974
  br i1 %tobool, label %if.end19, label %if.then, !dbg !2976

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2977
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2979
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2979
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2979
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2979
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2979
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 6, !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2972, metadata !DIExpression()), !dbg !2973
  br label %for.cond, !dbg !2982

for.cond:                                         ; preds = %if.end17, %if.then
  %bb.0.in = phi %struct.basic_block_def** [ %next_bb, %if.then ], [ %15, %if.end17 ]
  %index.0 = phi i32 [ 2, %if.then ], [ %inc, %if.end17 ], !dbg !2983
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2970, metadata !DIExpression()), !dbg !2973
  %tobool1 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2984
  br i1 %tobool1, label %if.end19.loopexit, label %for.body, !dbg !2984

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2985
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %index.0) #6, !dbg !2988
  %call3 = tail call %struct.basic_block_def* @get_bb_original(%struct.basic_block_def* nonnull %bb.0) #6, !dbg !2989
  %tobool4 = icmp eq %struct.basic_block_def* %call3, null, !dbg !2989
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2991

if.then5:                                         ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2992
  %call6 = tail call %struct.basic_block_def* @get_bb_original(%struct.basic_block_def* nonnull %bb.0) #6, !dbg !2993
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call6, i64 0, i32 9, !dbg !2994
  %6 = load i32, i32* %index7, align 8, !dbg !2994
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %6) #6, !dbg !2995
  br label %if.end17, !dbg !2995

if.else:                                          ; preds = %for.body
  %call9 = tail call zeroext i8 @forwarder_block_p(%struct.basic_block_def* nonnull %bb.0) #6, !dbg !2996
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2996
  br i1 %tobool10, label %if.else14, label %land.lhs.true, !dbg !2998

land.lhs.true:                                    ; preds = %if.else
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2999
  %7 = bitcast %union.basic_block_il_dependent* %il to i32***, !dbg !2999
  %8 = load i32**, i32*** %7, align 8, !dbg !2999
  %9 = load i32*, i32** %8, align 8, !dbg !2999
  %bf.load = load i32, i32* %9, align 8, !dbg !2999
  %bf.clear = and i32 %bf.load, 65535, !dbg !2999
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !2999
  br i1 %cmp, label %if.else14, label %if.then12, !dbg !3000

if.then12:                                        ; preds = %land.lhs.true
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3001
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3002
  br label %if.end17, !dbg !3002

if.else14:                                        ; preds = %if.else, %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3003
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3004
  %12 = load i32, i32* %index15, align 8, !dbg !3004
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %12) #6, !dbg !3005
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.else14, %if.then5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3006
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !3007
  %14 = load i32, i32* %frequency, align 8, !dbg !3007
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %14) #6, !dbg !3008
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3009
  %15 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !3009
  %inc = add nuw nsw i32 %index.0, 1, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2972, metadata !DIExpression()), !dbg !2973
  br label %for.cond, !dbg !3011, !llvm.loop !3012

if.end19.loopexit:                                ; preds = %for.cond
  br label %if.end19, !dbg !3014

if.end19:                                         ; preds = %if.end19.loopexit, %entry
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3014
  %cfg21 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !3014
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !3014
  %x_entry_block_ptr22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 0, !dbg !3014
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr22, align 8, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !2971, metadata !DIExpression()), !dbg !2973
  %next_bb26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 6, !dbg !3015
  br label %for.cond27, !dbg !3016

for.cond27:                                       ; preds = %for.body29, %if.end19
  %prev_bb.0 = phi %struct.basic_block_def* [ %18, %if.end19 ], [ %bb.1, %for.body29 ], !dbg !2973
  %bb.1.in = phi %struct.basic_block_def** [ %next_bb26, %if.end19 ], [ %19, %for.body29 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2970, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0, metadata !2971, metadata !DIExpression()), !dbg !2973
  %tobool28 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !3017
  br i1 %tobool28, label %for.end34, label %for.body29, !dbg !3017

for.body29:                                       ; preds = %for.cond27
  %prev_bb30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 5, !dbg !3019
  store %struct.basic_block_def* %prev_bb.0, %struct.basic_block_def** %prev_bb30, align 8, !dbg !3022
  %next_bb31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %prev_bb.0, i64 0, i32 6, !dbg !3023
  store %struct.basic_block_def* %bb.1, %struct.basic_block_def** %next_bb31, align 8, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2971, metadata !DIExpression()), !dbg !2973
  %aux33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3025
  %19 = bitcast i8** %aux33 to %struct.basic_block_def**, !dbg !3025
  br label %for.cond27, !dbg !3026, !llvm.loop !3027

for.end34:                                        ; preds = %for.cond27
  %prev_bb.0.lcssa = phi %struct.basic_block_def* [ %prev_bb.0, %for.cond27 ], !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !2971, metadata !DIExpression()), !dbg !2973
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !3029
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 1, !dbg !3029
  %21 = bitcast %struct.basic_block_def** %x_exit_block_ptr to i64*, !dbg !3029
  %22 = load i64, i64* %21, align 8, !dbg !3029
  %next_bb37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %prev_bb.0.lcssa, i64 0, i32 6, !dbg !3030
  %23 = bitcast %struct.basic_block_def** %next_bb37 to i64*, !dbg !3031
  store i64 %22, i64* %23, align 8, !dbg !3031
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !3032
  %x_exit_block_ptr40 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 1, !dbg !3032
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr40, align 8, !dbg !3032
  %prev_bb41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 5, !dbg !3033
  store %struct.basic_block_def* %prev_bb.0.lcssa, %struct.basic_block_def** %prev_bb41, align 8, !dbg !3034
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !3035
  %x_entry_block_ptr44 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 0, !dbg !3035
  %tobool51 = icmp eq i8 %stay_in_cfglayout_mode, 0, !dbg !3037
  br i1 %tobool51, label %for.end34.split.us, label %for.end34.for.end34.split_crit_edge, !dbg !3035

for.end34.for.end34.split_crit_edge:              ; preds = %for.end34
  br label %for.cond45, !dbg !3035

for.end34.split.us:                               ; preds = %for.end34
  br label %for.cond45.us, !dbg !3035

for.cond45.us:                                    ; preds = %for.body47.us, %for.end34.split.us
  %bb.2.in.us = phi %struct.basic_block_def** [ %x_entry_block_ptr44, %for.end34.split.us ], [ %next_bb59.us, %for.body47.us ]
  %bb.2.us = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in.us, align 8, !dbg !3041
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2.us, metadata !2970, metadata !DIExpression()), !dbg !2973
  %tobool46.us = icmp eq %struct.basic_block_def* %bb.2.us, null, !dbg !3035
  br i1 %tobool46.us, label %for.end60.us-lcssa.us, label %for.body47.us, !dbg !3035

for.body47.us:                                    ; preds = %for.cond45.us
  %aux48.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2.us, i64 0, i32 2, !dbg !3042
  store i8* null, i8** %aux48.us, align 8, !dbg !3043
  %il49.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2.us, i64 0, i32 7, !dbg !3044
  %rtl50.us = bitcast %union.basic_block_il_dependent* %il49.us to %struct.rtl_bb_info**, !dbg !3045
  %27 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl50.us, align 8, !dbg !3045
  %visited.us = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %27, i64 0, i32 4, !dbg !3046
  store i32 0, i32* %visited.us, align 8, !dbg !3047
  %28 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl50.us, align 8, !dbg !3048
  %footer.us = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %28, i64 0, i32 3, !dbg !3049
  store %struct.rtx_def* null, %struct.rtx_def** %footer.us, align 8, !dbg !3050
  %29 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl50.us, align 8, !dbg !3051
  %header.us = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %29, i64 0, i32 2, !dbg !3052
  store %struct.rtx_def* null, %struct.rtx_def** %header.us, align 8, !dbg !3053
  %next_bb59.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2.us, i64 0, i32 6, !dbg !3054
  br label %for.cond45.us, !dbg !3054, !llvm.loop !3055

for.end60.us-lcssa.us:                            ; preds = %for.cond45.us
  br label %for.end60, !dbg !3057

for.cond45:                                       ; preds = %for.body47, %for.end34.for.end34.split_crit_edge
  %bb.2.in = phi %struct.basic_block_def** [ %x_entry_block_ptr44, %for.end34.for.end34.split_crit_edge ], [ %next_bb59, %for.body47 ]
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !3041
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2970, metadata !DIExpression()), !dbg !2973
  %tobool46 = icmp eq %struct.basic_block_def* %bb.2, null, !dbg !3035
  br i1 %tobool46, label %for.end60.us-lcssa, label %for.body47, !dbg !3035

for.body47:                                       ; preds = %for.cond45
  %aux48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 2, !dbg !3042
  store i8* null, i8** %aux48, align 8, !dbg !3043
  %il49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 7, !dbg !3044
  %rtl50 = bitcast %union.basic_block_il_dependent* %il49 to %struct.rtl_bb_info**, !dbg !3045
  %30 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl50, align 8, !dbg !3045
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %30, i64 0, i32 4, !dbg !3046
  store i32 0, i32* %visited, align 8, !dbg !3047
  %next_bb59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 6, !dbg !3054
  br label %for.cond45, !dbg !3054, !llvm.loop !3055

for.end60.us-lcssa:                               ; preds = %for.cond45
  br label %for.end60, !dbg !3057

for.end60:                                        ; preds = %for.end60.us-lcssa.us, %for.end60.us-lcssa
  tail call void @free_original_copy_tables() #6, !dbg !3057
  br i1 %tobool51, label %if.end63, label %if.then62, !dbg !3058

if.then62:                                        ; preds = %for.end60
  tail call void @initialize_original_copy_tables() #6, !dbg !3059
  br label %if.end63, !dbg !3059

if.end63:                                         ; preds = %for.end60, %if.then62
  tail call void @compact_blocks() #6, !dbg !3061
  ret void, !dbg !3062
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @get_bb_original(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @forwarder_block_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @free_original_copy_tables() local_unnamed_addr #1

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #1

declare dso_local void @compact_blocks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @verify_insn_chain() local_unnamed_addr #4 !dbg !3063 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 1, metadata !3068, metadata !DIExpression()), !dbg !3070
  %call = tail call %struct.rtx_def* @get_insns() #6, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3065, metadata !DIExpression()), !dbg !3070
  br label %for.cond, !dbg !3073

for.cond:                                         ; preds = %for.inc, %entry
  %insn_cnt1.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !3074
  %prevx.0 = phi %struct.rtx_def* [ null, %entry ], [ %x.0, %for.inc ], !dbg !3074
  %x.0 = phi %struct.rtx_def* [ %call, %entry ], [ %3, %for.inc ], !dbg !3074
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !3065, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prevx.0, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt1.0, metadata !3068, metadata !DIExpression()), !dbg !3070
  %cmp = icmp eq %struct.rtx_def* %x.0, null, !dbg !3075
  br i1 %cmp, label %for.end, label %for.body, !dbg !3077

for.body:                                         ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3078
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3078
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3078
  %cmp1 = icmp eq %struct.rtx_def* %1, %prevx.0, !dbg !3078
  br i1 %cmp1, label %for.inc, label %cond.true, !dbg !3078

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 998, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3078
  br label %for.inc, !dbg !3078

for.inc:                                          ; preds = %cond.true, %for.body
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !3066, metadata !DIExpression()), !dbg !3070
  %inc = add nuw nsw i32 %insn_cnt1.0, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3068, metadata !DIExpression()), !dbg !3070
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3080
  %rt_rtx5 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3080
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx5, align 8, !dbg !3080
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3065, metadata !DIExpression()), !dbg !3070
  br label %for.cond, !dbg !3081, !llvm.loop !3082

for.end:                                          ; preds = %for.cond
  %insn_cnt1.0.lcssa = phi i32 [ %insn_cnt1.0, %for.cond ], !dbg !3074
  %prevx.0.lcssa = phi %struct.rtx_def* [ %prevx.0, %for.cond ], !dbg !3074
  call void @llvm.dbg.value(metadata i32 %insn_cnt1.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prevx.0.lcssa, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt1.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prevx.0.lcssa, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt1.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prevx.0.lcssa, metadata !3066, metadata !DIExpression()), !dbg !3070
  %call6 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3084
  %cmp7 = icmp eq %struct.rtx_def* %prevx.0.lcssa, %call6, !dbg !3084
  br i1 %cmp7, label %cond.end10, label %cond.true8, !dbg !3084

cond.true8:                                       ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1000, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3084
  br label %cond.end10, !dbg !3084

cond.end10:                                       ; preds = %for.end, %cond.true8
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()), !dbg !3070
  %call12 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call12, metadata !3065, metadata !DIExpression()), !dbg !3070
  br label %for.cond13, !dbg !3087

for.cond13:                                       ; preds = %for.inc25, %cond.end10
  %insn_cnt2.0 = phi i32 [ 1, %cond.end10 ], [ %inc26, %for.inc25 ], !dbg !3088
  %nextx.0 = phi %struct.rtx_def* [ null, %cond.end10 ], [ %x.1, %for.inc25 ], !dbg !3088
  %x.1 = phi %struct.rtx_def* [ %call12, %cond.end10 ], [ %7, %for.inc25 ], !dbg !3088
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !3065, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %nextx.0, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt2.0, metadata !3069, metadata !DIExpression()), !dbg !3070
  %cmp14 = icmp eq %struct.rtx_def* %x.1, null, !dbg !3089
  br i1 %cmp14, label %for.end31, label %for.body15, !dbg !3091

for.body15:                                       ; preds = %for.cond13
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3092
  %rt_rtx19 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3092
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx19, align 8, !dbg !3092
  %cmp20 = icmp eq %struct.rtx_def* %5, %nextx.0, !dbg !3092
  br i1 %cmp20, label %for.inc25, label %cond.true21, !dbg !3092

cond.true21:                                      ; preds = %for.body15
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1005, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3092
  br label %for.inc25, !dbg !3092

for.inc25:                                        ; preds = %cond.true21, %for.body15
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !3067, metadata !DIExpression()), !dbg !3070
  %inc26 = add nuw nsw i32 %insn_cnt2.0, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !3069, metadata !DIExpression()), !dbg !3070
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3094
  %rt_rtx30 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !3094
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !3094
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3065, metadata !DIExpression()), !dbg !3070
  br label %for.cond13, !dbg !3095, !llvm.loop !3096

for.end31:                                        ; preds = %for.cond13
  %insn_cnt2.0.lcssa = phi i32 [ %insn_cnt2.0, %for.cond13 ], !dbg !3088
  call void @llvm.dbg.value(metadata i32 %insn_cnt2.0.lcssa, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt2.0.lcssa, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %insn_cnt2.0.lcssa, metadata !3069, metadata !DIExpression()), !dbg !3070
  %cmp32 = icmp eq i32 %insn_cnt1.0.lcssa, %insn_cnt2.0.lcssa, !dbg !3098
  br i1 %cmp32, label %cond.end35, label %cond.true33, !dbg !3098

cond.true33:                                      ; preds = %for.end31
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1007, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3098
  br label %cond.end35, !dbg !3098

cond.end35:                                       ; preds = %for.end31, %cond.true33
  ret void, !dbg !3099
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_last_insn() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cfg_layout_can_duplicate_bb_p(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3107, metadata !DIExpression()), !dbg !3111
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3112
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3112
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3112
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !3112
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3112
  %call = tail call zeroext i8 @tablejump_p(%struct.rtx_def* %1, %struct.rtx_def** null, %struct.rtx_def** null) #6, !dbg !3114
  %tobool = icmp eq i8 %call, 0, !dbg !3114
  br i1 %tobool, label %if.end, label %return, !dbg !3115

if.end:                                           ; preds = %entry
  %2 = load i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 37), align 8, !dbg !3116
  %tobool1 = icmp eq i8 (%struct.rtx_def*)* %2, null, !dbg !3117
  br i1 %tobool1, label %if.end27, label %if.then2, !dbg !3118

if.then2:                                         ; preds = %if.end
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3119
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 0, !dbg !3119
  br label %while.cond, !dbg !3120

while.cond:                                       ; preds = %if.end26, %if.then2
  %4 = phi %struct.rtl_bb_info* [ %3, %if.then2 ], [ %7, %if.end26 ]
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.then2 ], [ %rt_rtx, %if.end26 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3108, metadata !DIExpression()), !dbg !3121
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3122
  %bf.load = load i32, i32* %5, align 8, !dbg !3122
  %bf.clear = and i32 %bf.load, 65535, !dbg !3122
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3122
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3122

lor.lhs.false:                                    ; preds = %while.cond
  %cmp7 = icmp eq i32 %bf.clear, 7, !dbg !3122
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3122

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i32 %bf.clear, 9, !dbg !3122
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false12, !dbg !3122

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %cmp15 = icmp eq i32 %bf.clear, 10, !dbg !3122
  br i1 %cmp15, label %land.lhs.true, label %if.end19, !dbg !3125

land.lhs.true:                                    ; preds = %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false, %while.cond
  %6 = load i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 37), align 8, !dbg !3126
  %call16 = tail call zeroext i8 %6(%struct.rtx_def* %insn.0) #6, !dbg !3127
  %tobool17 = icmp eq i8 %call16, 0, !dbg !3127
  br i1 %tobool17, label %land.lhs.true.if.end19_crit_edge, label %cleanup, !dbg !3128

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3129
  br label %if.end19, !dbg !3128

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %lor.lhs.false12
  %7 = phi %struct.rtl_bb_info* [ %.pre, %land.lhs.true.if.end19_crit_edge ], [ %4, %lor.lhs.false12 ], !dbg !3129
  %end_22 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !3129
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_22, align 8, !dbg !3129
  %cmp23 = icmp eq %struct.rtx_def* %insn.0, %8, !dbg !3131
  br i1 %cmp23, label %cleanup, label %if.end26, !dbg !3132

if.end26:                                         ; preds = %if.end19
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3133
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3133
  br label %while.cond, !dbg !3120, !llvm.loop !3134

cleanup:                                          ; preds = %land.lhs.true, %if.end19
  %cleanup.dest.slot.0 = phi i1 [ false, %land.lhs.true ], [ true, %if.end19 ]
  br i1 %cleanup.dest.slot.0, label %if.end27, label %return

if.end27:                                         ; preds = %if.end, %cleanup
  br label %return, !dbg !3136

return:                                           ; preds = %entry, %cleanup, %if.end27
  %retval.1 = phi i8 [ 0, %cleanup ], [ 1, %if.end27 ], [ 0, %entry ], !dbg !3111
  ret i8 %retval.1, !dbg !3137
}

declare dso_local zeroext i8 @tablejump_p(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @duplicate_insn_chain(%struct.rtx_def* %from, %struct.rtx_def* %to) local_unnamed_addr #4 !dbg !3138 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %from, metadata !3140, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.rtx_def* %to, metadata !3141, metadata !DIExpression()), !dbg !3145
  %call = tail call %struct.rtx_def* @emit_note(i32 0) #6, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.rtx_def* %from, metadata !3142, metadata !DIExpression()), !dbg !3145
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %to, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3147
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3147
  br label %for.cond, !dbg !3150

for.cond:                                         ; preds = %for.inc, %entry
  %insn.0 = phi %struct.rtx_def* [ %from, %entry ], [ %9, %for.inc ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3142, metadata !DIExpression()), !dbg !3145
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3152
  %cmp = icmp eq %struct.rtx_def* %insn.0, %1, !dbg !3153
  br i1 %cmp, label %for.end, label %for.body, !dbg !3154

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3155
  %bf.load = load i32, i32* %2, align 8, !dbg !3155
  %trunc = trunc i32 %bf.load to i16, !dbg !3157
  switch i16 %trunc, label %sw.default26 [
    i16 7, label %sw.bb
    i16 8, label %sw.bb
    i16 10, label %sw.bb
    i16 9, label %sw.bb
    i16 12, label %for.inc
    i16 11, label %sw.bb17
    i16 13, label %sw.bb19
  ], !dbg !3157

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body
  %u1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3158
  %3 = getelementptr inbounds %union.u, %union.u* %u1, i64 1, i32 0, i32 0, i64 0, !dbg !3158
  %4 = bitcast %union.rtunion_def* %3 to i32**, !dbg !3158
  %5 = load i32*, i32** %4, align 8, !dbg !3158
  %bf.load5 = load i32, i32* %5, align 8, !dbg !3158
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !3158
  %cmp7 = icmp eq i32 %bf.clear6, 20, !dbg !3161
  br i1 %cmp7, label %for.inc, label %lor.lhs.false, !dbg !3162

lor.lhs.false:                                    ; preds = %sw.bb
  %cmp14 = icmp eq i32 %bf.clear6, 21, !dbg !3163
  br i1 %cmp14, label %for.inc, label %if.end, !dbg !3164

if.end:                                           ; preds = %lor.lhs.false
  %call15 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3165
  %call16 = tail call %struct.rtx_def* @emit_copy_of_insn_after(%struct.rtx_def* %insn.0, %struct.rtx_def* %call15) #6, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call16, metadata !3144, metadata !DIExpression()), !dbg !3145
  tail call void @maybe_copy_epilogue_insn(%struct.rtx_def* %insn.0, %struct.rtx_def* %call16) #6, !dbg !3167
  br label %for.inc, !dbg !3168

sw.bb17:                                          ; preds = %for.body
  %call18 = tail call %struct.rtx_def* @emit_barrier() #6, !dbg !3169
  br label %for.inc, !dbg !3170

sw.bb19:                                          ; preds = %for.body
  %u20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3171
  %6 = getelementptr inbounds %union.u, %union.u* %u20, i64 1, i32 0, i32 0, i64 0, !dbg !3171
  %rt_int = bitcast %union.rtunion_def* %6 to i32*, !dbg !3171
  %7 = load i32, i32* %rt_int, align 8, !dbg !3171
  switch i32 %7, label %sw.default [
    i32 5, label %for.inc
    i32 0, label %for.inc
    i32 1, label %for.inc
    i32 4, label %for.inc
    i32 10, label %for.inc
    i32 6, label %sw.bb24
    i32 11, label %sw.bb24
  ], !dbg !3172

sw.bb24:                                          ; preds = %sw.bb19, %sw.bb19
  %call25 = tail call %struct.rtx_def* @emit_note_copy(%struct.rtx_def* %insn.0) #6, !dbg !3173
  br label %for.inc, !dbg !3175

sw.default:                                       ; preds = %sw.bb19
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3176
  br label %for.inc, !dbg !3177

sw.default26:                                     ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3178
  br label %for.inc, !dbg !3179

for.inc:                                          ; preds = %if.end, %for.body, %sw.bb17, %sw.default26, %lor.lhs.false, %sw.bb, %sw.bb19, %sw.bb19, %sw.bb19, %sw.bb19, %sw.bb19, %sw.default, %sw.bb24
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3180
  %rt_rtx31 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3180
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx31, align 8, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %for.cond, !dbg !3181, !llvm.loop !3182

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3184
  %rt_rtx35 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !3184
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx35, align 8, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !3142, metadata !DIExpression()), !dbg !3145
  %call36 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %call) #6, !dbg !3185
  ret %struct.rtx_def* %11, !dbg !3186
}

declare dso_local %struct.rtx_def* @emit_copy_of_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @maybe_copy_epilogue_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_barrier() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_note_copy(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @cfg_layout_duplicate_bb(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3187 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3191, metadata !DIExpression()), !dbg !3196
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3197
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3197
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3197
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !3197
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3197
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !3198
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3198
  %call = tail call %struct.rtx_def* @duplicate_insn_chain(%struct.rtx_def* %1, %struct.rtx_def* %2) #7, !dbg !3199
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3192, metadata !DIExpression()), !dbg !3196
  %3 = bitcast %struct.rtx_def* %call to i8*, !dbg !3200
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3201
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3201

cond.true:                                        ; preds = %entry
  %call3 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3202
  %phitmp = bitcast %struct.rtx_def* %call3 to i8*, !dbg !3201
  br label %cond.end, !dbg !3201

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %phitmp, %cond.true ], [ null, %entry ]
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3203
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3203
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3203
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3203
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3203
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 5, !dbg !3204
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !3204
  %call4 = tail call %struct.basic_block_def* @create_basic_block(i8* %3, i8* %cond, %struct.basic_block_def* %7) #6, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !3194, metadata !DIExpression()), !dbg !3206
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call4, i64 0, i32 13, !dbg !3207
  %8 = load i32, i32* %flags, align 8, !dbg !3207
  %and = and i32 %8, -97, !dbg !3207
  %flags5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3207
  %9 = load i32, i32* %flags5, align 8, !dbg !3207
  %and6 = and i32 %9, 96, !dbg !3207
  %or = or i32 %and, %and6, !dbg !3207
  store i32 %or, i32* %flags, align 8, !dbg !3207
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3208
  %header = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 2, !dbg !3210
  %11 = load %struct.rtx_def*, %struct.rtx_def** %header, align 8, !dbg !3210
  %tobool10 = icmp eq %struct.rtx_def* %11, null, !dbg !3211
  br i1 %tobool10, label %if.end30, label %if.then, !dbg !3212

if.then:                                          ; preds = %cond.end
  br label %while.cond, !dbg !3213

while.cond:                                       ; preds = %while.body, %if.then
  %insn.0 = phi %struct.rtx_def* [ %11, %if.then ], [ %13, %while.body ], !dbg !3215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3192, metadata !DIExpression()), !dbg !3196
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3216
  %rt_rtx = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !3216
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3216
  %tobool14 = icmp eq %struct.rtx_def* %13, null, !dbg !3213
  br i1 %tobool14, label %while.end, label %while.body, !dbg !3213

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !3213, !llvm.loop !3217

while.end:                                        ; preds = %while.cond
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %while.cond ], !dbg !3215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3196
  %call22 = tail call %struct.rtx_def* @duplicate_insn_chain(%struct.rtx_def* nonnull %11, %struct.rtx_def* %insn.0.lcssa) #7, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !3192, metadata !DIExpression()), !dbg !3196
  %tobool23 = icmp eq %struct.rtx_def* %call22, null, !dbg !3220
  br i1 %tobool23, label %if.end30, label %if.then24, !dbg !3222

if.then24:                                        ; preds = %while.end
  %call25 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3223
  %call26 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* nonnull %call22, %struct.rtx_def* %call25) #7, !dbg !3224
  %il27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call4, i64 0, i32 7, !dbg !3225
  %rtl28 = bitcast %union.basic_block_il_dependent* %il27 to %struct.rtl_bb_info**, !dbg !3226
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl28, align 8, !dbg !3226
  %header29 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 2, !dbg !3227
  store %struct.rtx_def* %call26, %struct.rtx_def** %header29, align 8, !dbg !3228
  br label %if.end30, !dbg !3229

if.end30:                                         ; preds = %while.end, %cond.end, %if.then24
  %15 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3230
  %footer = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %15, i64 0, i32 3, !dbg !3232
  %16 = load %struct.rtx_def*, %struct.rtx_def** %footer, align 8, !dbg !3232
  %tobool33 = icmp eq %struct.rtx_def* %16, null, !dbg !3233
  br i1 %tobool33, label %if.end62, label %if.then34, !dbg !3234

if.then34:                                        ; preds = %if.end30
  br label %while.cond38, !dbg !3235

while.cond38:                                     ; preds = %while.body44, %if.then34
  %insn.1 = phi %struct.rtx_def* [ %16, %if.then34 ], [ %18, %while.body44 ], !dbg !3237
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !3192, metadata !DIExpression()), !dbg !3196
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3238
  %rt_rtx42 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !3238
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx42, align 8, !dbg !3238
  %tobool43 = icmp eq %struct.rtx_def* %18, null, !dbg !3235
  br i1 %tobool43, label %while.end49, label %while.body44, !dbg !3235

while.body44:                                     ; preds = %while.cond38
  br label %while.cond38, !dbg !3235, !llvm.loop !3239

while.end49:                                      ; preds = %while.cond38
  %insn.1.lcssa = phi %struct.rtx_def* [ %insn.1, %while.cond38 ], !dbg !3237
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3196
  %call53 = tail call %struct.rtx_def* @duplicate_insn_chain(%struct.rtx_def* nonnull %16, %struct.rtx_def* %insn.1.lcssa) #7, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call53, metadata !3192, metadata !DIExpression()), !dbg !3196
  %tobool54 = icmp eq %struct.rtx_def* %call53, null, !dbg !3242
  br i1 %tobool54, label %if.end62, label %if.then55, !dbg !3244

if.then55:                                        ; preds = %while.end49
  %call56 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3245
  %call57 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* nonnull %call53, %struct.rtx_def* %call56) #7, !dbg !3246
  %il58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call4, i64 0, i32 7, !dbg !3247
  %rtl59 = bitcast %union.basic_block_il_dependent* %il58 to %struct.rtl_bb_info**, !dbg !3248
  %19 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl59, align 8, !dbg !3248
  %footer60 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %19, i64 0, i32 3, !dbg !3249
  store %struct.rtx_def* %call57, %struct.rtx_def** %footer60, align 8, !dbg !3250
  br label %if.end62, !dbg !3251

if.end62:                                         ; preds = %while.end49, %if.end30, %if.then55
  ret %struct.basic_block_def* %call4, !dbg !3252
}

declare dso_local %struct.basic_block_def* @create_basic_block(i8*, i8*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cfg_layout_initialize(i32 %flags) local_unnamed_addr #4 !dbg !3253 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3257, metadata !DIExpression()), !dbg !3260
  tail call void @initialize_original_copy_tables() #6, !dbg !3261
  tail call void @cfg_layout_rtl_register_cfg_hooks() #6, !dbg !3262
  tail call fastcc void @record_effective_endpoints() #7, !dbg !3263
  br label %for.cond, !dbg !3264

for.cond:                                         ; preds = %for.body, %entry
  %x.0.in = phi %struct.rtx_def** [ getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 10), %entry ], [ %rt_rtx8, %for.body ]
  %x.0 = load %struct.rtx_def*, %struct.rtx_def** %x.0.in, align 8, !dbg !3266
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !3258, metadata !DIExpression()), !dbg !3260
  %tobool = icmp eq %struct.rtx_def* %x.0, null, !dbg !3267
  br i1 %tobool, label %for.end, label %for.body, !dbg !3267

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3268
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3268
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3268
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 1, !dbg !3268
  %rt_bb = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !3268
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3259, metadata !DIExpression()), !dbg !3260
  %flags4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 13, !dbg !3271
  %2 = load i32, i32* %flags4, align 8, !dbg !3272
  %or = or i32 %2, 256, !dbg !3272
  store i32 %or, i32* %flags4, align 8, !dbg !3272
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3273
  %rt_rtx8 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3273
  br label %for.cond, !dbg !3274, !llvm.loop !3275

for.end:                                          ; preds = %for.cond
  %or9 = or i32 %flags, 32, !dbg !3277
  %call = tail call zeroext i8 @cleanup_cfg(i32 %or9) #6, !dbg !3278
  ret void, !dbg !3279
}

declare dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @record_effective_endpoints() unnamed_addr #4 !dbg !3280 {
entry:
  %call = tail call %struct.rtx_def* @get_insns() #6, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3284, metadata !DIExpression()), !dbg !3291
  br label %for.cond, !dbg !3292

for.cond:                                         ; preds = %for.inc, %entry
  %insn.0 = phi %struct.rtx_def* [ %call, %entry ], [ %4, %for.inc ], !dbg !3293
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3284, metadata !DIExpression()), !dbg !3291
  %cond2 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3294
  br i1 %cond2, label %cond.true.loopexit, label %land.lhs.true, !dbg !3294

land.lhs.true:                                    ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3296
  %bf.load = load i32, i32* %0, align 8, !dbg !3296
  %bf.clear = and i32 %bf.load, 65535, !dbg !3296
  %cmp = icmp eq i32 %bf.clear, 13, !dbg !3296
  br i1 %cmp, label %land.rhs, label %for.end, !dbg !3297

land.rhs:                                         ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3298
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3298
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !3298
  %2 = load i32, i32* %rt_int, align 8, !dbg !3298
  %cmp1 = icmp eq i32 %2, 10, !dbg !3299
  br i1 %cmp1, label %for.end, label %for.inc, !dbg !3300

for.inc:                                          ; preds = %land.rhs
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3301
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3301
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3301
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3284, metadata !DIExpression()), !dbg !3291
  br label %for.cond, !dbg !3302, !llvm.loop !3303

for.end:                                          ; preds = %land.rhs, %land.lhs.true
  %insn.0.lcssa12 = phi %struct.rtx_def* [ %insn.0, %land.rhs ], [ %insn.0, %land.lhs.true ], !dbg !3293
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa12, metadata !3284, metadata !DIExpression()), !dbg !3291
  br label %cond.end, !dbg !3305

cond.true.loopexit:                               ; preds = %for.cond
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %for.cond ], !dbg !3293
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3291
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3305
  br label %cond.end, !dbg !3305

cond.end:                                         ; preds = %for.end, %cond.true.loopexit
  %insn.013 = phi %struct.rtx_def* [ %insn.0.lcssa12, %for.end ], [ %insn.0.lcssa, %cond.true.loopexit ]
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.013, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3306
  %rt_rtx9 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3306
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx9, align 8, !dbg !3306
  %tobool10 = icmp eq %struct.rtx_def* %6, null, !dbg !3306
  br i1 %tobool10, label %if.else, label %if.then, !dbg !3308

if.then:                                          ; preds = %cond.end
  %call11 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3309
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx9, align 8, !dbg !3310
  %call16 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %call11, %struct.rtx_def* %7) #7, !dbg !3311
  br label %if.end, !dbg !3312

if.else:                                          ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.rtx_def* [ null, %if.else ], [ %call16, %if.then ], !dbg !3313
  store %struct.rtx_def* %storemerge, %struct.rtx_def** @cfg_layout_function_header, align 8, !dbg !3313
  %call17 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3314
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call17, metadata !3282, metadata !DIExpression()), !dbg !3291
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3315
  %cfg = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3315
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3315
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3315
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3315
  br label %for.cond18, !dbg !3315

for.cond18:                                       ; preds = %if.end69, %if.end
  %11 = phi %struct.control_flow_graph* [ %9, %if.end ], [ %.pre6, %if.end69 ], !dbg !3316
  %.pn = phi %struct.basic_block_def* [ %10, %if.end ], [ %bb.0, %if.end69 ]
  %12 = phi %struct.rtx_def* [ %call17, %if.end ], [ %24, %if.end69 ], !dbg !3291
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3317
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3282, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3283, metadata !DIExpression()), !dbg !3291
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !3316
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3316
  %cmp21 = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !3316
  br i1 %cmp21, label %for.end79, label %for.body22, !dbg !3315

for.body22:                                       ; preds = %for.cond18
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3318
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3318
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3318
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 0, !dbg !3318
  %15 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3318
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3318
  %rt_rtx26 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !3318
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx26, align 8, !dbg !3318
  %tobool27 = icmp eq %struct.rtx_def* %17, null, !dbg !3318
  br i1 %tobool27, label %if.end44, label %land.lhs.true28, !dbg !3320

land.lhs.true28:                                  ; preds = %for.body22
  %cmp32 = icmp eq %struct.rtx_def* %12, %15, !dbg !3321
  br i1 %cmp32, label %if.end44, label %if.then33, !dbg !3322

if.then33:                                        ; preds = %land.lhs.true28
  %call41 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %12, %struct.rtx_def* nonnull %17) #7, !dbg !3323
  %18 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3324
  %header = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %18, i64 0, i32 2, !dbg !3325
  store %struct.rtx_def* %call41, %struct.rtx_def** %header, align 8, !dbg !3326
  br label %if.end44, !dbg !3327

if.end44:                                         ; preds = %land.lhs.true28, %for.body22, %if.then33
  %call45 = tail call fastcc %struct.rtx_def* @skip_insns_after_block(%struct.basic_block_def* %bb.0) #7, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call45, metadata !3285, metadata !DIExpression()), !dbg !3329
  %19 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3330
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %19, i64 0, i32 1, !dbg !3330
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3330
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3330
  %rt_rtx51 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !3330
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx51, align 8, !dbg !3330
  %tobool52 = icmp eq %struct.rtx_def* %22, null, !dbg !3330
  br i1 %tobool52, label %if.end69, label %land.lhs.true53, !dbg !3332

land.lhs.true53:                                  ; preds = %if.end44
  %cmp57 = icmp eq %struct.rtx_def* %20, %call45, !dbg !3333
  br i1 %cmp57, label %land.lhs.true53.if.end69_crit_edge, label %if.then58, !dbg !3334

land.lhs.true53.if.end69_crit_edge:               ; preds = %land.lhs.true53
  br label %if.end69, !dbg !3334

if.then58:                                        ; preds = %land.lhs.true53
  %call66 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* nonnull %22, %struct.rtx_def* %call45) #7, !dbg !3335
  %23 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3336
  %footer = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %23, i64 0, i32 3, !dbg !3337
  store %struct.rtx_def* %call66, %struct.rtx_def** %footer, align 8, !dbg !3338
  %.pre7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3339
  %end_72.phi.trans.insert = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %.pre7, i64 0, i32 1, !dbg !3329
  %.pre8 = load %struct.rtx_def*, %struct.rtx_def** %end_72.phi.trans.insert, align 8, !dbg !3339
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.pre8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3329
  %rt_rtx76.phi.trans.insert = bitcast %union.rtunion_def* %.phi.trans.insert to %struct.rtx_def**, !dbg !3329
  %.pre9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx76.phi.trans.insert, align 8, !dbg !3339
  br label %if.end69, !dbg !3340

if.end69:                                         ; preds = %land.lhs.true53.if.end69_crit_edge, %if.end44, %if.then58
  %24 = phi %struct.rtx_def* [ %22, %land.lhs.true53.if.end69_crit_edge ], [ null, %if.end44 ], [ %.pre9, %if.then58 ], !dbg !3339
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !3282, metadata !DIExpression()), !dbg !3291
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3316
  %cfg20.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3341
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20.phi.trans.insert, align 8, !dbg !3316
  br label %for.cond18, !dbg !3316, !llvm.loop !3342

for.end79:                                        ; preds = %for.cond18
  %.lcssa = phi %struct.rtx_def* [ %12, %for.cond18 ], !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa, metadata !3282, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa, metadata !3282, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa, metadata !3282, metadata !DIExpression()), !dbg !3291
  store %struct.rtx_def* %.lcssa, %struct.rtx_def** @cfg_layout_function_footer, align 8, !dbg !3344
  %tobool80 = icmp eq %struct.rtx_def* %.lcssa, null, !dbg !3345
  br i1 %tobool80, label %if.end84, label %if.then81, !dbg !3347

if.then81:                                        ; preds = %for.end79
  %call82 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !3348
  %call83 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* nonnull %.lcssa, %struct.rtx_def* %call82) #7, !dbg !3349
  store %struct.rtx_def* %call83, %struct.rtx_def** @cfg_layout_function_footer, align 8, !dbg !3350
  br label %if.end84, !dbg !3351

if.end84:                                         ; preds = %for.end79, %if.then81
  ret void, !dbg !3352
}

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @break_superblocks() local_unnamed_addr #4 !dbg !3353 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !3366, metadata !DIExpression()), !dbg !3368
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3369
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3369
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3369
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3369
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3369
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2) #6, !dbg !3370
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3355, metadata !DIExpression()), !dbg !3368
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3371
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3372
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3372
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3372
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3372
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3372
  br label %for.cond, !dbg !3372

for.cond:                                         ; preds = %for.inc, %entry
  %.pre2 = phi %struct.function* [ %3, %entry ], [ %.pre, %for.inc ]
  %6 = phi %struct.control_flow_graph* [ %4, %entry ], [ %.pre1, %for.inc ], !dbg !3374
  %need.0 = phi i8 [ 0, %entry ], [ %need.1, %for.inc ], !dbg !3368
  %.pn = phi %struct.basic_block_def* [ %5, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3376
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 %need.0, metadata !3366, metadata !DIExpression()), !dbg !3368
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3374
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3374
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3374
  br i1 %cmp, label %for.end, label %for.body, !dbg !3372

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3377
  %8 = load i32, i32* %flags, align 8, !dbg !3377
  %and = and i32 %8, 8, !dbg !3379
  %tobool = icmp eq i32 %and, 0, !dbg !3379
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3380

if.then:                                          ; preds = %for.body
  %and6 = and i32 %8, -9, !dbg !3381
  store i32 %and6, i32* %flags, align 8, !dbg !3381
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3383
  %9 = load i32, i32* %index, align 8, !dbg !3383
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %9) #7, !dbg !3384
  call void @llvm.dbg.value(metadata i8 1, metadata !3366, metadata !DIExpression()), !dbg !3368
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3374
  br label %for.inc, !dbg !3385

for.inc:                                          ; preds = %for.body, %if.then
  %.pre = phi %struct.function* [ %.pre.pre, %if.then ], [ %.pre2, %for.body ], !dbg !3374
  %need.1 = phi i8 [ 1, %if.then ], [ %need.0, %for.body ], !dbg !3368
  call void @llvm.dbg.value(metadata i8 %need.1, metadata !3366, metadata !DIExpression()), !dbg !3368
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3386
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !3374
  br label %for.cond, !dbg !3374, !llvm.loop !3387

for.end:                                          ; preds = %for.cond
  %need.0.lcssa = phi i8 [ %need.0, %for.cond ], !dbg !3368
  call void @llvm.dbg.value(metadata i8 %need.0.lcssa, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 %need.0.lcssa, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 %need.0.lcssa, metadata !3366, metadata !DIExpression()), !dbg !3368
  %tobool8 = icmp eq i8 %need.0.lcssa, 0, !dbg !3389
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !3391

if.then9:                                         ; preds = %for.end
  %call10 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3392
  tail call void @rebuild_jump_labels(%struct.rtx_def* %call10) #6, !dbg !3394
  tail call void @find_many_sub_basic_blocks(%struct.simple_bitmap_def* %call) #6, !dbg !3395
  br label %if.end11, !dbg !3396

if.end11:                                         ; preds = %for.end, %if.then9
  %10 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3397
  tail call void @free(i8* %10) #6, !dbg !3398
  ret void, !dbg !3399
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3400 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3405, metadata !DIExpression()), !dbg !3409
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3410
  %0 = load i8*, i8** %popcount, align 8, !dbg !3410
  %tobool = icmp eq i8* %0, null, !dbg !3411
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3412

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3413
  %.pre2 = zext i32 %.pre to i64, !dbg !3414
  %.pre3 = shl i64 1, %.pre2, !dbg !3414
  %.pre4 = lshr i32 %bitno, 6, !dbg !3415
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3416
  br label %if.end7, !dbg !3412

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3417
  %idxprom = zext i32 %div to i64, !dbg !3417
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3417
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3417
  %rem = and i32 %bitno, 63, !dbg !3417
  %sh_prom = zext i32 %rem to i64, !dbg !3417
  %2 = shl i64 1, %sh_prom, !dbg !3418
  %3 = and i64 %1, %2, !dbg !3418
  %tobool1 = icmp eq i64 %3, 0, !dbg !3418
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3420

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3421
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3422
  %inc = add i8 %4, 1, !dbg !3422
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3422
  br label %if.end7, !dbg !3421

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3416
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3414
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3416
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3423
  %or = or i64 %5, %shl.pre-phi, !dbg !3423
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3423
  ret void, !dbg !3424
}

declare dso_local void @rebuild_jump_labels(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @find_many_sub_basic_blocks(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cfg_layout_finalize() local_unnamed_addr #4 !dbg !3425 {
entry:
  tail call fastcc void @force_one_exit_fallthru() #7, !dbg !3426
  tail call void @rtl_register_cfg_hooks() #6, !dbg !3427
  tail call fastcc void @fixup_reorder_chain() #7, !dbg !3428
  %call = tail call %struct.rtx_def* @get_insns() #6, !dbg !3429
  tail call void @rebuild_jump_labels(%struct.rtx_def* %call) #6, !dbg !3430
  tail call void @delete_dead_jumptables() #6, !dbg !3431
  ret void, !dbg !3432
}

; Function Attrs: nounwind uwtable
define internal fastcc void @force_one_exit_fallthru() unnamed_addr #4 !dbg !3433 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp9 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3447
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i8 0, metadata !3437, metadata !DIExpression()), !dbg !3448
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3449
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3450
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3450
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3450
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3450
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3450
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3450
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3450
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 0, !dbg !3450
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3450
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3450
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3450
  store i32 %7, i32* %6, align 8, !dbg !3450
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3450
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3450
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %8, align 8, !dbg !3450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3450
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3452
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3452
  br label %for.cond, !dbg !3450

for.cond:                                         ; preds = %for.inc, %entry
  %predecessor.0 = phi %struct.edge_def* [ null, %entry ], [ %predecessor.1, %for.inc ], !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0, metadata !3436, metadata !DIExpression()), !dbg !3448
  %12 = load i32, i32* %10, align 8, !dbg !3454
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #7, !dbg !3454
  %tobool = icmp eq i8 %call1, 0, !dbg !3450
  br i1 %tobool, label %for.end, label %for.body, !dbg !3450

for.body:                                         ; preds = %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3435, metadata !DIExpression()), !dbg !3448
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 7, !dbg !3457
  %15 = load i32, i32* %flags, align 8, !dbg !3457
  %and = and i32 %15, 1, !dbg !3458
  %tobool2 = icmp eq i32 %and, 0, !dbg !3458
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !3459

if.then:                                          ; preds = %for.body
  %cmp = icmp eq %struct.edge_def* %predecessor.0, null, !dbg !3460
  br i1 %cmp, label %if.then3, label %for.end, !dbg !3463

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3435, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3436, metadata !DIExpression()), !dbg !3448
  br label %for.inc, !dbg !3464

for.inc:                                          ; preds = %for.body, %if.then3
  %predecessor.1 = phi %struct.edge_def* [ %14, %if.then3 ], [ %predecessor.0, %for.body ], !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.1, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3438, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3454
  br label %for.cond, !dbg !3454, !llvm.loop !3465

for.end:                                          ; preds = %for.cond, %if.then
  %predecessor.0.lcssa = phi %struct.edge_def* [ %predecessor.0, %for.cond ], [ %predecessor.0, %if.then ], !dbg !3448
  %more.0 = phi i1 [ false, %for.cond ], [ true, %if.then ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %predecessor.0.lcssa, metadata !3436, metadata !DIExpression()), !dbg !3448
  br i1 %more.0, label %if.end7, label %cleanup, !dbg !3467

if.end7:                                          ; preds = %for.end
  %call8 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %predecessor.0.lcssa) #6, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !3445, metadata !DIExpression()), !dbg !3448
  %16 = bitcast %struct.edge_iterator* %tmp9 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #8, !dbg !3469
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3469
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !3469
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !3469
  %x_exit_block_ptr12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 1, !dbg !3469
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr12, align 8, !dbg !3469
  %preds13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 0, !dbg !3469
  %call14 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds13) #7, !dbg !3469
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp9, i64 0, i32 0, !dbg !3469
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 0, !dbg !3469
  store i32 %21, i32* %20, align 8, !dbg !3469
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp9, i64 0, i32 1, !dbg !3469
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 1, !dbg !3469
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %22, align 8, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #8, !dbg !3469
  br label %for.cond15, !dbg !3471

for.cond15:                                       ; preds = %if.end26, %if.end7
  %24 = load i32, i32* %10, align 8, !dbg !3472
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !3472
  %call16 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %24, %struct.VEC_edge_gc** %25) #7, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3435, metadata !DIExpression()), !dbg !3448
  store %struct.edge_def* %call16, %struct.edge_def** %e, align 8, !dbg !3474
  %tobool17 = icmp eq %struct.edge_def* %call16, null, !dbg !3475
  br i1 %tobool17, label %for.end27, label %for.body18, !dbg !3475

for.body18:                                       ; preds = %for.cond15
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3435, metadata !DIExpression()), !dbg !3448
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 0, !dbg !3476
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3476
  %cmp19 = icmp eq %struct.basic_block_def* %26, %call8, !dbg !3479
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !3480

lor.lhs.false:                                    ; preds = %for.body18
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3435, metadata !DIExpression()), !dbg !3448
  %flags20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !3481
  %27 = load i32, i32* %flags20, align 8, !dbg !3481
  %and21 = and i32 %27, 1, !dbg !3482
  %tobool22 = icmp eq i32 %and21, 0, !dbg !3482
  br i1 %tobool22, label %if.then23, label %if.else24, !dbg !3483

if.then23:                                        ; preds = %lor.lhs.false, %for.body18
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3438, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3484
  br label %if.end26, !dbg !3484

if.else24:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3435, metadata !DIExpression()), !dbg !3448
  %call25 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* nonnull %call16, %struct.basic_block_def* %call8) #6, !dbg !3485
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23
  br label %for.cond15, !dbg !3486, !llvm.loop !3487

for.end27:                                        ; preds = %for.cond15
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3489
  %cfg29 = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 1, !dbg !3489
  %29 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29, align 8, !dbg !3489
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 0, !dbg !3489
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3489
  %x_exit_block_ptr33 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 1, !dbg !3491
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr33, align 8, !dbg !3491
  br label %for.cond30, !dbg !3489

for.cond30:                                       ; preds = %for.inc41, %for.end27
  %.pn = phi %struct.basic_block_def* [ %30, %for.end27 ], [ %bb.0, %for.inc41 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3493
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3446, metadata !DIExpression()), !dbg !3448
  %cmp34 = icmp eq %struct.basic_block_def* %bb.0, %31, !dbg !3494
  br i1 %cmp34, label %cleanup.loopexit, label %for.body35, !dbg !3489

for.body35:                                       ; preds = %for.cond30
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3495
  %32 = load i8*, i8** %aux, align 8, !dbg !3495
  %cmp36 = icmp eq i8* %32, null, !dbg !3498
  %cmp37 = icmp ne %struct.basic_block_def* %bb.0, %call8, !dbg !3499
  %or.cond = and i1 %cmp36, %cmp37, !dbg !3500
  br i1 %or.cond, label %if.then38, label %for.inc41, !dbg !3500

if.then38:                                        ; preds = %for.body35
  %aux.lcssa = phi i8** [ %aux, %for.body35 ], !dbg !3495
  %33 = bitcast i8** %aux.lcssa to %struct.basic_block_def**, !dbg !3501
  store %struct.basic_block_def* %call8, %struct.basic_block_def** %33, align 8, !dbg !3501
  br label %cleanup, !dbg !3503

for.inc41:                                        ; preds = %for.body35
  br label %for.cond30, !dbg !3494, !llvm.loop !3504

cleanup.loopexit:                                 ; preds = %for.cond30
  br label %cleanup, !dbg !3506

cleanup:                                          ; preds = %cleanup.loopexit, %if.then38, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3506
  ret void, !dbg !3506
}

declare dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fixup_reorder_chain() unnamed_addr #4 !dbg !3507 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %e362 = alloca %struct.edge_def*, align 8
  %ei363 = alloca %struct.edge_iterator, align 8
  %tmp364 = alloca %struct.edge_iterator, align 8
  %e403 = alloca %struct.edge_def*, align 8
  %ei404 = alloca %struct.edge_iterator, align 8
  %tmp405 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3510, metadata !DIExpression()), !dbg !3549
  %0 = load %struct.rtx_def*, %struct.rtx_def** @cfg_layout_function_header, align 8, !dbg !3550
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3550
  br i1 %tobool, label %if.end, label %if.then, !dbg !3552

if.then:                                          ; preds = %entry
  tail call void @set_first_insn(%struct.rtx_def* nonnull %0) #6, !dbg !3553
  %insn.0.pre = load %struct.rtx_def*, %struct.rtx_def** @cfg_layout_function_header, align 8, !dbg !3555
  br label %while.cond, !dbg !3556

while.cond:                                       ; preds = %while.body, %if.then
  %insn.0 = phi %struct.rtx_def* [ %insn.0.pre, %if.then ], [ %2, %while.body ], !dbg !3555
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3510, metadata !DIExpression()), !dbg !3549
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3557
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3557
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3557
  %tobool1 = icmp eq %struct.rtx_def* %2, null, !dbg !3556
  br i1 %tobool1, label %if.end.loopexit, label %while.body, !dbg !3556

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !3556, !llvm.loop !3558

if.end.loopexit:                                  ; preds = %while.cond
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %while.cond ], !dbg !3555
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  br label %if.end, !dbg !3560

if.end:                                           ; preds = %if.end.loopexit, %entry
  %insn.1 = phi %struct.rtx_def* [ null, %entry ], [ %insn.0.lcssa, %if.end.loopexit ], !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !3510, metadata !DIExpression()), !dbg !3549
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3560
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3560
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3560
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3560
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3560
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 6, !dbg !3562
  br label %for.cond, !dbg !3563

for.cond:                                         ; preds = %for.inc, %if.end
  %insn.2 = phi %struct.rtx_def* [ %insn.1, %if.end ], [ %insn.6, %for.inc ], !dbg !3549
  %bb.0.in = phi %struct.basic_block_def** [ %next_bb, %if.end ], [ %32, %for.inc ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3509, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.2, metadata !3510, metadata !DIExpression()), !dbg !3549
  %tobool6 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3565
  br i1 %tobool6, label %for.end, label %for.body, !dbg !3565

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3566
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3570
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3570
  %header = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 2, !dbg !3571
  %7 = load %struct.rtx_def*, %struct.rtx_def** %header, align 8, !dbg !3571
  %tobool7 = icmp eq %struct.rtx_def* %7, null, !dbg !3572
  br i1 %tobool7, label %if.end44, label %if.then8, !dbg !3573

if.then8:                                         ; preds = %for.body
  %tobool9 = icmp eq %struct.rtx_def* %insn.2, null, !dbg !3574
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !3577

if.then10:                                        ; preds = %if.then8
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.2, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3578
  %rt_rtx17 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3578
  store %struct.rtx_def* %7, %struct.rtx_def** %rt_rtx17, align 8, !dbg !3579
  br label %if.end21, !dbg !3578

if.else:                                          ; preds = %if.then8
  tail call void @set_first_insn(%struct.rtx_def* nonnull %7) #6, !dbg !3580
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then10
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3581
  %header24 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 2, !dbg !3581
  %10 = load %struct.rtx_def*, %struct.rtx_def** %header24, align 8, !dbg !3581
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3581
  %rt_rtx28 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !3581
  store %struct.rtx_def* %insn.2, %struct.rtx_def** %rt_rtx28, align 8, !dbg !3582
  %12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3583
  %header31 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 2, !dbg !3584
  %insn.3.pre = load %struct.rtx_def*, %struct.rtx_def** %header31, align 8, !dbg !3585
  br label %while.cond32, !dbg !3586

while.cond32:                                     ; preds = %while.body38, %if.end21
  %insn.3 = phi %struct.rtx_def* [ %insn.3.pre, %if.end21 ], [ %14, %while.body38 ], !dbg !3585
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.3, metadata !3510, metadata !DIExpression()), !dbg !3549
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3587
  %rt_rtx36 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !3587
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx36, align 8, !dbg !3587
  %tobool37 = icmp eq %struct.rtx_def* %14, null, !dbg !3586
  br i1 %tobool37, label %if.end44.loopexit, label %while.body38, !dbg !3586

while.body38:                                     ; preds = %while.cond32
  br label %while.cond32, !dbg !3586, !llvm.loop !3588

if.end44.loopexit:                                ; preds = %while.cond32
  %insn.3.lcssa = phi %struct.rtx_def* [ %insn.3, %while.cond32 ], !dbg !3585
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.3.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.3.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  br label %if.end44, !dbg !3590

if.end44:                                         ; preds = %if.end44.loopexit, %for.body
  %15 = phi %struct.rtl_bb_info* [ %6, %for.body ], [ %12, %if.end44.loopexit ], !dbg !3592
  %insn.4 = phi %struct.rtx_def* [ %insn.2, %for.body ], [ %insn.3.lcssa, %if.end44.loopexit ], !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.4, metadata !3510, metadata !DIExpression()), !dbg !3549
  %tobool45 = icmp eq %struct.rtx_def* %insn.4, null, !dbg !3590
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %15, i64 0, i32 0, !dbg !3592
  %16 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3592
  br i1 %tobool45, label %if.else53, label %if.then46, !dbg !3593

if.then46:                                        ; preds = %if.end44
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.4, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3594
  %rt_rtx52 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !3594
  store %struct.rtx_def* %16, %struct.rtx_def** %rt_rtx52, align 8, !dbg !3595
  br label %if.end57, !dbg !3594

if.else53:                                        ; preds = %if.end44
  tail call void @set_first_insn(%struct.rtx_def* %16) #6, !dbg !3596
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.then46
  %18 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3597
  %head_60 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %18, i64 0, i32 0, !dbg !3597
  %19 = load %struct.rtx_def*, %struct.rtx_def** %head_60, align 8, !dbg !3597
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3597
  %rt_rtx64 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !3597
  store %struct.rtx_def* %insn.4, %struct.rtx_def** %rt_rtx64, align 8, !dbg !3598
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3599
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !3599
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3599
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !3510, metadata !DIExpression()), !dbg !3549
  %footer = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 3, !dbg !3600
  %23 = load %struct.rtx_def*, %struct.rtx_def** %footer, align 8, !dbg !3600
  %tobool69 = icmp eq %struct.rtx_def* %23, null, !dbg !3602
  br i1 %tobool69, label %for.inc, label %if.then70, !dbg !3603

if.then70:                                        ; preds = %if.end57
  %24 = ptrtoint %struct.rtx_def* %23 to i64, !dbg !3603
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3604
  %26 = bitcast %union.rtunion_def* %25 to i64*, !dbg !3606
  store i64 %24, i64* %26, align 8, !dbg !3606
  %27 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3607
  %footer80 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %27, i64 0, i32 3, !dbg !3607
  %28 = load %struct.rtx_def*, %struct.rtx_def** %footer80, align 8, !dbg !3607
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3607
  %rt_rtx84 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**, !dbg !3607
  store %struct.rtx_def* %22, %struct.rtx_def** %rt_rtx84, align 8, !dbg !3608
  br label %while.cond85, !dbg !3609

while.cond85:                                     ; preds = %while.body91, %if.then70
  %insn.5 = phi %struct.rtx_def* [ %22, %if.then70 ], [ %31, %while.body91 ], !dbg !3610
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.5, metadata !3510, metadata !DIExpression()), !dbg !3549
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.5, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3611
  %rt_rtx89 = bitcast %union.rtunion_def* %30 to %struct.rtx_def**, !dbg !3611
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx89, align 8, !dbg !3611
  %tobool90 = icmp eq %struct.rtx_def* %31, null, !dbg !3609
  br i1 %tobool90, label %for.inc.loopexit, label %while.body91, !dbg !3609

while.body91:                                     ; preds = %while.cond85
  call void @llvm.dbg.value(metadata %struct.rtx_def* %31, metadata !3510, metadata !DIExpression()), !dbg !3549
  br label %while.cond85, !dbg !3609, !llvm.loop !3612

for.inc.loopexit:                                 ; preds = %while.cond85
  %insn.5.lcssa = phi %struct.rtx_def* [ %insn.5, %while.cond85 ], !dbg !3610
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.5.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.5.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.5.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  br label %for.inc, !dbg !3614

for.inc:                                          ; preds = %for.inc.loopexit, %if.end57
  %insn.6 = phi %struct.rtx_def* [ %22, %if.end57 ], [ %insn.5.lcssa, %for.inc.loopexit ], !dbg !3615
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.6, metadata !3510, metadata !DIExpression()), !dbg !3549
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3614
  %32 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !3614
  br label %for.cond, !dbg !3616, !llvm.loop !3617

for.end:                                          ; preds = %for.cond
  %insn.2.lcssa = phi %struct.rtx_def* [ %insn.2, %for.cond ], !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.2.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.2.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.2.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  %33 = load i64, i64* bitcast (%struct.rtx_def** @cfg_layout_function_footer to i64*), align 8, !dbg !3619
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.2.lcssa, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3620
  %35 = bitcast %union.rtunion_def* %34 to i64*, !dbg !3621
  store i64 %33, i64* %35, align 8, !dbg !3621
  %tobool102 = icmp eq i64 %33, 0, !dbg !3622
  br i1 %tobool102, label %if.end108, label %if.then103, !dbg !3624

if.then103:                                       ; preds = %for.end
  %36 = inttoptr i64 %33 to %struct.rtx_def*, !dbg !3624
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3625
  %rt_rtx107 = bitcast %union.rtunion_def* %37 to %struct.rtx_def**, !dbg !3625
  store %struct.rtx_def* %insn.2.lcssa, %struct.rtx_def** %rt_rtx107, align 8, !dbg !3626
  br label %if.end108, !dbg !3625

if.end108:                                        ; preds = %for.end, %if.then103
  br label %while.cond109, !dbg !3627

while.cond109:                                    ; preds = %while.body115, %if.end108
  %insn.7 = phi %struct.rtx_def* [ %insn.2.lcssa, %if.end108 ], [ %39, %while.body115 ], !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.7, metadata !3510, metadata !DIExpression()), !dbg !3549
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.7, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3628
  %rt_rtx113 = bitcast %union.rtunion_def* %38 to %struct.rtx_def**, !dbg !3628
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx113, align 8, !dbg !3628
  %tobool114 = icmp eq %struct.rtx_def* %39, null, !dbg !3627
  br i1 %tobool114, label %while.end120, label %while.body115, !dbg !3627

while.body115:                                    ; preds = %while.cond109
  call void @llvm.dbg.value(metadata %struct.rtx_def* %39, metadata !3510, metadata !DIExpression()), !dbg !3549
  br label %while.cond109, !dbg !3627, !llvm.loop !3629

while.end120:                                     ; preds = %while.cond109
  %insn.7.lcssa = phi %struct.rtx_def* [ %insn.7, %while.cond109 ], !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.7.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.7.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.7.lcssa, metadata !3510, metadata !DIExpression()), !dbg !3549
  tail call void @set_last_insn(%struct.rtx_def* %insn.7.lcssa) #6, !dbg !3631
  %40 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3632
  %cfg122 = getelementptr inbounds %struct.function, %struct.function* %40, i64 0, i32 1, !dbg !3632
  %41 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg122, align 8, !dbg !3632
  %x_entry_block_ptr123 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %41, i64 0, i32 0, !dbg !3632
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr123, align 8, !dbg !3632
  %next_bb124 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 6, !dbg !3633
  %43 = bitcast %struct.edge_def** %e to i8*, !dbg !3634
  %44 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3634
  %45 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3635
  %46 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3635
  %47 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3635
  %48 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3637
  %49 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3637
  br label %for.cond125, !dbg !3639

for.cond125:                                      ; preds = %cleanup, %while.end120
  %bb.1.in = phi %struct.basic_block_def** [ %next_bb124, %while.end120 ], [ %116, %cleanup ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3640
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3509, metadata !DIExpression()), !dbg !3549
  %tobool126 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !3641
  br i1 %tobool126, label %for.end350, label %for.body127, !dbg !3641

for.body127:                                      ; preds = %for.cond125
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #8, !dbg !3642
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #8, !dbg !3643
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !3644
  %50 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3644
  %tobool128 = icmp eq %struct.VEC_edge_gc* %50, null, !dbg !3644
  br i1 %tobool128, label %cond.end, label %cond.true, !dbg !3644

cond.true:                                        ; preds = %for.body127
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %50, i64 0, i32 0, !dbg !3644
  br label %cond.end, !dbg !3644

cond.end:                                         ; preds = %for.body127, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body127 ], !dbg !3644
  %call = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3644
  %cmp = icmp eq i32 %call, 0, !dbg !3646
  br i1 %cmp, label %cleanup, label %if.end131, !dbg !3647

if.end131:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3515, metadata !DIExpression()), !dbg !3634
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #8, !dbg !3648
  %call133 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3648
  %51 = extractvalue { i32, %struct.VEC_edge_gc** } %call133, 0, !dbg !3648
  store i32 %51, i32* %46, align 8, !dbg !3648
  %52 = extractvalue { i32, %struct.VEC_edge_gc** } %call133, 1, !dbg !3648
  store %struct.VEC_edge_gc** %52, %struct.VEC_edge_gc*** %47, align 8, !dbg !3648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %44, i8* nonnull align 8 %45, i64 16, i1 false), !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #8, !dbg !3648
  br label %for.cond134, !dbg !3648

for.cond134:                                      ; preds = %for.inc147, %if.end131
  %e_taken.0 = phi %struct.edge_def* [ null, %if.end131 ], [ %e_taken.2, %for.inc147 ], !dbg !3649
  %e_fall.0 = phi %struct.edge_def* [ null, %if.end131 ], [ %e_fall.1, %for.inc147 ], !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.0, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.0, metadata !3515, metadata !DIExpression()), !dbg !3634
  %53 = load i32, i32* %48, align 8, !dbg !3650
  %54 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %49, align 8, !dbg !3650
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3516, metadata !DIExpression(DW_OP_deref)), !dbg !3634
  %call135 = call fastcc zeroext i8 @ei_cond(i32 %53, %struct.VEC_edge_gc** %54, %struct.edge_def** nonnull %e) #7, !dbg !3650
  %tobool136 = icmp eq i8 %call135, 0, !dbg !3648
  br i1 %tobool136, label %for.end148, label %for.body137, !dbg !3648

for.body137:                                      ; preds = %for.cond134
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3651
  call void @llvm.dbg.value(metadata %struct.edge_def* %55, metadata !3516, metadata !DIExpression()), !dbg !3634
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i64 0, i32 7, !dbg !3653
  %56 = load i32, i32* %flags, align 8, !dbg !3653
  %and = and i32 %56, 1, !dbg !3654
  %tobool138 = icmp eq i32 %and, 0, !dbg !3654
  call void @llvm.dbg.value(metadata %struct.edge_def* %55, metadata !3516, metadata !DIExpression()), !dbg !3634
  br i1 %tobool138, label %if.else140, label %for.inc147, !dbg !3655

if.else140:                                       ; preds = %for.body137
  %and142 = and i32 %56, 8, !dbg !3656
  %tobool143 = icmp eq i32 %and142, 0, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.edge_def* %55, metadata !3516, metadata !DIExpression()), !dbg !3634
  %spec.select = select i1 %tobool143, %struct.edge_def* %55, %struct.edge_def* %e_taken.0, !dbg !3658
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !3515, metadata !DIExpression()), !dbg !3634
  br label %for.inc147

for.inc147:                                       ; preds = %for.body137, %if.else140
  %e_taken.2 = phi %struct.edge_def* [ %spec.select, %if.else140 ], [ %e_taken.0, %for.body137 ], !dbg !3649
  %e_fall.1 = phi %struct.edge_def* [ %e_fall.0, %if.else140 ], [ %55, %for.body137 ], !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.1, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.2, metadata !3515, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3519, metadata !DIExpression(DW_OP_deref)), !dbg !3634
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3650
  br label %for.cond134, !dbg !3650, !llvm.loop !3659

for.end148:                                       ; preds = %for.cond134
  %e_taken.0.lcssa = phi %struct.edge_def* [ %e_taken.0, %for.cond134 ], !dbg !3649
  %e_fall.0.lcssa = phi %struct.edge_def* [ %e_fall.0, %for.cond134 ], !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.0.lcssa, metadata !3515, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.0.lcssa, metadata !3515, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.0.lcssa, metadata !3515, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3634
  %il149 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 7, !dbg !3661
  %rtl150 = bitcast %union.basic_block_il_dependent* %il149 to %struct.rtl_bb_info**, !dbg !3661
  %57 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl150, align 8, !dbg !3661
  %end_151 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %57, i64 0, i32 1, !dbg !3661
  %58 = load %struct.rtx_def*, %struct.rtx_def** %end_151, align 8, !dbg !3661
  call void @llvm.dbg.value(metadata %struct.rtx_def* %58, metadata !3517, metadata !DIExpression()), !dbg !3634
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i64 0, i32 0, !dbg !3662
  %bf.load = load i32, i32* %59, align 8, !dbg !3662
  %bf.clear = and i32 %bf.load, 65535, !dbg !3662
  %cmp152 = icmp eq i32 %bf.clear, 9, !dbg !3662
  br i1 %cmp152, label %if.then153, label %if.else275, !dbg !3663

if.then153:                                       ; preds = %for.end148
  %call154 = call i32 @any_condjump_p(%struct.rtx_def* %58) #6, !dbg !3664
  %tobool155 = icmp eq i32 %call154, 0, !dbg !3664
  br i1 %tobool155, label %if.else245, label %if.then156, !dbg !3665

if.then156:                                       ; preds = %if.then153
  %tobool157 = icmp eq %struct.edge_def* %e_fall.0.lcssa, null, !dbg !3666
  br i1 %tobool157, label %if.then158, label %if.end169, !dbg !3668

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @onlyjump_p(%struct.rtx_def* %58) #6, !dbg !3669
  %tobool160 = icmp eq i32 %call159, 0, !dbg !3669
  br i1 %tobool160, label %cond.end163, label %cond.true161, !dbg !3669

cond.true161:                                     ; preds = %if.then158
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 796, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3669
  br label %cond.end163, !dbg !3669

cond.end163:                                      ; preds = %if.then158, %cond.true161
  %call165 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %58) #6, !dbg !3671
  %60 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl150, align 8, !dbg !3672
  %footer168 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %60, i64 0, i32 3, !dbg !3673
  store %struct.rtx_def* %call165, %struct.rtx_def** %footer168, align 8, !dbg !3674
  br label %cleanup, !dbg !3675

if.end169:                                        ; preds = %if.then156
  %aux170 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3676
  %61 = load i8*, i8** %aux170, align 8, !dbg !3676
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 1, !dbg !3678
  %62 = bitcast %struct.basic_block_def** %dest to i8**, !dbg !3678
  %63 = load i8*, i8** %62, align 8, !dbg !3678
  %cmp171 = icmp eq i8* %61, %63, !dbg !3679
  %64 = bitcast i8* %63 to %struct.basic_block_def*, !dbg !3680
  br i1 %cmp171, label %cleanup, label %lor.lhs.false, !dbg !3680

lor.lhs.false:                                    ; preds = %if.end169
  %65 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3681
  %cfg174 = getelementptr inbounds %struct.function, %struct.function* %65, i64 0, i32 1, !dbg !3681
  %66 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg174, align 8, !dbg !3681
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %66, i64 0, i32 1, !dbg !3681
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3681
  %cmp175 = icmp eq %struct.basic_block_def* %67, %64, !dbg !3682
  br i1 %cmp175, label %cleanup, label %if.end177, !dbg !3683

if.end177:                                        ; preds = %lor.lhs.false
  %tobool178 = icmp eq %struct.edge_def* %e_taken.0.lcssa, null, !dbg !3684
  br i1 %tobool178, label %if.end291, label %if.else180, !dbg !3685

if.else180:                                       ; preds = %if.end177
  %dest182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_taken.0.lcssa, i64 0, i32 1, !dbg !3686
  %68 = bitcast %struct.basic_block_def** %dest182 to i8**, !dbg !3686
  %69 = load i8*, i8** %68, align 8, !dbg !3686
  %cmp183 = icmp eq i8* %61, %69, !dbg !3687
  br i1 %cmp183, label %if.else213, label %if.then184, !dbg !3688

if.then184:                                       ; preds = %if.else180
  %call185 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %58, i32 13, %struct.rtx_def* null) #6, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call185, metadata !3520, metadata !DIExpression()), !dbg !3690
  %tobool186 = icmp eq %struct.rtx_def* %call185, null, !dbg !3691
  br i1 %tobool186, label %if.end291, label %land.lhs.true, !dbg !3693

land.lhs.true:                                    ; preds = %if.then184
  %arrayidx189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call185, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3694
  %rt_rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**, !dbg !3694
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx190, align 8, !dbg !3694
  %u191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i64 0, i32 1, !dbg !3694
  %arrayidx192 = bitcast %union.u* %u191 to i64*, !dbg !3694
  %71 = load i64, i64* %arrayidx192, align 8, !dbg !3694
  %cmp193 = icmp slt i64 %71, 5000, !dbg !3695
  br i1 %cmp193, label %land.lhs.true194, label %if.end291, !dbg !3696

land.lhs.true194:                                 ; preds = %land.lhs.true
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3697
  %73 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3698
  %cfg197 = getelementptr inbounds %struct.function, %struct.function* %73, i64 0, i32 1, !dbg !3698
  %74 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg197, align 8, !dbg !3698
  %x_exit_block_ptr198 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %74, i64 0, i32 1, !dbg !3698
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr198, align 8, !dbg !3698
  %cmp199 = icmp eq %struct.basic_block_def* %72, %75, !dbg !3699
  br i1 %cmp199, label %cond.end204, label %cond.false201, !dbg !3700

cond.false201:                                    ; preds = %land.lhs.true194
  %call203 = call fastcc %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %72) #7, !dbg !3701
  br label %cond.end204, !dbg !3700

cond.end204:                                      ; preds = %land.lhs.true194, %cond.false201
  %cond205 = phi %struct.rtx_def* [ %call203, %cond.false201 ], [ null, %land.lhs.true194 ], !dbg !3700
  %call206 = call i32 @invert_jump(%struct.rtx_def* %58, %struct.rtx_def* %cond205, i32 0) #6, !dbg !3702
  %tobool207 = icmp eq i32 %call206, 0, !dbg !3702
  br i1 %tobool207, label %if.end291, label %if.then208, !dbg !3703

if.then208:                                       ; preds = %cond.end204
  %flags209 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 7, !dbg !3704
  %76 = load i32, i32* %flags209, align 8, !dbg !3706
  %and210 = and i32 %76, -2, !dbg !3706
  store i32 %and210, i32* %flags209, align 8, !dbg !3706
  %flags211 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_taken.0.lcssa, i64 0, i32 7, !dbg !3707
  %77 = load i32, i32* %flags211, align 8, !dbg !3708
  %or = or i32 %77, 1, !dbg !3708
  store i32 %or, i32* %flags211, align 8, !dbg !3708
  call void @update_br_prob_note(%struct.basic_block_def* nonnull %bb.1) #6, !dbg !3709
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.0.lcssa, metadata !3516, metadata !DIExpression()), !dbg !3634
  store %struct.edge_def* %e_fall.0.lcssa, %struct.edge_def** %e, align 8, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_taken.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* undef, metadata !3516, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* undef, metadata !3515, metadata !DIExpression()), !dbg !3634
  br label %if.end291, !dbg !3711

if.else213:                                       ; preds = %if.else180
  %flags214 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_taken.0.lcssa, i64 0, i32 7, !dbg !3712
  %78 = load i32, i32* %flags214, align 8, !dbg !3712
  %and215 = and i32 %78, 8192, !dbg !3714
  %tobool216 = icmp eq i32 %and215, 0, !dbg !3714
  br i1 %tobool216, label %if.else222, label %land.lhs.true217, !dbg !3715

land.lhs.true217:                                 ; preds = %if.else213
  %flags218 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 7, !dbg !3716
  %79 = load i32, i32* %flags218, align 8, !dbg !3716
  %and219 = and i32 %79, 8192, !dbg !3717
  %tobool220 = icmp eq i32 %and219, 0, !dbg !3717
  br i1 %tobool220, label %cleanup, label %if.else222, !dbg !3718

if.else222:                                       ; preds = %land.lhs.true217, %if.else213
  br i1 false, label %if.else222.cond.end232_crit_edge, label %cond.false229, !dbg !3719

if.else222.cond.end232_crit_edge:                 ; preds = %if.else222
  br label %cond.end232, !dbg !3719

cond.false229:                                    ; preds = %if.else222
  %call231 = call fastcc %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %64) #7, !dbg !3721
  br label %cond.end232, !dbg !3719

cond.end232:                                      ; preds = %if.else222.cond.end232_crit_edge, %cond.false229
  %cond233 = phi %struct.rtx_def* [ %call231, %cond.false229 ], [ undef, %if.else222.cond.end232_crit_edge ], !dbg !3719
  %call234 = call i32 @invert_jump(%struct.rtx_def* %58, %struct.rtx_def* %cond233, i32 0) #6, !dbg !3722
  %tobool235 = icmp eq i32 %call234, 0, !dbg !3722
  br i1 %tobool235, label %if.end291, label %if.then236, !dbg !3723

if.then236:                                       ; preds = %cond.end232
  %flags237 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 7, !dbg !3724
  %80 = load i32, i32* %flags237, align 8, !dbg !3726
  %and238 = and i32 %80, -2, !dbg !3726
  store i32 %and238, i32* %flags237, align 8, !dbg !3726
  %81 = load i32, i32* %flags214, align 8, !dbg !3727
  %or240 = or i32 %81, 1, !dbg !3727
  store i32 %or240, i32* %flags214, align 8, !dbg !3727
  call void @update_br_prob_note(%struct.basic_block_def* nonnull %bb.1) #6, !dbg !3728
  br label %cleanup, !dbg !3729

if.else245:                                       ; preds = %if.then153
  %u246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i64 0, i32 1, !dbg !3730
  %82 = getelementptr inbounds %union.u, %union.u* %u246, i64 1, i32 0, i32 0, i64 0, !dbg !3730
  %rt_rtx249 = bitcast %union.rtunion_def* %82 to %struct.rtx_def**, !dbg !3730
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx249, align 8, !dbg !3730
  %call250 = call %struct.rtx_def* @extract_asm_operands(%struct.rtx_def* %83) #6, !dbg !3732
  %cmp251 = icmp eq %struct.rtx_def* %call250, null, !dbg !3733
  br i1 %cmp251, label %if.else264, label %if.then252, !dbg !3734

if.then252:                                       ; preds = %if.else245
  %aux253 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3735
  %84 = load i8*, i8** %aux253, align 8, !dbg !3735
  %dest254 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 1, !dbg !3738
  %85 = bitcast %struct.basic_block_def** %dest254 to i8**, !dbg !3738
  %86 = load i8*, i8** %85, align 8, !dbg !3738
  %cmp255 = icmp eq i8* %84, %86, !dbg !3739
  br i1 %cmp255, label %cleanup, label %lor.lhs.false256, !dbg !3740

lor.lhs.false256:                                 ; preds = %if.then252
  %87 = bitcast i8* %86 to %struct.basic_block_def*, !dbg !3740
  %88 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3741
  %cfg259 = getelementptr inbounds %struct.function, %struct.function* %88, i64 0, i32 1, !dbg !3741
  %89 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg259, align 8, !dbg !3741
  %x_exit_block_ptr260 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %89, i64 0, i32 1, !dbg !3741
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr260, align 8, !dbg !3741
  %cmp261 = icmp eq %struct.basic_block_def* %90, %87, !dbg !3742
  br i1 %cmp261, label %cleanup, label %if.end291, !dbg !3743

if.else264:                                       ; preds = %if.else245
  %call265 = call i32 @returnjump_p(%struct.rtx_def* %58) #6, !dbg !3744
  %tobool266 = icmp eq i32 %call265, 0, !dbg !3744
  %tobool268 = icmp ne %struct.edge_def* %e_fall.0.lcssa, null, !dbg !3744
  %or.cond = and i1 %tobool266, %tobool268, !dbg !3744
  br i1 %or.cond, label %cond.true269, label %cleanup, !dbg !3744

cond.true269:                                     ; preds = %if.else264
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 876, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3744
  br label %cleanup, !dbg !3744

if.else275:                                       ; preds = %for.end148
  %tobool276 = icmp eq %struct.edge_def* %e_fall.0.lcssa, null, !dbg !3746
  br i1 %tobool276, label %cleanup, label %if.end278, !dbg !3749

if.end278:                                        ; preds = %if.else275
  %aux279 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3750
  %91 = load i8*, i8** %aux279, align 8, !dbg !3750
  %dest280 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.0.lcssa, i64 0, i32 1, !dbg !3752
  %92 = bitcast %struct.basic_block_def** %dest280 to i8**, !dbg !3752
  %93 = load i8*, i8** %92, align 8, !dbg !3752
  %cmp281 = icmp eq i8* %91, %93, !dbg !3753
  br i1 %cmp281, label %cleanup, label %if.end283, !dbg !3754

if.end283:                                        ; preds = %if.end278
  %94 = bitcast i8* %93 to %struct.basic_block_def*, !dbg !3754
  %95 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3755
  %cfg286 = getelementptr inbounds %struct.function, %struct.function* %95, i64 0, i32 1, !dbg !3755
  %96 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg286, align 8, !dbg !3755
  %x_exit_block_ptr287 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %96, i64 0, i32 1, !dbg !3755
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr287, align 8, !dbg !3755
  %cmp288 = icmp eq %struct.basic_block_def* %97, %94, !dbg !3757
  br i1 %cmp288, label %cleanup, label %if.end291, !dbg !3758

if.end291:                                        ; preds = %cond.end204, %if.then184, %cond.end232, %if.end177, %if.end283, %if.then208, %land.lhs.true, %lor.lhs.false256
  %e_fall.6 = phi %struct.edge_def* [ %e_fall.0.lcssa, %if.end177 ], [ %e_taken.0.lcssa, %if.then208 ], [ %e_fall.0.lcssa, %cond.end204 ], [ %e_fall.0.lcssa, %land.lhs.true ], [ %e_fall.0.lcssa, %if.then184 ], [ %e_fall.0.lcssa, %cond.end232 ], [ %e_fall.0.lcssa, %lor.lhs.false256 ], [ %e_fall.0.lcssa, %if.end283 ], !dbg !3634
  call void @llvm.dbg.value(metadata %struct.edge_def* %e_fall.6, metadata !3511, metadata !DIExpression()), !dbg !3634
  %call292 = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %e_fall.6) #6, !dbg !3759
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call292, metadata !3518, metadata !DIExpression()), !dbg !3634
  %tobool293 = icmp eq %struct.basic_block_def* %call292, null, !dbg !3760
  br i1 %tobool293, label %cleanup, label %if.then294, !dbg !3761

if.then294:                                       ; preds = %if.end291
  %il295 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call292, i64 0, i32 7, !dbg !3762
  %rtl296 = bitcast %union.basic_block_il_dependent* %il295 to %struct.rtl_bb_info**, !dbg !3763
  %98 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl296, align 8, !dbg !3763
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %98, i64 0, i32 4, !dbg !3764
  store i32 1, i32* %visited, align 8, !dbg !3765
  %aux297 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3766
  %99 = bitcast i8** %aux297 to i64*, !dbg !3766
  %100 = load i64, i64* %99, align 8, !dbg !3766
  %aux298 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call292, i64 0, i32 2, !dbg !3767
  %101 = bitcast i8** %aux298 to i64*, !dbg !3768
  store i64 %100, i64* %101, align 8, !dbg !3768
  %102 = bitcast i8** %aux297 to %struct.basic_block_def**, !dbg !3769
  store %struct.basic_block_def* %call292, %struct.basic_block_def** %102, align 8, !dbg !3769
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call292, metadata !3509, metadata !DIExpression()), !dbg !3549
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e_fall.6, i64 0, i32 0, !dbg !3770
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3770
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %103, metadata !3528, metadata !DIExpression()), !dbg !3771
  %flags300 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i64 0, i32 13, !dbg !3770
  %104 = load i32, i32* %flags300, align 8, !dbg !3770
  %and301 = and i32 %104, -97, !dbg !3770
  %call302 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* nonnull %call292) #7, !dbg !3770
  %flags303 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call302, i64 0, i32 13, !dbg !3770
  %105 = load i32, i32* %flags303, align 8, !dbg !3770
  %and304 = and i32 %105, 96, !dbg !3770
  %or305 = or i32 %and301, %and304, !dbg !3770
  store i32 %or305, i32* %flags300, align 8, !dbg !3770
  %106 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !3772
  %tobool307 = icmp eq i32 %106, 0, !dbg !3772
  br i1 %tobool307, label %cleanup, label %land.lhs.true308, !dbg !3774

land.lhs.true308:                                 ; preds = %if.then294
  %107 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 110), align 1, !dbg !3775
  %tobool309 = icmp eq i8 %107, 0, !dbg !3776
  br i1 %tobool309, label %cleanup, label %land.lhs.true310, !dbg !3777

land.lhs.true310:                                 ; preds = %land.lhs.true308
  %108 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl296, align 8, !dbg !3778
  %end_313 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %108, i64 0, i32 1, !dbg !3778
  %109 = bitcast %struct.rtx_def** %end_313 to i32**, !dbg !3778
  %110 = load i32*, i32** %109, align 8, !dbg !3778
  %bf.load314 = load i32, i32* %110, align 8, !dbg !3778
  %bf.clear315 = and i32 %bf.load314, 65535, !dbg !3778
  %cmp316 = icmp eq i32 %bf.clear315, 9, !dbg !3778
  br i1 %cmp316, label %land.lhs.true318, label %cleanup, !dbg !3779

land.lhs.true318:                                 ; preds = %land.lhs.true310
  %111 = bitcast i32* %110 to %struct.rtx_def*, !dbg !3779
  %call322 = call i32 @any_condjump_p(%struct.rtx_def* %111) #6, !dbg !3780
  %tobool323 = icmp eq i32 %call322, 0, !dbg !3780
  br i1 %tobool323, label %land.lhs.true324, label %cleanup, !dbg !3781

land.lhs.true324:                                 ; preds = %land.lhs.true318
  %succs325 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call292, i64 0, i32 1, !dbg !3782
  %112 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs325, align 8, !dbg !3782
  %tobool326 = icmp eq %struct.VEC_edge_gc* %112, null, !dbg !3782
  br i1 %tobool326, label %cond.end331, label %cond.true327, !dbg !3782

cond.true327:                                     ; preds = %land.lhs.true324
  %base329 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %112, i64 0, i32 0, !dbg !3782
  br label %cond.end331, !dbg !3782

cond.end331:                                      ; preds = %land.lhs.true324, %cond.true327
  %cond332 = phi %struct.VEC_edge_base* [ %base329, %cond.true327 ], [ null, %land.lhs.true324 ], !dbg !3782
  %call333 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond332, i32 0) #7, !dbg !3782
  %flags334 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call333, i64 0, i32 7, !dbg !3783
  %113 = load i32, i32* %flags334, align 8, !dbg !3783
  %and335 = and i32 %113, 8192, !dbg !3784
  %tobool336 = icmp eq i32 %and335, 0, !dbg !3784
  br i1 %tobool336, label %cleanup, label %if.then337, !dbg !3785

if.then337:                                       ; preds = %cond.end331
  %114 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl296, align 8, !dbg !3786
  %end_340 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %114, i64 0, i32 1, !dbg !3786
  %115 = load %struct.rtx_def*, %struct.rtx_def** %end_340, align 8, !dbg !3786
  call void @add_reg_note(%struct.rtx_def* %115, i32 29, %struct.rtx_def* null) #6, !dbg !3787
  br label %cleanup, !dbg !3787

cleanup:                                          ; preds = %land.lhs.true217, %cond.end331, %land.lhs.true318, %land.lhs.true308, %if.then294, %if.end291, %if.else275, %if.then337, %land.lhs.true310, %if.end283, %if.end278, %cond.true269, %if.else264, %if.then252, %lor.lhs.false256, %if.end169, %lor.lhs.false, %cond.end, %if.then236, %cond.end163
  %bb.3 = phi %struct.basic_block_def* [ %bb.1, %if.then236 ], [ %bb.1, %cond.end163 ], [ %bb.1, %cond.end ], [ %bb.1, %lor.lhs.false ], [ %bb.1, %if.end169 ], [ %bb.1, %land.lhs.true217 ], [ %bb.1, %lor.lhs.false256 ], [ %bb.1, %if.then252 ], [ %bb.1, %if.else264 ], [ %bb.1, %cond.true269 ], [ %bb.1, %if.else275 ], [ %bb.1, %if.end278 ], [ %bb.1, %if.end283 ], [ %bb.1, %if.end291 ], [ %call292, %if.then337 ], [ %call292, %cond.end331 ], [ %call292, %land.lhs.true318 ], [ %call292, %land.lhs.true310 ], [ %call292, %land.lhs.true308 ], [ %call292, %if.then294 ], !dbg !3640
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !3509, metadata !DIExpression()), !dbg !3549
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #8, !dbg !3788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8, !dbg !3788
  %aux349 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 2, !dbg !3789
  %116 = bitcast i8** %aux349 to %struct.basic_block_def**, !dbg !3789
  br label %for.cond125, !dbg !3790, !llvm.loop !3791

for.end350:                                       ; preds = %for.cond125
  call void @relink_block_chain(i8 zeroext 0) #7, !dbg !3793
  %117 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3794
  %cfg352 = getelementptr inbounds %struct.function, %struct.function* %117, i64 0, i32 1, !dbg !3794
  %118 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg352, align 8, !dbg !3794
  %x_entry_block_ptr353 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %118, i64 0, i32 0, !dbg !3794
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr353, align 8, !dbg !3794
  %120 = bitcast %struct.edge_def** %e362 to i8*, !dbg !3795
  %121 = bitcast %struct.edge_iterator* %ei363 to i8*, !dbg !3795
  %122 = bitcast %struct.edge_iterator* %tmp364 to i8*, !dbg !3796
  %123 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp364, i64 0, i32 0, !dbg !3796
  %124 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp364, i64 0, i32 1, !dbg !3796
  %125 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei363, i64 0, i32 0, !dbg !3798
  %126 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei363, i64 0, i32 1, !dbg !3798
  br label %for.cond355, !dbg !3794

for.cond355:                                      ; preds = %if.end386, %for.end350
  %127 = phi %struct.control_flow_graph* [ %118, %for.end350 ], [ %.pre5, %if.end386 ], !dbg !3800
  %.pn = phi %struct.basic_block_def* [ %119, %for.end350 ], [ %bb.4, %if.end386 ]
  %bb.4.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3801
  %bb.4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.4.in, align 8, !dbg !3801
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.4, metadata !3509, metadata !DIExpression()), !dbg !3549
  %x_exit_block_ptr358 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %127, i64 0, i32 1, !dbg !3800
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr358, align 8, !dbg !3800
  %cmp359 = icmp eq %struct.basic_block_def* %bb.4, %128, !dbg !3800
  br i1 %cmp359, label %for.end389, label %for.body361, !dbg !3794

for.body361:                                      ; preds = %for.cond355
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #8, !dbg !3802
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #8, !dbg !3803
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %122) #8, !dbg !3804
  %succs365 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 1, !dbg !3804
  %call366 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs365) #7, !dbg !3804
  %129 = extractvalue { i32, %struct.VEC_edge_gc** } %call366, 0, !dbg !3804
  store i32 %129, i32* %123, align 8, !dbg !3804
  %130 = extractvalue { i32, %struct.VEC_edge_gc** } %call366, 1, !dbg !3804
  store %struct.VEC_edge_gc** %130, %struct.VEC_edge_gc*** %124, align 8, !dbg !3804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %121, i8* nonnull align 8 %122, i64 16, i1 false), !dbg !3804
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %122) #8, !dbg !3804
  br label %for.cond367, !dbg !3804

for.cond367:                                      ; preds = %for.inc376, %for.body361
  %131 = load i32, i32* %125, align 8, !dbg !3805
  %132 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %126, align 8, !dbg !3805
  call void @llvm.dbg.value(metadata %struct.edge_def** %e362, metadata !3532, metadata !DIExpression(DW_OP_deref)), !dbg !3795
  %call368 = call fastcc zeroext i8 @ei_cond(i32 %131, %struct.VEC_edge_gc** %132, %struct.edge_def** nonnull %e362) #7, !dbg !3805
  %tobool369 = icmp eq i8 %call368, 0, !dbg !3804
  br i1 %tobool369, label %for.cond367.for.end377_crit_edge, label %for.body370, !dbg !3804

for.cond367.for.end377_crit_edge:                 ; preds = %for.cond367
  %.pre6 = load %struct.edge_def*, %struct.edge_def** %e362, align 8, !dbg !3806
  br label %for.end377, !dbg !3804

for.body370:                                      ; preds = %for.cond367
  %133 = load %struct.edge_def*, %struct.edge_def** %e362, align 8, !dbg !3808
  call void @llvm.dbg.value(metadata %struct.edge_def* %133, metadata !3532, metadata !DIExpression()), !dbg !3795
  %flags371 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %133, i64 0, i32 7, !dbg !3810
  %134 = load i32, i32* %flags371, align 8, !dbg !3810
  %and372 = and i32 %134, 1, !dbg !3811
  %tobool373 = icmp eq i32 %and372, 0, !dbg !3811
  br i1 %tobool373, label %for.inc376, label %for.end377.loopexit, !dbg !3812

for.inc376:                                       ; preds = %for.body370
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei363, metadata !3536, metadata !DIExpression(DW_OP_deref)), !dbg !3795
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei363) #7, !dbg !3805
  br label %for.cond367, !dbg !3805, !llvm.loop !3813

for.end377.loopexit:                              ; preds = %for.body370
  %.lcssa = phi %struct.edge_def* [ %133, %for.body370 ], !dbg !3808
  br label %for.end377, !dbg !3806

for.end377:                                       ; preds = %for.end377.loopexit, %for.cond367.for.end377_crit_edge
  %135 = phi %struct.edge_def* [ %.pre6, %for.cond367.for.end377_crit_edge ], [ %.lcssa, %for.end377.loopexit ], !dbg !3806
  call void @llvm.dbg.value(metadata %struct.edge_def* %135, metadata !3532, metadata !DIExpression()), !dbg !3795
  %tobool378 = icmp eq %struct.edge_def* %135, null, !dbg !3806
  br i1 %tobool378, label %if.end386, label %land.lhs.true379, !dbg !3815

land.lhs.true379:                                 ; preds = %for.end377
  call void @llvm.dbg.value(metadata %struct.edge_def* %135, metadata !3532, metadata !DIExpression()), !dbg !3795
  %src380 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %135, i64 0, i32 0, !dbg !3816
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %src380, align 8, !dbg !3816
  call void @llvm.dbg.value(metadata %struct.edge_def* %135, metadata !3532, metadata !DIExpression()), !dbg !3795
  %dest381 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %135, i64 0, i32 1, !dbg !3817
  %137 = load %struct.basic_block_def*, %struct.basic_block_def** %dest381, align 8, !dbg !3817
  %call382 = call zeroext i8 @can_fallthru(%struct.basic_block_def* %136, %struct.basic_block_def* %137) #6, !dbg !3818
  %tobool383 = icmp eq i8 %call382, 0, !dbg !3818
  br i1 %tobool383, label %if.then384, label %if.end386, !dbg !3819

if.then384:                                       ; preds = %land.lhs.true379
  %138 = load %struct.edge_def*, %struct.edge_def** %e362, align 8, !dbg !3820
  call void @llvm.dbg.value(metadata %struct.edge_def* %138, metadata !3532, metadata !DIExpression()), !dbg !3795
  %call385 = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %138) #6, !dbg !3821
  br label %if.end386, !dbg !3821

if.end386:                                        ; preds = %land.lhs.true379, %for.end377, %if.then384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #8, !dbg !3822
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #8, !dbg !3822
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3800
  %cfg357.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3823
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg357.phi.trans.insert, align 8, !dbg !3800
  br label %for.cond355, !dbg !3800, !llvm.loop !3824

for.end389:                                       ; preds = %for.cond355
  %.lcssa18 = phi %struct.control_flow_graph* [ %127, %for.cond355 ], !dbg !3800
  %bb.4.lcssa = phi %struct.basic_block_def* [ %bb.4, %for.cond355 ], !dbg !3801
  %139 = load i32, i32* @optimize, align 4, !dbg !3826
  %tobool390 = icmp eq i32 %139, 0, !dbg !3826
  br i1 %tobool390, label %if.then391, label %if.end635, !dbg !3827

if.then391:                                       ; preds = %for.end389
  %x_entry_block_ptr394 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa18, i64 0, i32 0, !dbg !3828
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr394, align 8, !dbg !3828
  %141 = bitcast %struct.edge_def** %e403 to i8*, !dbg !3829
  %142 = bitcast %struct.edge_iterator* %ei404 to i8*, !dbg !3829
  %143 = bitcast %struct.edge_iterator* %tmp405 to i8*, !dbg !3830
  %144 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp405, i64 0, i32 0, !dbg !3830
  %145 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp405, i64 0, i32 1, !dbg !3830
  %146 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei404, i64 0, i32 0, !dbg !3831
  %147 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei404, i64 0, i32 1, !dbg !3831
  br label %for.cond396, !dbg !3828

for.cond396:                                      ; preds = %for.end631, %if.then391
  %148 = phi %struct.basic_block_def* [ %bb.4.lcssa, %if.then391 ], [ %.pre9, %for.end631 ], !dbg !3832
  %.pn2 = phi %struct.basic_block_def* [ %140, %if.then391 ], [ %bb.5, %for.end631 ]
  %bb.5.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !3833
  %bb.5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.5.in, align 8, !dbg !3833
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.5, metadata !3509, metadata !DIExpression()), !dbg !3549
  %cmp400 = icmp eq %struct.basic_block_def* %bb.5, %148, !dbg !3832
  br i1 %cmp400, label %if.end635.loopexit, label %for.body402, !dbg !3828

for.body402:                                      ; preds = %for.cond396
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %141) #8, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %142) #8, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %143) #8, !dbg !3836
  %succs406 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.5, i64 0, i32 1, !dbg !3836
  %call407 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs406) #7, !dbg !3836
  %149 = extractvalue { i32, %struct.VEC_edge_gc** } %call407, 0, !dbg !3836
  store i32 %149, i32* %144, align 8, !dbg !3836
  %150 = extractvalue { i32, %struct.VEC_edge_gc** } %call407, 1, !dbg !3836
  store %struct.VEC_edge_gc** %150, %struct.VEC_edge_gc*** %145, align 8, !dbg !3836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %142, i8* nonnull align 8 %143, i64 16, i1 false), !dbg !3836
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %143) #8, !dbg !3836
  br label %for.cond408, !dbg !3836

for.cond408:                                      ; preds = %for.inc630, %for.body402
  %151 = load i32, i32* %146, align 8, !dbg !3837
  %152 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %147, align 8, !dbg !3837
  call void @llvm.dbg.value(metadata %struct.edge_def** %e403, metadata !3537, metadata !DIExpression(DW_OP_deref)), !dbg !3829
  %call409 = call fastcc zeroext i8 @ei_cond(i32 %151, %struct.VEC_edge_gc** %152, %struct.edge_def** nonnull %e403) #7, !dbg !3837
  %tobool410 = icmp eq i8 %call409, 0, !dbg !3836
  br i1 %tobool410, label %for.end631, label %for.body411, !dbg !3836

for.body411:                                      ; preds = %for.cond408
  %153 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3838
  call void @llvm.dbg.value(metadata %struct.edge_def* %153, metadata !3537, metadata !DIExpression()), !dbg !3829
  %goto_locus = getelementptr inbounds %struct.edge_def, %struct.edge_def* %153, i64 0, i32 5, !dbg !3839
  %154 = load i32, i32* %goto_locus, align 8, !dbg !3839
  %tobool412 = icmp eq i32 %154, 0, !dbg !3838
  br i1 %tobool412, label %for.inc630, label %land.lhs.true413, !dbg !3840

land.lhs.true413:                                 ; preds = %for.body411
  call void @llvm.dbg.value(metadata %struct.edge_def* %153, metadata !3537, metadata !DIExpression()), !dbg !3829
  %flags414 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %153, i64 0, i32 7, !dbg !3841
  %155 = load i32, i32* %flags414, align 8, !dbg !3841
  %and415 = and i32 %155, 2, !dbg !3842
  %tobool416 = icmp eq i32 %and415, 0, !dbg !3842
  br i1 %tobool416, label %if.then417, label %for.inc630, !dbg !3843

if.then417:                                       ; preds = %land.lhs.true413
  call void @llvm.dbg.value(metadata %struct.edge_def* %153, metadata !3537, metadata !DIExpression()), !dbg !3829
  %src419 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %153, i64 0, i32 0, !dbg !3844
  %156 = load %struct.basic_block_def*, %struct.basic_block_def** %src419, align 8, !dbg !3844
  %il420 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %156, i64 0, i32 7, !dbg !3844
  %rtl421 = bitcast %union.basic_block_il_dependent* %il420 to %struct.rtl_bb_info**, !dbg !3844
  %157 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl421, align 8, !dbg !3844
  %end_422 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %157, i64 0, i32 1, !dbg !3844
  call void @llvm.dbg.value(metadata %struct.edge_def* %153, metadata !3537, metadata !DIExpression()), !dbg !3829
  %head_426 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %157, i64 0, i32 0, !dbg !3845
  %158 = load %struct.rtx_def*, %struct.rtx_def** %head_426, align 8, !dbg !3845
  %159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3845
  %rt_rtx430 = bitcast %union.rtunion_def* %159 to %struct.rtx_def**, !dbg !3845
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx430, align 8, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.rtx_def* %160, metadata !3548, metadata !DIExpression()), !dbg !3846
  br label %while.cond431, !dbg !3847

while.cond431:                                    ; preds = %while.body458, %if.then417
  %insn.8.in = phi %struct.rtx_def** [ %end_422, %if.then417 ], [ %rt_rtx462, %while.body458 ]
  %insn.8 = load %struct.rtx_def*, %struct.rtx_def** %insn.8.in, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.8, metadata !3510, metadata !DIExpression()), !dbg !3549
  %cmp432 = icmp eq %struct.rtx_def* %insn.8, %160, !dbg !3848
  br i1 %cmp432, label %while.end463, label %land.rhs, !dbg !3849

land.rhs:                                         ; preds = %while.cond431
  %161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.8, i64 0, i32 0, !dbg !3850
  %bf.load434 = load i32, i32* %161, align 8, !dbg !3850
  %bf.clear435 = and i32 %bf.load434, 65535, !dbg !3850
  %cmp436 = icmp eq i32 %bf.clear435, 8, !dbg !3850
  br i1 %cmp436, label %lor.rhs, label %lor.lhs.false438, !dbg !3850

lor.lhs.false438:                                 ; preds = %land.rhs
  %cmp441 = icmp eq i32 %bf.clear435, 7, !dbg !3850
  br i1 %cmp441, label %lor.rhs, label %lor.lhs.false443, !dbg !3850

lor.lhs.false443:                                 ; preds = %lor.lhs.false438
  %cmp446 = icmp eq i32 %bf.clear435, 9, !dbg !3850
  br i1 %cmp446, label %lor.rhs, label %lor.lhs.false448, !dbg !3850

lor.lhs.false448:                                 ; preds = %lor.lhs.false443
  %cmp451 = icmp eq i32 %bf.clear435, 10, !dbg !3850
  br i1 %cmp451, label %lor.rhs, label %while.body458, !dbg !3851

lor.rhs:                                          ; preds = %lor.lhs.false448, %lor.lhs.false443, %lor.lhs.false438, %land.rhs
  %arrayidx455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.8, i64 0, i32 1, i32 0, i32 2, !dbg !3852
  %rt_int = bitcast i64* %arrayidx455 to i32*, !dbg !3852
  %162 = load i32, i32* %rt_int, align 8, !dbg !3852
  %cmp456 = icmp eq i32 %162, 0, !dbg !3853
  br i1 %cmp456, label %while.body458, label %while.end463, !dbg !3847

while.body458:                                    ; preds = %lor.lhs.false448, %lor.rhs
  %163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.8, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3854
  %rt_rtx462 = bitcast %union.rtunion_def* %163 to %struct.rtx_def**, !dbg !3854
  br label %while.cond431, !dbg !3847, !llvm.loop !3855

while.end463:                                     ; preds = %while.cond431, %lor.rhs
  %insn.8.lcssa = phi %struct.rtx_def* [ %insn.8, %while.cond431 ], [ %insn.8, %lor.rhs ], !dbg !3846
  %cmp432.lcssa = phi i1 [ %cmp432, %while.cond431 ], [ %cmp432, %lor.rhs ], !dbg !3848
  br i1 %cmp432.lcssa, label %if.end476, label %land.lhs.true466, !dbg !3856

land.lhs.true466:                                 ; preds = %while.end463
  %arrayidx469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.8.lcssa, i64 0, i32 1, i32 0, i32 2, !dbg !3858
  %rt_int470 = bitcast i64* %arrayidx469 to i32*, !dbg !3858
  %164 = load i32, i32* %rt_int470, align 8, !dbg !3858
  call void @llvm.dbg.value(metadata %struct.edge_def* %153, metadata !3537, metadata !DIExpression()), !dbg !3829
  %call472 = call zeroext i8 @locator_eq(i32 %164, i32 %154) #7, !dbg !3859
  %tobool474 = icmp eq i8 %call472, 0, !dbg !3859
  br i1 %tobool474, label %land.lhs.true466.if.end476_crit_edge, label %for.inc630, !dbg !3860

land.lhs.true466.if.end476_crit_edge:             ; preds = %land.lhs.true466
  %.pre10 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3861
  %src477.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre10, i64 0, i32 0, !dbg !3863
  %.pre11 = load %struct.basic_block_def*, %struct.basic_block_def** %src477.phi.trans.insert, align 8, !dbg !3861
  %il478.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre11, i64 0, i32 7, !dbg !3863
  %rtl479.phi.trans.insert = bitcast %union.basic_block_il_dependent* %il478.phi.trans.insert to %struct.rtl_bb_info**, !dbg !3863
  %.pre12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl479.phi.trans.insert, align 8, !dbg !3861
  br label %if.end476, !dbg !3860

if.end476:                                        ; preds = %land.lhs.true466.if.end476_crit_edge, %while.end463
  %165 = phi %struct.rtl_bb_info* [ %.pre12, %land.lhs.true466.if.end476_crit_edge ], [ %157, %while.end463 ], !dbg !3861
  %end_480 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %165, i64 0, i32 1, !dbg !3861
  %166 = load %struct.rtx_def*, %struct.rtx_def** %end_480, align 8, !dbg !3861
  %call481 = call i32 @simplejump_p(%struct.rtx_def* %166) #6, !dbg !3864
  %tobool482 = icmp eq i32 %call481, 0, !dbg !3864
  br i1 %tobool482, label %if.end476.if.end504_crit_edge, label %land.lhs.true483, !dbg !3865

if.end476.if.end504_crit_edge:                    ; preds = %if.end476
  %.pre13 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3866
  br label %if.end504, !dbg !3865

land.lhs.true483:                                 ; preds = %if.end476
  %167 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3868
  call void @llvm.dbg.value(metadata %struct.edge_def* %167, metadata !3537, metadata !DIExpression()), !dbg !3829
  %src484 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %167, i64 0, i32 0, !dbg !3868
  %168 = load %struct.basic_block_def*, %struct.basic_block_def** %src484, align 8, !dbg !3868
  %il485 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %168, i64 0, i32 7, !dbg !3868
  %rtl486 = bitcast %union.basic_block_il_dependent* %il485 to %struct.rtl_bb_info**, !dbg !3868
  %169 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl486, align 8, !dbg !3868
  %end_487 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %169, i64 0, i32 1, !dbg !3868
  %170 = load %struct.rtx_def*, %struct.rtx_def** %end_487, align 8, !dbg !3868
  %arrayidx490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i64 0, i32 1, i32 0, i32 2, !dbg !3868
  %rt_int491 = bitcast i64* %arrayidx490 to i32*, !dbg !3868
  %171 = load i32, i32* %rt_int491, align 8, !dbg !3868
  %cmp492 = icmp eq i32 %171, 0, !dbg !3869
  br i1 %cmp492, label %if.then494, label %if.end504, !dbg !3870

if.then494:                                       ; preds = %land.lhs.true483
  call void @llvm.dbg.value(metadata %struct.edge_def* %167, metadata !3537, metadata !DIExpression()), !dbg !3829
  %goto_locus495 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %167, i64 0, i32 5, !dbg !3871
  %172 = load i32, i32* %goto_locus495, align 8, !dbg !3871
  call void @llvm.dbg.value(metadata %struct.edge_def* %167, metadata !3537, metadata !DIExpression()), !dbg !3829
  store i32 %172, i32* %rt_int491, align 8, !dbg !3873
  br label %for.inc630, !dbg !3874

if.end504:                                        ; preds = %if.end476.if.end504_crit_edge, %land.lhs.true483
  %173 = phi %struct.edge_def* [ %.pre13, %if.end476.if.end504_crit_edge ], [ %167, %land.lhs.true483 ], !dbg !3866
  call void @llvm.dbg.value(metadata %struct.edge_def* %173, metadata !3537, metadata !DIExpression()), !dbg !3829
  %dest505 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %173, i64 0, i32 1, !dbg !3875
  %174 = load %struct.basic_block_def*, %struct.basic_block_def** %dest505, align 8, !dbg !3875
  %175 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3876
  %cfg507 = getelementptr inbounds %struct.function, %struct.function* %175, i64 0, i32 1, !dbg !3876
  %176 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg507, align 8, !dbg !3876
  %x_exit_block_ptr508 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %176, i64 0, i32 1, !dbg !3876
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr508, align 8, !dbg !3876
  %cmp509 = icmp eq %struct.basic_block_def* %174, %177, !dbg !3877
  br i1 %cmp509, label %if.end574, label %if.then511, !dbg !3878

if.then511:                                       ; preds = %if.end504
  call void @llvm.dbg.value(metadata %struct.edge_def* %173, metadata !3537, metadata !DIExpression()), !dbg !3829
  %il513 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %174, i64 0, i32 7, !dbg !3879
  %rtl514 = bitcast %union.basic_block_il_dependent* %il513 to %struct.rtl_bb_info**, !dbg !3879
  %178 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl514, align 8, !dbg !3879
  %head_515 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %178, i64 0, i32 0, !dbg !3879
  call void @llvm.dbg.value(metadata %struct.edge_def* %173, metadata !3537, metadata !DIExpression()), !dbg !3829
  %end_519 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %178, i64 0, i32 1, !dbg !3881
  %179 = load %struct.rtx_def*, %struct.rtx_def** %end_519, align 8, !dbg !3881
  %180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3881
  %rt_rtx523 = bitcast %union.rtunion_def* %180 to %struct.rtx_def**, !dbg !3881
  %181 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx523, align 8, !dbg !3881
  call void @llvm.dbg.value(metadata %struct.rtx_def* %181, metadata !3548, metadata !DIExpression()), !dbg !3846
  br label %while.cond524, !dbg !3882

while.cond524:                                    ; preds = %while.body549, %if.then511
  %insn.9.in = phi %struct.rtx_def** [ %head_515, %if.then511 ], [ %rt_rtx553, %while.body549 ]
  %insn.9 = load %struct.rtx_def*, %struct.rtx_def** %insn.9.in, align 8, !dbg !3883
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.9, metadata !3510, metadata !DIExpression()), !dbg !3549
  %cmp525 = icmp eq %struct.rtx_def* %insn.9, %181, !dbg !3884
  br i1 %cmp525, label %while.end554, label %land.rhs527, !dbg !3885

land.rhs527:                                      ; preds = %while.cond524
  %182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.9, i64 0, i32 0, !dbg !3886
  %bf.load528 = load i32, i32* %182, align 8, !dbg !3886
  %bf.clear529 = and i32 %bf.load528, 65535, !dbg !3886
  %cmp530 = icmp eq i32 %bf.clear529, 8, !dbg !3886
  br i1 %cmp530, label %lor.end547, label %lor.lhs.false532, !dbg !3886

lor.lhs.false532:                                 ; preds = %land.rhs527
  %cmp535 = icmp eq i32 %bf.clear529, 7, !dbg !3886
  br i1 %cmp535, label %lor.end547, label %lor.lhs.false537, !dbg !3886

lor.lhs.false537:                                 ; preds = %lor.lhs.false532
  %cmp540 = icmp eq i32 %bf.clear529, 9, !dbg !3886
  br i1 %cmp540, label %lor.end547, label %lor.rhs542, !dbg !3886

lor.rhs542:                                       ; preds = %lor.lhs.false537
  %cmp545 = icmp eq i32 %bf.clear529, 10, !dbg !3886
  br label %lor.end547, !dbg !3886

lor.end547:                                       ; preds = %lor.rhs542, %lor.lhs.false537, %lor.lhs.false532, %land.rhs527
  %183 = phi i1 [ true, %lor.lhs.false537 ], [ true, %lor.lhs.false532 ], [ true, %land.rhs527 ], [ %cmp545, %lor.rhs542 ]
  br i1 %183, label %while.end554, label %while.body549, !dbg !3882

while.body549:                                    ; preds = %lor.end547
  %184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.9, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3887
  %rt_rtx553 = bitcast %union.rtunion_def* %184 to %struct.rtx_def**, !dbg !3887
  br label %while.cond524, !dbg !3882, !llvm.loop !3888

while.end554:                                     ; preds = %lor.end547, %while.cond524
  %insn.9.lcssa = phi %struct.rtx_def* [ %insn.9, %lor.end547 ], [ %insn.9, %while.cond524 ], !dbg !3883
  %cmp525.lcssa = phi i1 [ %cmp525, %lor.end547 ], [ %cmp525, %while.cond524 ], !dbg !3884
  br i1 %cmp525.lcssa, label %if.end574, label %land.lhs.true557, !dbg !3889

land.lhs.true557:                                 ; preds = %while.end554
  %arrayidx560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.9.lcssa, i64 0, i32 1, i32 0, i32 2, !dbg !3891
  %rt_int561 = bitcast i64* %arrayidx560 to i32*, !dbg !3891
  %185 = load i32, i32* %rt_int561, align 8, !dbg !3891
  %tobool562 = icmp eq i32 %185, 0, !dbg !3891
  br i1 %tobool562, label %if.end574, label %land.lhs.true563, !dbg !3892

land.lhs.true563:                                 ; preds = %land.lhs.true557
  call void @llvm.dbg.value(metadata %struct.edge_def* %173, metadata !3537, metadata !DIExpression()), !dbg !3829
  %goto_locus568 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %173, i64 0, i32 5, !dbg !3893
  %186 = load i32, i32* %goto_locus568, align 8, !dbg !3893
  %call569 = call zeroext i8 @locator_eq(i32 %185, i32 %186) #7, !dbg !3894
  %tobool571 = icmp eq i8 %call569, 0, !dbg !3894
  br i1 %tobool571, label %land.lhs.true563.if.end574_crit_edge, label %for.inc630, !dbg !3895

land.lhs.true563.if.end574_crit_edge:             ; preds = %land.lhs.true563
  %.pre14 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3896
  br label %if.end574, !dbg !3895

if.end574:                                        ; preds = %land.lhs.true563.if.end574_crit_edge, %land.lhs.true557, %while.end554, %if.end504
  %187 = phi %struct.edge_def* [ %.pre14, %land.lhs.true563.if.end574_crit_edge ], [ %173, %land.lhs.true557 ], [ %173, %while.end554 ], [ %173, %if.end504 ], !dbg !3896
  call void @llvm.dbg.value(metadata %struct.edge_def* %187, metadata !3537, metadata !DIExpression()), !dbg !3829
  %call575 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %187) #6, !dbg !3897
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call575, metadata !3543, metadata !DIExpression()), !dbg !3846
  %il576 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call575, i64 0, i32 7, !dbg !3898
  %rtl577 = bitcast %union.basic_block_il_dependent* %il576 to %struct.rtl_bb_info**, !dbg !3898
  %188 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl577, align 8, !dbg !3898
  %end_578 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %188, i64 0, i32 1, !dbg !3898
  %189 = bitcast %struct.rtx_def** %end_578 to i32**, !dbg !3898
  %190 = load i32*, i32** %189, align 8, !dbg !3898
  %bf.load579 = load i32, i32* %190, align 8, !dbg !3898
  %bf.clear580 = and i32 %bf.load579, 65535, !dbg !3898
  %cmp581 = icmp eq i32 %bf.clear580, 8, !dbg !3898
  %191 = bitcast i32* %190 to %struct.rtx_def*, !dbg !3898
  br i1 %cmp581, label %if.end616, label %lor.lhs.false583, !dbg !3898

lor.lhs.false583:                                 ; preds = %if.end574
  %cmp589 = icmp eq i32 %bf.clear580, 7, !dbg !3898
  br i1 %cmp589, label %if.end616, label %lor.lhs.false591, !dbg !3898

lor.lhs.false591:                                 ; preds = %lor.lhs.false583
  %cmp597 = icmp eq i32 %bf.clear580, 9, !dbg !3898
  br i1 %cmp597, label %if.end616, label %lor.lhs.false599, !dbg !3898

lor.lhs.false599:                                 ; preds = %lor.lhs.false591
  %cmp605 = icmp eq i32 %bf.clear580, 10, !dbg !3898
  br i1 %cmp605, label %if.end616, label %if.then607, !dbg !3900

if.then607:                                       ; preds = %lor.lhs.false599
  %call608 = call %struct.rtx_def* @gen_nop() #6, !dbg !3901
  %192 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl577, align 8, !dbg !3902
  %end_611 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %192, i64 0, i32 1, !dbg !3902
  %193 = load %struct.rtx_def*, %struct.rtx_def** %end_611, align 8, !dbg !3902
  %call612 = call %struct.rtx_def* @emit_insn_after_noloc(%struct.rtx_def* %call608, %struct.rtx_def* %193, %struct.basic_block_def* %call575) #6, !dbg !3903
  %194 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl577, align 8, !dbg !3904
  %end_615 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %194, i64 0, i32 1, !dbg !3904
  store %struct.rtx_def* %call612, %struct.rtx_def** %end_615, align 8, !dbg !3905
  %.pre15 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl577, align 8, !dbg !3906
  %end_620.phi.trans.insert = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %.pre15, i64 0, i32 1, !dbg !3846
  %.pre16 = load %struct.rtx_def*, %struct.rtx_def** %end_620.phi.trans.insert, align 8, !dbg !3906
  br label %if.end616, !dbg !3904

if.end616:                                        ; preds = %if.then607, %lor.lhs.false599, %lor.lhs.false591, %lor.lhs.false583, %if.end574
  %195 = phi %struct.rtx_def* [ %.pre16, %if.then607 ], [ %191, %lor.lhs.false599 ], [ %191, %lor.lhs.false591 ], [ %191, %lor.lhs.false583 ], [ %191, %if.end574 ], !dbg !3906
  %196 = load %struct.edge_def*, %struct.edge_def** %e403, align 8, !dbg !3907
  call void @llvm.dbg.value(metadata %struct.edge_def* %196, metadata !3537, metadata !DIExpression()), !dbg !3829
  %goto_locus617 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %196, i64 0, i32 5, !dbg !3908
  %197 = load i32, i32* %goto_locus617, align 8, !dbg !3908
  %arrayidx623 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i64 0, i32 1, i32 0, i32 2, !dbg !3906
  %rt_int624 = bitcast i64* %arrayidx623 to i32*, !dbg !3906
  store i32 %197, i32* %rt_int624, align 8, !dbg !3909
  br label %for.inc630, !dbg !3910

for.inc630:                                       ; preds = %land.lhs.true466, %land.lhs.true563, %land.lhs.true413, %for.body411, %if.then494, %if.end616
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei404, metadata !3542, metadata !DIExpression(DW_OP_deref)), !dbg !3829
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei404) #7, !dbg !3837
  br label %for.cond408, !dbg !3837, !llvm.loop !3911

for.end631:                                       ; preds = %for.cond408
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %142) #8, !dbg !3913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141) #8, !dbg !3913
  %.pre7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3832
  %cfg398.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre7, i64 0, i32 1, !dbg !3914
  %.pre8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg398.phi.trans.insert, align 8, !dbg !3832
  %x_exit_block_ptr399.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre8, i64 0, i32 1, !dbg !3914
  %.pre9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr399.phi.trans.insert, align 8, !dbg !3832
  br label %for.cond396, !dbg !3832, !llvm.loop !3915

if.end635.loopexit:                               ; preds = %for.cond396
  br label %if.end635, !dbg !3917

if.end635:                                        ; preds = %if.end635.loopexit, %for.end389
  ret void, !dbg !3917
}

declare dso_local void @delete_dead_jumptables() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_copy_bbs_p(%struct.basic_block_def** %bbs, i32 %n) local_unnamed_addr #4 !dbg !3918 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bbs, metadata !3923, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 %n, metadata !3924, metadata !DIExpression()), !dbg !3933
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3934
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3934
  call void @llvm.dbg.value(metadata i32 1, metadata !3927, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 0, metadata !3925, metadata !DIExpression()), !dbg !3933
  %wide.trip.count7 = zext i32 %n to i64, !dbg !3935
  br label %for.cond, !dbg !3938

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 0, %entry ], !dbg !3939
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3925, metadata !DIExpression()), !dbg !3933
  %exitcond8 = icmp eq i64 %indvars.iv5, %wide.trip.count7, !dbg !3935
  br i1 %exitcond8, label %for.cond1.preheader, label %for.body, !dbg !3940

for.cond1.preheader:                              ; preds = %for.cond
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3941
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3942
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3942
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3942
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3944
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3944
  %wide.trip.count3 = zext i32 %n to i64, !dbg !3946
  br label %for.cond1, !dbg !3947

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv5, !dbg !3948
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3948
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 13, !dbg !3949
  %8 = load i32, i32* %flags, align 8, !dbg !3950
  %or = or i32 %8, 128, !dbg !3950
  store i32 %or, i32* %flags, align 8, !dbg !3950
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3951
  br label %for.cond, !dbg !3952, !llvm.loop !3953

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc22
  %indvars.iv1 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next2, %for.inc22 ], !dbg !3955
  %ret.0 = phi i32 [ 1, %for.cond1.preheader ], [ %ret.1, %for.inc22 ], !dbg !3933
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !3927, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3925, metadata !DIExpression()), !dbg !3933
  %exitcond4 = icmp eq i64 %indvars.iv1, %wide.trip.count3, !dbg !3946
  br i1 %exitcond4, label %end, label %for.body3, !dbg !3947

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3956
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3957
  %arrayidx5 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv1, !dbg !3957
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8, !dbg !3957
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 1, !dbg !3957
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3957
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3957
  store i32 %10, i32* %3, align 8, !dbg !3957
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3957
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %4, align 8, !dbg !3957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3957
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3957
  br label %for.cond6, !dbg !3957

for.cond6:                                        ; preds = %for.inc14, %for.body3
  %12 = load i32, i32* %5, align 8, !dbg !3958
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3958
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3926, metadata !DIExpression(DW_OP_deref)), !dbg !3933
  %call7 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #7, !dbg !3958
  %tobool = icmp eq i8 %call7, 0, !dbg !3957
  br i1 %tobool, label %for.end15, label %for.body8, !dbg !3957

for.body8:                                        ; preds = %for.cond6
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3959
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3926, metadata !DIExpression()), !dbg !3933
  %flags9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 7, !dbg !3961
  %15 = load i32, i32* %flags9, align 8, !dbg !3961
  %and = and i32 %15, 2, !dbg !3962
  %tobool10 = icmp eq i32 %and, 0, !dbg !3962
  br i1 %tobool10, label %for.inc14, label %land.lhs.true, !dbg !3963

land.lhs.true:                                    ; preds = %for.body8
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3926, metadata !DIExpression()), !dbg !3933
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 1, !dbg !3964
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3964
  %flags11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 13, !dbg !3965
  %17 = load i32, i32* %flags11, align 8, !dbg !3965
  %18 = trunc i32 %17 to i8, !dbg !3966
  %tobool13 = icmp slt i8 %18, 0, !dbg !3966
  br i1 %tobool13, label %cleanup.loopexit, label %for.inc14, !dbg !3967

for.inc14:                                        ; preds = %for.body8, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3928, metadata !DIExpression(DW_OP_deref)), !dbg !3941
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3958
  br label %for.cond6, !dbg !3958, !llvm.loop !3968

for.end15:                                        ; preds = %for.cond6
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8, !dbg !3970
  %call18 = call zeroext i8 @can_duplicate_block_p(%struct.basic_block_def* %19) #6, !dbg !3972
  %tobool19 = icmp ne i8 %call18, 0, !dbg !3972
  %ret.0. = select i1 %tobool19, i32 %ret.0, i32 0, !dbg !3973
  %. = select i1 %tobool19, i32 0, i32 5, !dbg !3973
  br label %cleanup, !dbg !3973

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup, !dbg !3974

cleanup:                                          ; preds = %cleanup.loopexit, %for.end15
  %ret.1 = phi i32 [ %ret.0., %for.end15 ], [ 0, %cleanup.loopexit ], !dbg !3933
  %cleanup.dest.slot.0 = phi i32 [ %., %for.end15 ], [ 11, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !3927, metadata !DIExpression()), !dbg !3933
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3974
  switch i32 %cleanup.dest.slot.0, label %cleanup35.loopexit [
    i32 0, label %for.inc22
    i32 5, label %end
    i32 11, label %end
  ]

for.inc22:                                        ; preds = %cleanup
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3975
  br label %for.cond1, !dbg !3976, !llvm.loop !3977

end:                                              ; preds = %for.cond1, %cleanup, %cleanup
  %ret.3 = phi i32 [ %ret.1, %cleanup ], [ %ret.1, %cleanup ], [ %ret.0, %for.cond1 ], !dbg !3979
  call void @llvm.dbg.value(metadata i32 %ret.3, metadata !3927, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.label(metadata !3932), !dbg !3981
  call void @llvm.dbg.value(metadata i32 0, metadata !3925, metadata !DIExpression()), !dbg !3933
  %wide.trip.count = zext i32 %n to i64, !dbg !3982
  br label %for.cond25, !dbg !3985

for.cond25:                                       ; preds = %for.body27, %end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %end ], !dbg !3986
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3925, metadata !DIExpression()), !dbg !3933
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3982
  br i1 %exitcond, label %for.end34, label %for.body27, !dbg !3987

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv, !dbg !3988
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8, !dbg !3988
  %flags30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 13, !dbg !3989
  %21 = load i32, i32* %flags30, align 8, !dbg !3990
  %and31 = and i32 %21, -129, !dbg !3990
  store i32 %and31, i32* %flags30, align 8, !dbg !3990
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3991
  br label %for.cond25, !dbg !3992, !llvm.loop !3993

for.end34:                                        ; preds = %for.cond25
  %conv = trunc i32 %ret.3 to i8, !dbg !3995
  br label %cleanup35, !dbg !3996

cleanup35.loopexit:                               ; preds = %cleanup
  br label %cleanup35, !dbg !3997

cleanup35:                                        ; preds = %cleanup35.loopexit, %for.end34
  %retval.0 = phi i8 [ %conv, %for.end34 ], [ undef, %cleanup35.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3997
  ret i8 %retval.0, !dbg !3997
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3998 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4002, metadata !DIExpression()), !dbg !4004
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4005
  store i32 0, i32* %index, align 8, !dbg !4006
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4007
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4008
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4009
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4009
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4010 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4016, metadata !DIExpression()), !dbg !4017
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4018
  %tobool = icmp eq i8 %call, 0, !dbg !4018
  br i1 %tobool, label %if.then, label %if.else, !dbg !4020

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4021
  br label %return, !dbg !4023

if.else:                                          ; preds = %entry
  br label %return, !dbg !4024

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4026
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4026
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4026
  ret i8 %retval.0, !dbg !4027
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4033, metadata !DIExpression()), !dbg !4034
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4035
  %0 = load i32, i32* %index, align 8, !dbg !4035
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4035
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4035
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !4035
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4035
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4035

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4035
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4035
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !4035
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4035
  br label %cond.end, !dbg !4035

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4035
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4035
  %cmp = icmp ult i32 %0, %call2, !dbg !4035
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4035

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4035
  br label %cond.end5, !dbg !4035

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4036
  %inc = add i32 %5, 1, !dbg !4036
  store i32 %inc, i32* %index, align 8, !dbg !4036
  ret void, !dbg !4037
}

declare dso_local zeroext i8 @can_duplicate_block_p(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nounwind uwtable
define dso_local void @copy_bbs(%struct.basic_block_def** %bbs, i32 %n, %struct.basic_block_def** %new_bbs, %struct.edge_def** %edges, i32 %num_edges, %struct.edge_def** %new_edges, %struct.loop* %base, %struct.basic_block_def* %after) local_unnamed_addr #4 !dbg !4038 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bbs, metadata !4042, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 %n, metadata !4043, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %new_bbs, metadata !4044, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.edge_def** %edges, metadata !4045, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 %num_edges, metadata !4046, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.edge_def** %new_edges, metadata !4047, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.loop* %base, metadata !4048, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !4049, metadata !DIExpression()), !dbg !4060
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4061
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4061
  call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4060
  %wide.trip.count19 = zext i32 %n to i64, !dbg !4062
  br label %for.cond, !dbg !4065

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc ], [ 0, %entry ]
  %after.addr.0 = phi %struct.basic_block_def* [ %call, %for.inc ], [ %after, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !4050, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after.addr.0, metadata !4049, metadata !DIExpression()), !dbg !4060
  %exitcond20 = icmp eq i64 %indvars.iv17, %wide.trip.count19, !dbg !4062
  br i1 %exitcond20, label %for.cond17.preheader, label %for.body, !dbg !4066

for.cond17.preheader:                             ; preds = %for.cond
  %wide.trip.count15 = zext i32 %n to i64, !dbg !4067
  br label %for.cond17, !dbg !4070

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv17, !dbg !4071
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !4052, metadata !DIExpression()), !dbg !4060
  %call = tail call %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %1, %struct.edge_def* null, %struct.basic_block_def* %after.addr.0) #6, !dbg !4073
  %arrayidx2 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %new_bbs, i64 %indvars.iv17, !dbg !4074
  store %struct.basic_block_def* %call, %struct.basic_block_def** %arrayidx2, align 8, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4053, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4049, metadata !DIExpression()), !dbg !4060
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 13, !dbg !4076
  %2 = load i32, i32* %flags, align 8, !dbg !4077
  %or = or i32 %2, 128, !dbg !4077
  store i32 %or, i32* %flags, align 8, !dbg !4077
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 3, !dbg !4078
  %3 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4078
  %header = getelementptr inbounds %struct.loop, %struct.loop* %3, i64 0, i32 2, !dbg !4080
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4080
  %cmp3 = icmp eq %struct.basic_block_def* %4, %1, !dbg !4081
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4082

land.lhs.true:                                    ; preds = %for.body
  %cmp5 = icmp eq %struct.loop* %3, %base, !dbg !4083
  br i1 %cmp5, label %if.end, label %if.then, !dbg !4084

if.then:                                          ; preds = %land.lhs.true
  %loop_father6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !4085
  %5 = load %struct.loop*, %struct.loop** %loop_father6, align 8, !dbg !4085
  %header7 = getelementptr inbounds %struct.loop, %struct.loop* %5, i64 0, i32 2, !dbg !4086
  store %struct.basic_block_def* %call, %struct.basic_block_def** %header7, align 8, !dbg !4087
  %.pre = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4088
  br label %if.end, !dbg !4090

if.end:                                           ; preds = %land.lhs.true, %if.then, %for.body
  %6 = phi %struct.loop* [ %base, %land.lhs.true ], [ %.pre, %if.then ], [ %3, %for.body ], !dbg !4088
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 3, !dbg !4091
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4091
  %cmp9 = icmp eq %struct.basic_block_def* %7, %1, !dbg !4092
  br i1 %cmp9, label %land.lhs.true10, label %for.inc, !dbg !4093

land.lhs.true10:                                  ; preds = %if.end
  %cmp12 = icmp eq %struct.loop* %6, %base, !dbg !4094
  br i1 %cmp12, label %for.inc, label %if.then13, !dbg !4095

if.then13:                                        ; preds = %land.lhs.true10
  %loop_father14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !4096
  %8 = load %struct.loop*, %struct.loop** %loop_father14, align 8, !dbg !4096
  %latch15 = getelementptr inbounds %struct.loop, %struct.loop* %8, i64 0, i32 3, !dbg !4097
  store %struct.basic_block_def* %call, %struct.basic_block_def** %latch15, align 8, !dbg !4098
  br label %for.inc, !dbg !4099

for.inc:                                          ; preds = %land.lhs.true10, %if.end, %if.then13
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !4100
  br label %for.cond, !dbg !4101, !llvm.loop !4102

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc29
  %indvars.iv13 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next14, %for.inc29 ], !dbg !4104
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !4050, metadata !DIExpression()), !dbg !4060
  %exitcond16 = icmp eq i64 %indvars.iv13, %wide.trip.count15, !dbg !4067
  br i1 %exitcond16, label %for.cond32.preheader, label %for.body19, !dbg !4070

for.cond32.preheader:                             ; preds = %for.cond17
  %wide.trip.count11 = zext i32 %num_edges to i64, !dbg !4105
  br label %for.cond32, !dbg !4108

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv13, !dbg !4109
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx21, align 8, !dbg !4109
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !4052, metadata !DIExpression()), !dbg !4060
  %arrayidx23 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %new_bbs, i64 %indvars.iv13, !dbg !4111
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8, !dbg !4111
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %10, metadata !4053, metadata !DIExpression()), !dbg !4060
  %call24 = tail call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %9) #6, !dbg !4112
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call24, metadata !4054, metadata !DIExpression()), !dbg !4060
  %flags25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call24, i64 0, i32 13, !dbg !4113
  %11 = load i32, i32* %flags25, align 8, !dbg !4113
  %12 = trunc i32 %11 to i8, !dbg !4115
  %tobool = icmp slt i8 %12, 0, !dbg !4115
  br i1 %tobool, label %if.then26, label %for.inc29, !dbg !4116

if.then26:                                        ; preds = %for.body19
  %call27 = tail call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %call24) #6, !dbg !4117
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call27, metadata !4054, metadata !DIExpression()), !dbg !4060
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %10, %struct.basic_block_def* %call27) #6, !dbg !4119
  br label %for.inc29, !dbg !4120

for.inc29:                                        ; preds = %for.body19, %if.then26
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !4121
  br label %for.cond17, !dbg !4122, !llvm.loop !4123

for.cond32:                                       ; preds = %for.cond32.preheader, %for.body34
  %indvars.iv9 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next10, %for.body34 ], !dbg !4125
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !4051, metadata !DIExpression()), !dbg !4060
  %exitcond12 = icmp eq i64 %indvars.iv9, %wide.trip.count11, !dbg !4105
  br i1 %exitcond12, label %for.cond40.preheader, label %for.body34, !dbg !4108

for.cond40.preheader:                             ; preds = %for.cond32
  %13 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4126
  %14 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4127
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4127
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4127
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4129
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4129
  %wide.trip.count7 = zext i32 %n to i64, !dbg !4131
  br label %for.cond40, !dbg !4132

for.body34:                                       ; preds = %for.cond32
  %arrayidx36 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %new_edges, i64 %indvars.iv9, !dbg !4133
  store %struct.edge_def* null, %struct.edge_def** %arrayidx36, align 8, !dbg !4134
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !4135
  br label %for.cond32, !dbg !4136, !llvm.loop !4137

for.cond40:                                       ; preds = %for.cond40.preheader, %for.end84
  %indvars.iv5 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next6, %for.end84 ], !dbg !4139
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !4050, metadata !DIExpression()), !dbg !4060
  %exitcond8 = icmp eq i64 %indvars.iv5, %wide.trip.count7, !dbg !4131
  br i1 %exitcond8, label %for.cond88.preheader, label %for.body42, !dbg !4132

for.cond88.preheader:                             ; preds = %for.cond40
  %wide.trip.count = zext i32 %n to i64, !dbg !4140
  br label %for.cond88, !dbg !4143

for.body42:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !4144
  %arrayidx44 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %new_bbs, i64 %indvars.iv5, !dbg !4145
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx44, align 8, !dbg !4145
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %19, metadata !4053, metadata !DIExpression()), !dbg !4060
  %arrayidx46 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv5, !dbg !4146
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx46, align 8, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %20, metadata !4052, metadata !DIExpression()), !dbg !4060
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !4147
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 1, !dbg !4147
  %call47 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4147
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call47, 0, !dbg !4147
  store i32 %21, i32* %15, align 8, !dbg !4147
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call47, 1, !dbg !4147
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %16, align 8, !dbg !4147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !4147
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !4147
  br label %for.cond48, !dbg !4147

for.cond48:                                       ; preds = %for.inc83, %for.body42
  %23 = load i32, i32* %17, align 8, !dbg !4148
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %18, align 8, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4055, metadata !DIExpression(DW_OP_deref)), !dbg !4060
  %call49 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #7, !dbg !4148
  %tobool50 = icmp eq i8 %call49, 0, !dbg !4147
  br i1 %tobool50, label %for.end84, label %for.cond52.preheader, !dbg !4147

for.cond52.preheader:                             ; preds = %for.cond48
  %wide.trip.count3 = zext i32 %num_edges to i64, !dbg !4149
  br label %for.cond52, !dbg !4153

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc71
  %indvars.iv1 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next2, %for.inc71 ], !dbg !4154
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !4051, metadata !DIExpression()), !dbg !4060
  %exitcond4 = icmp eq i64 %indvars.iv1, %wide.trip.count3, !dbg !4149
  br i1 %exitcond4, label %for.end73, label %for.body54, !dbg !4153

for.body54:                                       ; preds = %for.cond52
  %arrayidx56 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %edges, i64 %indvars.iv1, !dbg !4155
  %25 = load %struct.edge_def*, %struct.edge_def** %arrayidx56, align 8, !dbg !4155
  %tobool57 = icmp eq %struct.edge_def* %25, null, !dbg !4155
  br i1 %tobool57, label %for.inc71, label %land.lhs.true58, !dbg !4157

land.lhs.true58:                                  ; preds = %for.body54
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 0, !dbg !4158
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4158
  %cmp61 = icmp eq %struct.basic_block_def* %26, %20, !dbg !4159
  br i1 %cmp61, label %land.lhs.true62, label %for.inc71, !dbg !4160

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 1, !dbg !4161
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4161
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4162
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !4055, metadata !DIExpression()), !dbg !4060
  %dest65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i64 0, i32 1, !dbg !4163
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest65, align 8, !dbg !4163
  %cmp66 = icmp eq %struct.basic_block_def* %27, %29, !dbg !4164
  br i1 %cmp66, label %if.then67, label %for.inc71, !dbg !4165

if.then67:                                        ; preds = %land.lhs.true62
  %30 = ptrtoint %struct.edge_def* %28 to i64, !dbg !4165
  %arrayidx69 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %new_edges, i64 %indvars.iv1, !dbg !4166
  %31 = bitcast %struct.edge_def** %arrayidx69 to i64*, !dbg !4167
  store i64 %30, i64* %31, align 8, !dbg !4167
  br label %for.inc71, !dbg !4166

for.inc71:                                        ; preds = %for.body54, %land.lhs.true58, %land.lhs.true62, %if.then67
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !4168
  br label %for.cond52, !dbg !4169, !llvm.loop !4170

for.end73:                                        ; preds = %for.cond52
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4055, metadata !DIExpression()), !dbg !4060
  %dest74 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 1, !dbg !4174
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest74, align 8, !dbg !4174
  %flags75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 13, !dbg !4175
  %34 = load i32, i32* %flags75, align 8, !dbg !4175
  %35 = trunc i32 %34 to i8, !dbg !4176
  %tobool77 = icmp slt i8 %35, 0, !dbg !4176
  br i1 %tobool77, label %if.end79, label %for.inc83, !dbg !4177

if.end79:                                         ; preds = %for.end73
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4055, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !4055, metadata !DIExpression()), !dbg !4060
  %call81 = call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %33) #6, !dbg !4178
  %call82 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %32, %struct.basic_block_def* %call81) #6, !dbg !4179
  br label %for.inc83, !dbg !4180

for.inc83:                                        ; preds = %for.end73, %if.end79
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4056, metadata !DIExpression(DW_OP_deref)), !dbg !4126
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4148
  br label %for.cond48, !dbg !4148, !llvm.loop !4181

for.end84:                                        ; preds = %for.cond48
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !4183
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !4184
  br label %for.cond40, !dbg !4185, !llvm.loop !4186

for.cond88:                                       ; preds = %for.cond88.preheader, %for.body90
  %indvars.iv = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next, %for.body90 ], !dbg !4188
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4050, metadata !DIExpression()), !dbg !4060
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4140
  br i1 %exitcond, label %for.end97, label %for.body90, !dbg !4143

for.body90:                                       ; preds = %for.cond88
  %arrayidx92 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv, !dbg !4189
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx92, align 8, !dbg !4189
  %flags93 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 13, !dbg !4190
  %37 = load i32, i32* %flags93, align 8, !dbg !4191
  %and94 = and i32 %37, -129, !dbg !4191
  store i32 %and94, i32* %flags93, align 8, !dbg !4191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4192
  br label %for.cond88, !dbg !4193, !llvm.loop !4194

for.end97:                                        ; preds = %for.cond88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4196
  ret void, !dbg !4196
}

declare dso_local %struct.basic_block_def* @duplicate_block(%struct.basic_block_def*, %struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_VEC_tree_gc(i8*) #1

declare dso_local void @gt_pch_nx_VEC_tree_gc(i8*) #1

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #1

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4197 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4201, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 1, metadata !4202, metadata !DIExpression()), !dbg !4204
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4205
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4205
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4205

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !4205
  br label %cond.end, !dbg !4205

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4205
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #7, !dbg !4205
  %tobool1 = icmp eq i32 %call, 0, !dbg !4205
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4203, metadata !DIExpression()), !dbg !4204
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4205

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !4206
  %2 = load i8*, i8** %1, align 8, !dbg !4206
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !4206
  store i8* %call3, i8** %1, align 8, !dbg !4206
  br label %if.end, !dbg !4206

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4205
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4208 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4213, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4214, metadata !DIExpression()), !dbg !4216
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4217
  %0 = load i32, i32* %num1, align 4, !dbg !4217
  %inc = add i32 %0, 1, !dbg !4217
  store i32 %inc, i32* %num1, align 4, !dbg !4217
  %idxprom = zext i32 %0 to i64, !dbg !4217
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4217
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4215, metadata !DIExpression()), !dbg !4216
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4217
  ret i32* %arrayidx, !dbg !4217
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4218 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 1, metadata !4223, metadata !DIExpression()), !dbg !4224
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4225

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !4225
  %0 = load i32, i32* %alloc, align 4, !dbg !4225
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4225
  %1 = load i32, i32* %num, align 4, !dbg !4225
  %cmp1 = icmp ne i32 %0, %1, !dbg !4225
  %phitmp = zext i1 %cmp1 to i32, !dbg !4225
  br label %cond.end, !dbg !4225

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4225
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4226 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @block_locators_blocks, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 1, metadata !4231, metadata !DIExpression()), !dbg !4233
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @block_locators_blocks, align 8, !dbg !4234
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !4234
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4234

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !4234
  br label %cond.end, !dbg !4234

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4234
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !4234
  %tobool1 = icmp eq i32 %call, 0, !dbg !4234
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4234
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4232, metadata !DIExpression()), !dbg !4233
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4234

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_gc** @block_locators_blocks to i8**), align 8, !dbg !4235
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %1, i32 1) #6, !dbg !4235
  store i8* %call3, i8** bitcast (%struct.VEC_tree_gc** @block_locators_blocks to i8**), align 8, !dbg !4235
  br label %if.end, !dbg !4235

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4234
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4237 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4242, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4243, metadata !DIExpression()), !dbg !4245
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4246
  %0 = load i32, i32* %num1, align 8, !dbg !4246
  %inc = add i32 %0, 1, !dbg !4246
  store i32 %inc, i32* %num1, align 8, !dbg !4246
  %idxprom = zext i32 %0 to i64, !dbg !4246
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4246
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !4244, metadata !DIExpression()), !dbg !4245
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !4246
  ret %union.tree_node** %arrayidx, !dbg !4246
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4247 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4251, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i32 1, metadata !4252, metadata !DIExpression()), !dbg !4253
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4254
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4254

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !4254
  %0 = load i32, i32* %alloc, align 4, !dbg !4254
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4254
  %1 = load i32, i32* %num, align 8, !dbg !4254
  %cmp1 = icmp ne i32 %0, %1, !dbg !4254
  %phitmp = zext i1 %cmp1 to i32, !dbg !4254
  br label %cond.end, !dbg !4254

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4254

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4254
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_location_t_heap_reserve(%struct.VEC_location_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4255 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_heap** @locations_locators_vals, metadata !4259, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 1, metadata !4260, metadata !DIExpression()), !dbg !4262
  %0 = load %struct.VEC_location_t_heap*, %struct.VEC_location_t_heap** @locations_locators_vals, align 8, !dbg !4263
  %tobool = icmp eq %struct.VEC_location_t_heap* %0, null, !dbg !4263
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4263

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_location_t_heap, %struct.VEC_location_t_heap* %0, i64 0, i32 0, !dbg !4263
  br label %cond.end, !dbg !4263

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_location_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4263
  %call = tail call fastcc i32 @VEC_location_t_base_space(%struct.VEC_location_t_base* %cond, i32 1) #7, !dbg !4263
  %tobool1 = icmp eq i32 %call, 0, !dbg !4263
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4261, metadata !DIExpression()), !dbg !4262
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4263

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_location_t_heap** @locations_locators_vals to i8**), align 8, !dbg !4264
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %1, i32 1, i64 8, i64 4) #6, !dbg !4264
  store i8* %call3, i8** bitcast (%struct.VEC_location_t_heap** @locations_locators_vals to i8**), align 8, !dbg !4264
  br label %if.end, !dbg !4264

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4263
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_location_t_base_quick_push(%struct.VEC_location_t_base* %vec_, i32* %obj_) unnamed_addr #0 !dbg !4266 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_base* %vec_, metadata !4270, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32* @curr_location, metadata !4271, metadata !DIExpression()), !dbg !4273
  %num1 = getelementptr inbounds %struct.VEC_location_t_base, %struct.VEC_location_t_base* %vec_, i64 0, i32 0, !dbg !4274
  %0 = load i32, i32* %num1, align 4, !dbg !4274
  %inc = add i32 %0, 1, !dbg !4274
  store i32 %inc, i32* %num1, align 4, !dbg !4274
  %idxprom = zext i32 %0 to i64, !dbg !4274
  %arrayidx = getelementptr inbounds %struct.VEC_location_t_base, %struct.VEC_location_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4274
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4272, metadata !DIExpression()), !dbg !4273
  br i1 false, label %entry.if.end_crit_edge, label %if.then, !dbg !4274

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !4274

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @curr_location, align 4, !dbg !4275
  store i32 %1, i32* %arrayidx, align 4, !dbg !4275
  br label %if.end, !dbg !4275

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  ret i32* %arrayidx, !dbg !4274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_location_t_base_space(%struct.VEC_location_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4277 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_location_t_base* %vec_, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i32 1, metadata !4282, metadata !DIExpression()), !dbg !4283
  %tobool = icmp eq %struct.VEC_location_t_base* %vec_, null, !dbg !4284
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4284

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_location_t_base, %struct.VEC_location_t_base* %vec_, i64 0, i32 1, !dbg !4284
  %0 = load i32, i32* %alloc, align 4, !dbg !4284
  %num = getelementptr inbounds %struct.VEC_location_t_base, %struct.VEC_location_t_base* %vec_, i64 0, i32 0, !dbg !4284
  %1 = load i32, i32* %num, align 4, !dbg !4284
  %cmp1 = icmp ne i32 %0, %1, !dbg !4284
  %phitmp = zext i1 %cmp1 to i32, !dbg !4284
  br label %cond.end, !dbg !4284

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4284
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4285 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4291, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4292, metadata !DIExpression()), !dbg !4293
  br label %land.end, !dbg !4294

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4294
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4294
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4294
  ret %union.tree_node* %0, !dbg !4294
}

declare dso_local %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @skip_insns_after_block(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !4295 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4299, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !4302, metadata !DIExpression()), !dbg !4304
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 6, !dbg !4305
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !4305
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4307
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4307
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4307
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !4307
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4307
  %cmp = icmp eq %struct.basic_block_def* %0, %3, !dbg !4308
  br i1 %cmp, label %if.end, label %if.then, !dbg !4309

if.then:                                          ; preds = %entry
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 7, !dbg !4310
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4310
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4310
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 0, !dbg !4310
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4310
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !4302, metadata !DIExpression()), !dbg !4304
  br label %if.end, !dbg !4311

if.end:                                           ; preds = %entry, %if.then
  %next_head.0 = phi %struct.rtx_def* [ %5, %if.then ], [ null, %entry ], !dbg !4304
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next_head.0, metadata !4302, metadata !DIExpression()), !dbg !4304
  %il2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4312
  %rtl3 = bitcast %union.basic_block_il_dependent* %il2 to %struct.rtl_bb_info**, !dbg !4312
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl3, align 8, !dbg !4312
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 1, !dbg !4312
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4312
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !4301, metadata !DIExpression()), !dbg !4304
  br label %for.cond.outer, !dbg !4314

for.cond.outer.loopexit:                          ; preds = %if.end7
  %.lcssa10 = phi %struct.rtx_def* [ %9, %if.end7 ], !dbg !4315
  br label %for.cond.outer.backedge, !dbg !4317

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %if.end
  %last_insn.0.ph = phi %struct.rtx_def* [ %7, %if.end ], [ %last_insn.0.ph.be, %for.cond.outer.backedge ]
  %insn.0.ph = phi %struct.rtx_def* [ %7, %if.end ], [ %insn.0.ph.be, %for.cond.outer.backedge ]
  br label %for.cond, !dbg !4317

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %insn.0 = phi %struct.rtx_def* [ %insn.0.ph, %for.cond.outer ], [ %9, %for.cond.backedge ], !dbg !4318
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_insn.0.ph, metadata !4301, metadata !DIExpression()), !dbg !4304
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4315
  %rt_rtx = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !4315
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4315
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !4300, metadata !DIExpression()), !dbg !4304
  %cmp4 = icmp eq %struct.rtx_def* %9, null, !dbg !4319
  %cmp5 = icmp eq %struct.rtx_def* %9, %next_head.0, !dbg !4320
  %or.cond = or i1 %cmp4, %cmp5, !dbg !4317
  br i1 %or.cond, label %for.end.loopexit, label %if.end7, !dbg !4317

if.end7:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !4323
  %bf.load = load i32, i32* %10, align 8, !dbg !4323
  %trunc = trunc i32 %bf.load to i16, !dbg !4324
  switch i16 %trunc, label %for.end.loopexit [
    i16 11, label %for.cond.outer.loopexit
    i16 13, label %sw.bb8
    i16 12, label %sw.bb13
  ], !dbg !4324, !llvm.loop !4325

sw.bb8:                                           ; preds = %if.end7
  %u9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 1, !dbg !4327
  %11 = getelementptr inbounds %union.u, %union.u* %u9, i64 1, i32 0, i32 0, i64 0, !dbg !4327
  %rt_int = bitcast %union.rtunion_def* %11 to i32*, !dbg !4327
  %12 = load i32, i32* %rt_int, align 8, !dbg !4327
  %cond = icmp eq i32 %12, 3, !dbg !4329
  br i1 %cond, label %sw.bb12, label %for.cond.backedge, !dbg !4329

sw.bb12:                                          ; preds = %sw.bb8
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4330
  br label %for.cond.backedge, !dbg !4332

for.cond.backedge:                                ; preds = %sw.bb12, %sw.bb8
  br label %for.cond, !dbg !4304, !llvm.loop !4325

sw.bb13:                                          ; preds = %if.end7
  %.lcssa11 = phi %struct.rtx_def* [ %9, %if.end7 ], !dbg !4315
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa11, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4333
  %rt_rtx17 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !4333
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx17, align 8, !dbg !4333
  %tobool = icmp eq %struct.rtx_def* %14, null, !dbg !4333
  br i1 %tobool, label %for.end.loopexit1, label %land.lhs.true, !dbg !4335

land.lhs.true:                                    ; preds = %sw.bb13
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !4335
  %bf.load22 = load i32, i32* %15, align 8, !dbg !4336
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !4336
  %cmp24 = icmp eq i32 %bf.clear23, 9, !dbg !4336
  br i1 %cmp24, label %land.lhs.true25, label %for.end.loopexit1, !dbg !4336

land.lhs.true25:                                  ; preds = %land.lhs.true
  %u30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, !dbg !4336
  %16 = getelementptr inbounds %union.u, %union.u* %u30, i64 1, i32 0, i32 0, i64 0, !dbg !4336
  %17 = bitcast %union.rtunion_def* %16 to i32**, !dbg !4336
  %18 = load i32*, i32** %17, align 8, !dbg !4336
  %bf.load34 = load i32, i32* %18, align 8, !dbg !4336
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !4336
  %cmp36 = icmp eq i32 %bf.clear35, 20, !dbg !4336
  br i1 %cmp36, label %if.then48, label %lor.lhs.false, !dbg !4336

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %cmp47 = icmp eq i32 %bf.clear35, 21, !dbg !4336
  br i1 %cmp47, label %if.then48, label %for.end.loopexit1, !dbg !4337

if.then48:                                        ; preds = %lor.lhs.false, %land.lhs.true25
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !4301, metadata !DIExpression()), !dbg !4304
  br label %for.cond.outer.backedge, !dbg !4338

for.cond.outer.backedge:                          ; preds = %if.then48, %for.cond.outer.loopexit
  %last_insn.0.ph.be = phi %struct.rtx_def* [ %14, %if.then48 ], [ %.lcssa10, %for.cond.outer.loopexit ]
  %insn.0.ph.be = phi %struct.rtx_def* [ %14, %if.then48 ], [ %.lcssa10, %for.cond.outer.loopexit ]
  br label %for.cond.outer, !dbg !4317, !llvm.loop !4325

for.end.loopexit:                                 ; preds = %if.end7, %for.cond
  %last_insn.0.ph.lcssa = phi %struct.rtx_def* [ %last_insn.0.ph, %if.end7 ], [ %last_insn.0.ph, %for.cond ]
  br label %for.end, !dbg !4340

for.end.loopexit1:                                ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb13
  %last_insn.0.ph.lcssa12 = phi %struct.rtx_def* [ %last_insn.0.ph, %land.lhs.true ], [ %last_insn.0.ph, %lor.lhs.false ], [ %last_insn.0.ph, %sw.bb13 ]
  br label %for.end, !dbg !4340

for.end:                                          ; preds = %for.end.loopexit1, %for.end.loopexit
  %last_insn.0.ph13 = phi %struct.rtx_def* [ %last_insn.0.ph.lcssa12, %for.end.loopexit1 ], [ %last_insn.0.ph.lcssa, %for.end.loopexit ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_insn.0.ph13, metadata !4300, metadata !DIExpression()), !dbg !4304
  br label %for.cond55, !dbg !4340

for.cond55:                                       ; preds = %for.inc, %for.end
  %insn.1 = phi %struct.rtx_def* [ %last_insn.0.ph13, %for.end ], [ %22, %for.inc ], !dbg !4342
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !4300, metadata !DIExpression()), !dbg !4304
  %19 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl3, align 8, !dbg !4343
  %end_58 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %19, i64 0, i32 1, !dbg !4343
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end_58, align 8, !dbg !4343
  %cmp59 = icmp eq %struct.rtx_def* %insn.1, %20, !dbg !4345
  br i1 %cmp59, label %for.end78, label %for.body60, !dbg !4346

for.body60:                                       ; preds = %for.cond55
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4347
  %rt_rtx64 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !4347
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx64, align 8, !dbg !4347
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !4303, metadata !DIExpression()), !dbg !4304
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !4349
  %bf.load65 = load i32, i32* %23, align 8, !dbg !4349
  %bf.clear66 = and i32 %bf.load65, 65535, !dbg !4349
  %cmp67 = icmp eq i32 %bf.clear66, 13, !dbg !4349
  br i1 %cmp67, label %if.then68, label %for.inc, !dbg !4351

if.then68:                                        ; preds = %for.body60
  %u69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !4352
  %24 = getelementptr inbounds %union.u, %union.u* %u69, i64 1, i32 0, i32 0, i64 0, !dbg !4352
  %rt_int72 = bitcast %union.rtunion_def* %24 to i32*, !dbg !4352
  %25 = load i32, i32* %rt_int72, align 8, !dbg !4352
  switch i32 %25, label %sw.default75 [
    i32 3, label %sw.bb73
    i32 0, label %for.inc
    i32 1, label %for.inc
  ], !dbg !4353

sw.bb73:                                          ; preds = %if.then68
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4354
  br label %for.inc, !dbg !4356

sw.default75:                                     ; preds = %if.then68
  tail call void @reorder_insns(%struct.rtx_def* %insn.1, %struct.rtx_def* %insn.1, %struct.rtx_def* %last_insn.0.ph13) #6, !dbg !4357
  br label %for.inc, !dbg !4358

for.inc:                                          ; preds = %for.body60, %sw.default75, %sw.bb73, %if.then68, %if.then68
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !4300, metadata !DIExpression()), !dbg !4304
  br label %for.cond55, !dbg !4359, !llvm.loop !4360

for.end78:                                        ; preds = %for.cond55
  ret %struct.rtx_def* %last_insn.0.ph13, !dbg !4362
}

declare dso_local void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4363 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4368
  %tobool = icmp eq i8 %call, 0, !dbg !4368
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4369

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4370
  br label %cond.end, !dbg !4369

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !4369
  ret %struct.edge_def* %cond, !dbg !4371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4372 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4377
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4377
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4377

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4377
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4377
  br label %cond.end, !dbg !4377

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4377
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4377
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4378
  %conv3 = zext i1 %cmp to i8, !dbg !4379
  ret i8 %conv3, !dbg !4380
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4381 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4384
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4384
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4384

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4384
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4384
  br label %cond.end, !dbg !4384

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4384
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4384
  ret %struct.edge_def* %call2, !dbg !4385
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4386 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4392, metadata !DIExpression()), !dbg !4393
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4394
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4394

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4394
  %0 = load i32, i32* %num, align 8, !dbg !4394
  br label %cond.end, !dbg !4394

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4394
  ret i32 %cond, !dbg !4394
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4395 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4400
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4400

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4400
  br label %cond.end, !dbg !4400

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4401
  ret %struct.VEC_edge_gc* %0, !dbg !4402
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4403 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4407, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4408, metadata !DIExpression()), !dbg !4409
  br label %land.end, !dbg !4410

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4410
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4410
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4410
  ret %struct.edge_def* %0, !dbg !4410
}

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @onlyjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !4411 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4413, metadata !DIExpression()), !dbg !4415
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4416
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4416
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4416
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4416
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4416
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4414, metadata !DIExpression()), !dbg !4415
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4417
  %bf.load = load i32, i32* %2, align 8, !dbg !4417
  %bf.clear = and i32 %bf.load, 65535, !dbg !4417
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !4417
  br i1 %cmp, label %if.end3, label %if.then, !dbg !4419

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4420
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !4420
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4423

if.then1:                                         ; preds = %if.then
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4424
  %4 = load i32, i32* %index, align 8, !dbg !4424
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %4) #6, !dbg !4425
  br label %if.end, !dbg !4425

if.end:                                           ; preds = %if.then, %if.then1
  %call2 = tail call %struct.rtx_def* @block_label(%struct.basic_block_def* %bb) #6, !dbg !4426
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !4414, metadata !DIExpression()), !dbg !4415
  br label %if.end3, !dbg !4427

if.end3:                                          ; preds = %if.end, %entry
  %label.0 = phi %struct.rtx_def* [ %1, %entry ], [ %call2, %if.end ], !dbg !4415
  call void @llvm.dbg.value(metadata %struct.rtx_def* %label.0, metadata !4414, metadata !DIExpression()), !dbg !4415
  ret %struct.rtx_def* %label.0, !dbg !4428
}

declare dso_local void @update_br_prob_note(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @extract_asm_operands(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @returnjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @force_nonfallthru(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4429 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4433, metadata !DIExpression()), !dbg !4434
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !4435
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !4436
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4436
  ret %struct.basic_block_def* %0, !dbg !4437
}

declare dso_local void @add_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_fallthru(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @simplejump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after_noloc(%struct.rtx_def*, %struct.rtx_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_nop() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @block_label(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4438 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4442, metadata !DIExpression()), !dbg !4443
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !4444
  %tobool = icmp eq i8 %call, 0, !dbg !4444
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4444

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4444
  br label %cond.end, !dbg !4444

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4445
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4445
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4445
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4445

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4445
  br label %cond.end5, !dbg !4445

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4445
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !4445
  ret %struct.edge_def* %call7, !dbg !4446
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4447 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4449, metadata !DIExpression()), !dbg !4450
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4451
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4451
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4451
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4451

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4451
  br label %cond.end, !dbg !4451

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4451
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4451
  %cmp = icmp eq i32 %call, 1, !dbg !4452
  %conv2 = zext i1 %cmp to i8, !dbg !4451
  ret i8 %conv2, !dbg !4453
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
!llvm.module.flags = !{!1948, !1949, !1950}
!llvm.ident = !{!1951}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "epilogue_locator", scope: !2, file: !3, line: 236, type: !719, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !716, globals: !1879, nameTableKind: None)
!3 = !DIFile(filename: "cfglayout.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !143, !147, !153, !158, !163, !182, !189, !196, !390, !397, !573}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !135, line: 31, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !135, line: 91, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !148, line: 363, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !148, line: 355, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !159, line: 474, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !164, line: 280, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !164, line: 1817, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !164, line: 1805, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !164, line: 39, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!198 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!203 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!204 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!205 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!208 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!209 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!210 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!214 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!215 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!216 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!217 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!218 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!219 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!220 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!221 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!222 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!223 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!225 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!226 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!227 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!228 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!229 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!230 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!231 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!232 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!233 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!234 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!235 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!236 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!237 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!238 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!240 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!241 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!242 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!244 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!245 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!246 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!247 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!248 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!249 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!251 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!252 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!253 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!254 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!255 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!256 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!257 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!258 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!259 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!260 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!261 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!262 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!263 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!264 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!266 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!267 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!268 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!270 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!271 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!272 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!273 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!274 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!275 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!277 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!278 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!280 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!281 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!282 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!283 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!284 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!287 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!288 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!293 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!295 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!296 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!297 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!298 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!299 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!300 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!301 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!302 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!303 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!304 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!305 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!306 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!307 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!308 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!309 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!310 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!311 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!313 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!314 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!315 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!316 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!317 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!318 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!320 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!321 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!322 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!323 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!324 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!325 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!326 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!327 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!328 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!329 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!330 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!331 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!332 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!333 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!334 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!335 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!336 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!337 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!338 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!339 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!340 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!341 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!342 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!343 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!344 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!345 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!346 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!347 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!348 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!349 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!363 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!364 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!365 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!366 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!367 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!383 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!384 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!385 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!386 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!387 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!388 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !391, line: 104, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396}
!393 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 74, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!400 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!572 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !574, line: 45, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!576 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!600 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!601 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!602 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!603 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!604 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!605 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!606 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!607 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!608 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!609 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!610 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!611 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!612 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!613 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!614 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!615 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!616 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!617 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!618 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!619 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!620 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!621 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!622 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!623 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!624 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!625 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!626 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!627 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!628 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!629 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!630 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!631 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!632 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!633 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!634 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!635 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!636 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!637 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!638 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!639 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!640 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!641 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!642 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!643 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!644 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!645 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!646 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!647 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!648 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!649 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!650 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!651 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!652 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!653 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!654 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!655 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!656 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!657 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!658 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!659 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!660 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!661 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!662 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!663 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!664 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!665 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!666 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!667 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!668 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!669 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!670 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!671 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!672 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!673 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!674 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!675 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!676 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!677 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!678 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!679 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!680 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!681 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!682 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!683 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!684 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!685 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!686 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!687 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!688 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!689 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!690 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!691 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!692 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!693 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!694 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!695 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!696 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!697 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!698 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!699 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!700 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!701 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!702 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!704 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!705 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!707 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!708 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!709 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!710 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!711 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!712 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!713 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!714 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!715 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!716 = !{!717, !718, !719, !720, !723, !724, !573, !726, !1854, !1454, !1867, !7, !873, !758, !827}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!719 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !727, line: 111, baseType: !728)
!727 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !148, line: 217, size: 832, elements: !730)
!730 = !{!731, !1821, !1822, !1823, !1824, !1828, !1829, !1830, !1848, !1849, !1850, !1851, !1852, !1853}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !729, file: !148, line: 219, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !148, line: 151, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !148, line: 151, size: 128, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !734, file: !148, line: 151, baseType: !737, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !148, line: 150, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !148, line: 150, size: 128, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !738, file: !148, line: 150, baseType: !7, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !738, file: !148, line: 150, baseType: !7, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !738, file: !148, line: 150, baseType: !743, size: 64, offset: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 64, elements: !792)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !727, line: 108, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !148, line: 122, size: 512, elements: !747)
!747 = !{!748, !749, !750, !1813, !1814, !1815, !1816, !1817, !1818, !1819}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !746, file: !148, line: 124, baseType: !728, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !746, file: !148, line: 125, baseType: !728, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !746, file: !148, line: 131, baseType: !751, size: 64, offset: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !148, line: 128, size: 64, elements: !752)
!752 = !{!753, !757}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !751, file: !148, line: 129, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !727, line: 66, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !727, line: 65, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !751, file: !148, line: 130, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !727, line: 50, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !574, line: 240, size: 384, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !760, file: !574, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !760, file: !574, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !760, file: !574, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !760, file: !574, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !760, file: !574, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !760, file: !574, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !760, file: !574, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !760, file: !574, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !760, file: !574, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !760, file: !574, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !760, file: !574, line: 321, baseType: !773, size: 320, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !574, line: 315, size: 320, elements: !774)
!774 = !{!775, !1748, !1750, !1811, !1812}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !773, file: !574, line: 316, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 64, elements: !792)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !574, line: 183, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !574, line: 166, size: 64, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !794, !795, !807, !810, !872, !1726, !1727, !1738, !1745}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !778, file: !574, line: 168, baseType: !719, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !778, file: !574, line: 169, baseType: !7, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !778, file: !574, line: 170, baseType: !724, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !778, file: !574, line: 171, baseType: !758, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !778, file: !574, line: 172, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !727, line: 53, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !574, line: 359, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !787, file: !574, line: 360, baseType: !719, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !787, file: !574, line: 361, baseType: !791, size: 64, offset: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 64, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 1)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !778, file: !574, line: 173, baseType: !5, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !778, file: !574, line: 174, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !574, line: 133, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 115, size: 32, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !797, file: !574, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !797, file: !574, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !797, file: !574, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !797, file: !574, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !797, file: !574, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !797, file: !574, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !797, file: !574, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !797, file: !574, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !778, file: !574, line: 175, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !574, line: 175, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !778, file: !574, line: 176, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !813, line: 75, size: 256, elements: !814)
!813 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!814 = !{!815, !830, !831, !832}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !812, file: !813, line: 76, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !813, line: 68, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !813, line: 63, size: 320, elements: !819)
!819 = !{!820, !822, !823, !824}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !813, line: 64, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !818, file: !813, line: 65, baseType: !821, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !818, file: !813, line: 66, baseType: !7, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !818, file: !813, line: 67, baseType: !825, size: 128, offset: 192)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 128, elements: !828)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !813, line: 29, baseType: !827)
!827 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!828 = !{!829}
!829 = !DISubrange(count: 2)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !812, file: !813, line: 77, baseType: !816, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !812, file: !813, line: 78, baseType: !7, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !812, file: !813, line: 79, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !813, line: 49, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !813, line: 45, size: 832, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !835, file: !813, line: 46, baseType: !821, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !835, file: !813, line: 47, baseType: !811, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !835, file: !813, line: 48, baseType: !840, size: 704, offset: 128)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !841, line: 164, size: 704, elements: !842)
!841 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!842 = !{!843, !845, !855, !856, !857, !858, !859, !860, !864, !868, !869, !870, !871}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !840, file: !841, line: 166, baseType: !844, size: 64)
!844 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !840, file: !841, line: 167, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !841, line: 157, size: 192, elements: !848)
!848 = !{!849, !850, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !847, file: !841, line: 159, baseType: !721, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !847, file: !841, line: 160, baseType: !846, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !847, file: !841, line: 161, baseType: !852, size: 32, offset: 128)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 32, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 4)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !840, file: !841, line: 168, baseType: !721, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !840, file: !841, line: 169, baseType: !721, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !840, file: !841, line: 170, baseType: !721, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !840, file: !841, line: 171, baseType: !844, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !840, file: !841, line: 172, baseType: !719, size: 32, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !840, file: !841, line: 176, baseType: !861, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!846, !723, !844}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !840, file: !841, line: 177, baseType: !865, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !723, !846}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !840, file: !841, line: 178, baseType: !723, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !840, file: !841, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !840, file: !841, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !840, file: !841, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !778, file: !574, line: 177, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !727, line: 56, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !876)
!876 = !{!877, !910, !916, !927, !946, !957, !962, !969, !975, !988, !1000, !1038, !1043, !1071, !1079, !1080, !1085, !1094, !1100, !1105, !1109, !1113, !1353, !1402, !1408, !1415, !1422, !1445, !1470, !1487, !1499, !1521, !1536, !1708}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !875, file: !164, line: 3372, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !878, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !878, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !878, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !878, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !878, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !878, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !878, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !878, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !878, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !878, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !878, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !878, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !878, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !878, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !878, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !878, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !878, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !878, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !878, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !878, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !878, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !878, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !878, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !878, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !878, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !878, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !878, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !878, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !878, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !878, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !875, file: !164, line: 3373, baseType: !911, size: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !911, file: !164, line: 403, baseType: !878, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !911, file: !164, line: 404, baseType: !873, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !911, file: !164, line: 405, baseType: !873, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !875, file: !164, line: 3374, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !164, line: 1385, baseType: !911, size: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !917, file: !164, line: 1386, baseType: !921, size: 128, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !922, line: 58, baseType: !923)
!922 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 54, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !923, file: !922, line: 56, baseType: !827, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !923, file: !922, line: 57, baseType: !844, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !875, file: !164, line: 3375, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !164, line: 1398, baseType: !911, size: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !928, file: !164, line: 1399, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !934, line: 52, size: 256, elements: !935)
!934 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !933, file: !934, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !933, file: !934, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !933, file: !934, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !933, file: !934, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !933, file: !934, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !933, file: !934, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !933, file: !934, line: 62, baseType: !943, size: 192, offset: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 192, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 3)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !875, file: !164, line: 3376, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !947, file: !164, line: 1409, baseType: !911, size: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !947, file: !164, line: 1410, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !953, line: 27, size: 192, elements: !954)
!953 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !953, line: 29, baseType: !921, size: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !952, file: !953, line: 30, baseType: !5, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !875, file: !164, line: 3377, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !164, line: 1438, baseType: !911, size: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !958, file: !164, line: 1439, baseType: !873, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !875, file: !164, line: 3378, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !963, file: !164, line: 1419, baseType: !911, size: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !963, file: !164, line: 1420, baseType: !719, size: 32, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !963, file: !164, line: 1421, baseType: !968, size: 8, offset: 224)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 8, elements: !792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !875, file: !164, line: 3379, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !164, line: 1429, baseType: !911, size: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !970, file: !164, line: 1430, baseType: !873, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !970, file: !164, line: 1431, baseType: !873, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !875, file: !164, line: 3380, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !164, line: 1461, baseType: !911, size: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !976, file: !164, line: 1462, baseType: !980, size: 128, offset: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !981, line: 31, size: 128, elements: !982)
!981 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!982 = !{!983, !986, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !980, file: !981, line: 32, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !980, file: !981, line: 33, baseType: !7, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !980, file: !981, line: 34, baseType: !7, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !875, file: !164, line: 3381, baseType: !989, size: 384)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !990)
!990 = !{!991, !992, !997, !998, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !989, file: !164, line: 2508, baseType: !911, size: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !989, file: !164, line: 2509, baseType: !993, size: 32, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !994, line: 58, baseType: !995)
!994 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !996, line: 44, baseType: !7)
!996 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !989, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !989, file: !164, line: 2511, baseType: !873, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !989, file: !164, line: 2512, baseType: !873, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !875, file: !164, line: 3382, baseType: !1001, size: 896)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !164, line: 2653, baseType: !989, size: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1001, file: !164, line: 2654, baseType: !873, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1001, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1001, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1001, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1001, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1001, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1001, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1001, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1001, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1001, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1001, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1001, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1001, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1001, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1001, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1001, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1001, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1001, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1001, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1001, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1001, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1001, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1001, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1001, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1001, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1001, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1001, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1001, file: !164, line: 2705, baseType: !873, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1001, file: !164, line: 2706, baseType: !873, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1001, file: !164, line: 2707, baseType: !873, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1001, file: !164, line: 2708, baseType: !873, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1001, file: !164, line: 2711, baseType: !1036, size: 64, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !875, file: !164, line: 3383, baseType: !1039, size: 960)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !164, line: 2757, baseType: !1001, size: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1039, file: !164, line: 2758, baseType: !758, size: 64, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !875, file: !164, line: 3384, baseType: !1044, size: 1472)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !1045)
!1045 = !{!1046, !1067, !1068, !1069, !1070}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !164, line: 3115, baseType: !1047, size: 1216)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !164, line: 2985, baseType: !1039, size: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1047, file: !164, line: 2986, baseType: !873, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1047, file: !164, line: 2987, baseType: !873, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1047, file: !164, line: 2988, baseType: !873, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1047, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1047, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1047, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1047, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1047, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1047, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1047, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1047, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1047, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1047, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1047, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1047, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1047, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1047, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1044, file: !164, line: 3117, baseType: !873, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1044, file: !164, line: 3119, baseType: !873, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1044, file: !164, line: 3121, baseType: !873, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1044, file: !164, line: 3123, baseType: !873, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !875, file: !164, line: 3385, baseType: !1072, size: 1088)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !164, line: 2875, baseType: !1039, size: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1072, file: !164, line: 2876, baseType: !758, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1072, file: !164, line: 2877, baseType: !1077, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !164, line: 2856, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !875, file: !164, line: 3386, baseType: !1047, size: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !875, file: !164, line: 3387, baseType: !1081, size: 1280)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1081, file: !164, line: 3094, baseType: !1047, size: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1081, file: !164, line: 3095, baseType: !1077, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !875, file: !164, line: 3388, baseType: !1086, size: 1216)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1086, file: !164, line: 2825, baseType: !1001, size: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1086, file: !164, line: 2827, baseType: !873, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1086, file: !164, line: 2828, baseType: !873, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1086, file: !164, line: 2829, baseType: !873, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1086, file: !164, line: 2830, baseType: !873, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1086, file: !164, line: 2831, baseType: !873, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !875, file: !164, line: 3389, baseType: !1095, size: 1024)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !164, line: 2851, baseType: !1039, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1095, file: !164, line: 2852, baseType: !719, size: 32, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1095, file: !164, line: 2853, baseType: !719, size: 32, offset: 992)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !875, file: !164, line: 3390, baseType: !1101, size: 1024)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1101, file: !164, line: 2858, baseType: !1039, size: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1101, file: !164, line: 2859, baseType: !1077, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !875, file: !164, line: 3391, baseType: !1106, size: 960)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !164, line: 2863, baseType: !1039, size: 960)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !875, file: !164, line: 3392, baseType: !1110, size: 1472)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !164, line: 3305, baseType: !1044, size: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !875, file: !164, line: 3393, baseType: !1114, size: 1792)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !1115)
!1115 = !{!1116, !1117, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !164, line: 3249, baseType: !1044, size: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1114, file: !164, line: 3251, baseType: !1118, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1120, line: 463, size: 1152, elements: !1121)
!1120 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1121 = !{!1122, !1125, !1155, !1156, !1159, !1276, !1277, !1278, !1279, !1280, !1281, !1305, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1119, file: !1120, line: 464, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1120, line: 464, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1119, file: !1120, line: 467, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !148, line: 374, size: 640, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1144, !1145, !1146, !1147, !1148, !1149, !1151, !1153, !1154}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1127, file: !148, line: 377, baseType: !726, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1127, file: !148, line: 378, baseType: !726, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1127, file: !148, line: 381, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !148, line: 282, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !148, line: 282, size: 128, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1134, file: !148, line: 282, baseType: !1137, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !148, line: 281, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !148, line: 281, size: 128, elements: !1139)
!1139 = !{!1140, !1141, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1138, file: !148, line: 281, baseType: !7, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1138, file: !148, line: 281, baseType: !7, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1138, file: !148, line: 281, baseType: !1143, size: 64, offset: 64)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 64, elements: !792)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1127, file: !148, line: 384, baseType: !719, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1127, file: !148, line: 387, baseType: !719, size: 32, offset: 224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1127, file: !148, line: 390, baseType: !719, size: 32, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1127, file: !148, line: 394, baseType: !1132, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1127, file: !148, line: 396, baseType: !147, size: 32, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1127, file: !148, line: 399, baseType: !1150, size: 64, offset: 416)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !828)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1127, file: !148, line: 402, baseType: !1152, size: 64, offset: 480)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !828)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1127, file: !148, line: 406, baseType: !719, size: 32, offset: 544)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1127, file: !148, line: 409, baseType: !719, size: 32, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1119, file: !1120, line: 470, baseType: !755, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1119, file: !1120, line: 473, baseType: !1157, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1120, line: 166, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1119, file: !1120, line: 476, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !135, line: 187, size: 256, elements: !1162)
!1162 = !{!1163, !1164, !1223, !1275}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !135, line: 189, baseType: !719, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1161, file: !135, line: 192, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !135, line: 87, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !135, line: 87, size: 128, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1167, file: !135, line: 87, baseType: !1170, size: 128)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !135, line: 85, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !135, line: 85, size: 128, elements: !1172)
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1171, file: !135, line: 85, baseType: !7, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1171, file: !135, line: 85, baseType: !7, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1171, file: !135, line: 85, baseType: !1176, size: 64, offset: 64)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 64, elements: !792)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !135, line: 84, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 100, size: 1216, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1213, !1221, !1222}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1179, file: !135, line: 102, baseType: !719, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1179, file: !135, line: 105, baseType: !7, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1179, file: !135, line: 108, baseType: !728, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1179, file: !135, line: 111, baseType: !728, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1179, file: !135, line: 114, baseType: !1186, size: 64, offset: 192)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !135, line: 41, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1186, file: !135, line: 42, baseType: !134, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1186, file: !135, line: 43, baseType: !7, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1179, file: !135, line: 117, baseType: !7, size: 32, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1179, file: !135, line: 120, baseType: !7, size: 32, offset: 288)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1179, file: !135, line: 123, baseType: !1165, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1179, file: !135, line: 126, baseType: !1178, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1179, file: !135, line: 129, baseType: !1178, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1179, file: !135, line: 132, baseType: !723, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1179, file: !135, line: 139, baseType: !873, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1179, file: !135, line: 143, baseType: !921, size: 128, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1179, file: !135, line: 146, baseType: !921, size: 128, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1179, file: !135, line: 148, baseType: !718, size: 8, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1179, file: !135, line: 149, baseType: !718, size: 8, offset: 904)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1179, file: !135, line: 153, baseType: !143, size: 32, offset: 928)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1179, file: !135, line: 156, baseType: !1203, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !135, line: 48, size: 320, elements: !1205)
!1205 = !{!1206, !1210, !1211, !1212}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1204, file: !135, line: 50, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !727, line: 58, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !727, line: 57, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1204, file: !135, line: 59, baseType: !921, size: 128, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1204, file: !135, line: 64, baseType: !718, size: 8, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1204, file: !135, line: 67, baseType: !1203, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1179, file: !135, line: 159, baseType: !1214, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !135, line: 72, size: 256, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1215, file: !135, line: 74, baseType: !745, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1215, file: !135, line: 77, baseType: !1214, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1215, file: !135, line: 78, baseType: !1214, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1215, file: !135, line: 81, baseType: !1214, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1179, file: !135, line: 162, baseType: !718, size: 8, offset: 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1179, file: !135, line: 166, baseType: !873, size: 64, offset: 1152)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1161, file: !135, line: 197, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1225, line: 144, baseType: !1226)
!1225 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1225, line: 100, size: 896, elements: !1228)
!1228 = !{!1229, !1237, !1242, !1247, !1249, !1252, !1253, !1254, !1255, !1256, !1261, !1263, !1264, !1269, !1274}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1227, file: !1225, line: 102, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1225, line: 52, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1225, line: 47, baseType: !7)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1227, file: !1225, line: 105, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1225, line: 59, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!719, !1235, !1235}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1227, file: !1225, line: 108, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1225, line: 63, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !723}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1227, file: !1225, line: 111, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1227, file: !1225, line: 114, baseType: !1250, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1251, line: 46, baseType: !827)
!1251 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1227, file: !1225, line: 117, baseType: !1250, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1227, file: !1225, line: 120, baseType: !1250, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1227, file: !1225, line: 124, baseType: !7, size: 32, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1227, file: !1225, line: 128, baseType: !7, size: 32, offset: 480)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1227, file: !1225, line: 131, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1225, line: 75, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!723, !1250, !1250}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1227, file: !1225, line: 132, baseType: !1262, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1225, line: 78, baseType: !1244)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1227, file: !1225, line: 135, baseType: !723, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1227, file: !1225, line: 136, baseType: !1265, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1225, line: 82, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!723, !723, !1250, !1250}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1227, file: !1225, line: 137, baseType: !1270, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1225, line: 83, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !723, !723}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1227, file: !1225, line: 141, baseType: !7, size: 32, offset: 832)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1161, file: !135, line: 200, baseType: !1178, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1119, file: !1120, line: 479, baseType: !1224, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1119, file: !1120, line: 484, baseType: !873, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1119, file: !1120, line: 488, baseType: !873, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1119, file: !1120, line: 493, baseType: !873, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1119, file: !1120, line: 496, baseType: !873, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1119, file: !1120, line: 501, baseType: !1282, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1284)
!1284 = !{!1285, !1288, !1289, !1290, !1291, !1293, !1294, !1299, !1300, !1301, !1302, !1303, !1304}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1283, file: !159, line: 2356, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1283, file: !159, line: 2357, baseType: !724, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1283, file: !159, line: 2358, baseType: !719, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1283, file: !159, line: 2359, baseType: !719, size: 32, offset: 160)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1283, file: !159, line: 2360, baseType: !1292, size: 128, offset: 192)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 128, elements: !853)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1283, file: !159, line: 2364, baseType: !719, size: 32, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1283, file: !159, line: 2367, baseType: !1295, size: 128, offset: 384)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1295, file: !159, line: 2351, baseType: !758, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1295, file: !159, line: 2352, baseType: !844, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1283, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1283, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1283, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1283, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1283, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1283, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1119, file: !1120, line: 504, baseType: !1306, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1120, line: 504, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1119, file: !1120, line: 507, baseType: !1224, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1119, file: !1120, line: 510, baseType: !719, size: 32, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1119, file: !1120, line: 513, baseType: !719, size: 32, offset: 864)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1119, file: !1120, line: 516, baseType: !993, size: 32, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1119, file: !1120, line: 519, baseType: !993, size: 32, offset: 928)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1119, file: !1120, line: 522, baseType: !7, size: 32, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1119, file: !1120, line: 523, baseType: !7, size: 32, offset: 992)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1119, file: !1120, line: 528, baseType: !724, size: 64, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1119, file: !1120, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1119, file: !1120, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1119, file: !1120, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1119, file: !1120, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1119, file: !1120, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1119, file: !1120, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1119, file: !1120, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1119, file: !1120, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1119, file: !1120, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1119, file: !1120, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1119, file: !1120, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1119, file: !1120, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1119, file: !1120, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1119, file: !1120, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1119, file: !1120, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1119, file: !1120, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1114, file: !164, line: 3254, baseType: !873, size: 64, offset: 1536)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1114, file: !164, line: 3257, baseType: !873, size: 64, offset: 1600)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1114, file: !164, line: 3258, baseType: !873, size: 64, offset: 1664)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1114, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1114, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1114, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1114, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1114, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1114, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1114, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1114, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1114, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1114, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1114, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1114, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1114, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1114, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1114, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1114, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1114, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1114, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !164, line: 3394, baseType: !1354, size: 1344)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1381, !1382, !1383, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1354, file: !164, line: 2280, baseType: !911, size: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1354, file: !164, line: 2281, baseType: !873, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1354, file: !164, line: 2282, baseType: !873, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1354, file: !164, line: 2283, baseType: !873, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1354, file: !164, line: 2284, baseType: !873, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1354, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1354, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1354, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1354, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1354, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1354, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1354, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1354, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1354, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1354, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1354, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1354, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1354, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1354, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1354, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1354, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1354, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1354, file: !164, line: 2306, baseType: !1379, size: 32, offset: 544)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1380, line: 31, baseType: !719)
!1380 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1354, file: !164, line: 2307, baseType: !873, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1354, file: !164, line: 2308, baseType: !873, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1354, file: !164, line: 2314, baseType: !1384, size: 64, offset: 704)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1384, file: !164, line: 2310, baseType: !719, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1384, file: !164, line: 2311, baseType: !724, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1384, file: !164, line: 2312, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1354, file: !164, line: 2315, baseType: !873, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1354, file: !164, line: 2316, baseType: !873, size: 64, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1354, file: !164, line: 2317, baseType: !873, size: 64, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1354, file: !164, line: 2318, baseType: !873, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1354, file: !164, line: 2319, baseType: !873, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1354, file: !164, line: 2320, baseType: !873, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1354, file: !164, line: 2321, baseType: !873, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1354, file: !164, line: 2322, baseType: !873, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1354, file: !164, line: 2324, baseType: !1400, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !164, line: 3395, baseType: !1403, size: 320)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1404)
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1403, file: !164, line: 1470, baseType: !911, size: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1403, file: !164, line: 1471, baseType: !873, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1403, file: !164, line: 1472, baseType: !873, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !875, file: !164, line: 3396, baseType: !1409, size: 320)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1409, file: !164, line: 1483, baseType: !911, size: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1409, file: !164, line: 1484, baseType: !719, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1409, file: !164, line: 1485, baseType: !1414, size: 64, offset: 256)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 64, elements: !792)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !875, file: !164, line: 3397, baseType: !1416, size: 384)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1416, file: !164, line: 1830, baseType: !911, size: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1416, file: !164, line: 1831, baseType: !993, size: 32, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1416, file: !164, line: 1832, baseType: !873, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1416, file: !164, line: 1835, baseType: !1414, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !875, file: !164, line: 3398, baseType: !1423, size: 704)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1432}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1423, file: !164, line: 1899, baseType: !911, size: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1423, file: !164, line: 1902, baseType: !873, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1423, file: !164, line: 1905, baseType: !1207, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1423, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1423, file: !164, line: 1911, baseType: !1430, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !164, line: 1876, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1423, file: !164, line: 1914, baseType: !1433, size: 256, offset: 448)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1434)
!1434 = !{!1435, !1437, !1438, !1443}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1433, file: !164, line: 1884, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1433, file: !164, line: 1885, baseType: !1436, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1433, file: !164, line: 1891, baseType: !1439, size: 64, offset: 128)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !164, line: 1891, size: 64, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1439, file: !164, line: 1891, baseType: !1207, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1439, file: !164, line: 1891, baseType: !873, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1433, file: !164, line: 1892, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !875, file: !164, line: 3399, baseType: !1446, size: 704)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1465, !1466, !1467, !1468, !1469}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !164, line: 2009, baseType: !911, size: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1446, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1446, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1446, file: !164, line: 2014, baseType: !993, size: 32, offset: 224)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1446, file: !164, line: 2016, baseType: !873, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1446, file: !164, line: 2017, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1456, file: !164, line: 183, baseType: !1459, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1460, file: !164, line: 182, baseType: !7, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1460, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1460, file: !164, line: 182, baseType: !1414, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1446, file: !164, line: 2019, baseType: !873, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1446, file: !164, line: 2020, baseType: !873, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1446, file: !164, line: 2021, baseType: !873, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1446, file: !164, line: 2022, baseType: !873, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1446, file: !164, line: 2023, baseType: !873, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !875, file: !164, line: 3400, baseType: !1471, size: 832)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1471, file: !164, line: 2431, baseType: !911, size: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1471, file: !164, line: 2433, baseType: !873, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1471, file: !164, line: 2434, baseType: !873, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1471, file: !164, line: 2435, baseType: !873, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1471, file: !164, line: 2436, baseType: !873, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1471, file: !164, line: 2437, baseType: !1454, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1471, file: !164, line: 2438, baseType: !873, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1471, file: !164, line: 2440, baseType: !873, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1471, file: !164, line: 2441, baseType: !873, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1471, file: !164, line: 2443, baseType: !1483, size: 128, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1484, file: !164, line: 182, baseType: !1459, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !875, file: !164, line: 3401, baseType: !1488, size: 320)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1489)
!1489 = !{!1490, !1491, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1488, file: !164, line: 3329, baseType: !911, size: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1488, file: !164, line: 3330, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1493, file: !164, line: 3322, baseType: !1492, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1493, file: !164, line: 3323, baseType: !1492, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1493, file: !164, line: 3324, baseType: !873, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1488, file: !164, line: 3331, baseType: !1492, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !875, file: !164, line: 3402, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !164, line: 1541, baseType: !911, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1500, file: !164, line: 1542, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1506, file: !164, line: 1538, baseType: !1509, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1511)
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1510, file: !164, line: 1537, baseType: !7, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1510, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1510, file: !164, line: 1537, baseType: !1515, size: 128, offset: 64)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1516, size: 128, elements: !792)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1517, file: !164, line: 1533, baseType: !873, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1517, file: !164, line: 1534, baseType: !873, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !875, file: !164, line: 3403, baseType: !1522, size: 512)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1533, !1534, !1535}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1522, file: !164, line: 1939, baseType: !911, size: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1522, file: !164, line: 1940, baseType: !993, size: 32, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1522, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1522, file: !164, line: 1946, baseType: !1528, size: 32, offset: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1528, file: !164, line: 1943, baseType: !182, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1528, file: !164, line: 1944, baseType: !189, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1528, file: !164, line: 1945, baseType: !196, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1522, file: !164, line: 1950, baseType: !754, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1522, file: !164, line: 1951, baseType: !754, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1522, file: !164, line: 1953, baseType: !1414, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !875, file: !164, line: 3404, baseType: !1537, size: 1664)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1537, file: !164, line: 3338, baseType: !911, size: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1537, file: !164, line: 3341, baseType: !1541, size: 1472, offset: 192)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1542, line: 410, size: 1472, elements: !1543)
!1542 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1541, file: !1542, line: 412, baseType: !719, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1541, file: !1542, line: 413, baseType: !719, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1541, file: !1542, line: 414, baseType: !719, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1541, file: !1542, line: 415, baseType: !719, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1541, file: !1542, line: 416, baseType: !719, size: 32, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1541, file: !1542, line: 417, baseType: !719, size: 32, offset: 160)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1541, file: !1542, line: 418, baseType: !718, size: 8, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1541, file: !1542, line: 419, baseType: !718, size: 8, offset: 200)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1541, file: !1542, line: 420, baseType: !1553, size: 8, offset: 208)
!1553 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1541, file: !1542, line: 421, baseType: !1553, size: 8, offset: 216)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1541, file: !1542, line: 422, baseType: !1553, size: 8, offset: 224)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1541, file: !1542, line: 423, baseType: !1553, size: 8, offset: 232)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1541, file: !1542, line: 424, baseType: !1553, size: 8, offset: 240)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1541, file: !1542, line: 425, baseType: !1553, size: 8, offset: 248)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1541, file: !1542, line: 426, baseType: !1553, size: 8, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1541, file: !1542, line: 427, baseType: !1553, size: 8, offset: 264)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1541, file: !1542, line: 428, baseType: !1553, size: 8, offset: 272)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1541, file: !1542, line: 429, baseType: !1553, size: 8, offset: 280)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1541, file: !1542, line: 430, baseType: !1553, size: 8, offset: 288)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1541, file: !1542, line: 431, baseType: !1553, size: 8, offset: 296)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1541, file: !1542, line: 432, baseType: !1553, size: 8, offset: 304)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1541, file: !1542, line: 433, baseType: !1553, size: 8, offset: 312)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1541, file: !1542, line: 434, baseType: !1553, size: 8, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1541, file: !1542, line: 435, baseType: !1553, size: 8, offset: 328)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1541, file: !1542, line: 436, baseType: !1553, size: 8, offset: 336)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1541, file: !1542, line: 437, baseType: !1553, size: 8, offset: 344)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1541, file: !1542, line: 438, baseType: !1553, size: 8, offset: 352)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1541, file: !1542, line: 439, baseType: !1553, size: 8, offset: 360)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1541, file: !1542, line: 440, baseType: !1553, size: 8, offset: 368)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1541, file: !1542, line: 441, baseType: !1553, size: 8, offset: 376)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1541, file: !1542, line: 442, baseType: !1553, size: 8, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1541, file: !1542, line: 443, baseType: !1553, size: 8, offset: 392)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1541, file: !1542, line: 444, baseType: !1553, size: 8, offset: 400)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1541, file: !1542, line: 445, baseType: !1553, size: 8, offset: 408)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1541, file: !1542, line: 446, baseType: !1553, size: 8, offset: 416)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1541, file: !1542, line: 447, baseType: !1553, size: 8, offset: 424)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1541, file: !1542, line: 448, baseType: !1553, size: 8, offset: 432)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1541, file: !1542, line: 449, baseType: !1553, size: 8, offset: 440)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1541, file: !1542, line: 450, baseType: !1553, size: 8, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1541, file: !1542, line: 451, baseType: !1553, size: 8, offset: 456)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1541, file: !1542, line: 452, baseType: !1553, size: 8, offset: 464)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1541, file: !1542, line: 453, baseType: !1553, size: 8, offset: 472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1541, file: !1542, line: 454, baseType: !1553, size: 8, offset: 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1541, file: !1542, line: 455, baseType: !1553, size: 8, offset: 488)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1541, file: !1542, line: 456, baseType: !1553, size: 8, offset: 496)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1541, file: !1542, line: 457, baseType: !1553, size: 8, offset: 504)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1541, file: !1542, line: 458, baseType: !1553, size: 8, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1541, file: !1542, line: 459, baseType: !1553, size: 8, offset: 520)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1541, file: !1542, line: 460, baseType: !1553, size: 8, offset: 528)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1541, file: !1542, line: 461, baseType: !1553, size: 8, offset: 536)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1541, file: !1542, line: 462, baseType: !1553, size: 8, offset: 544)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1541, file: !1542, line: 463, baseType: !1553, size: 8, offset: 552)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1541, file: !1542, line: 464, baseType: !1553, size: 8, offset: 560)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1541, file: !1542, line: 465, baseType: !1553, size: 8, offset: 568)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1541, file: !1542, line: 466, baseType: !1553, size: 8, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1541, file: !1542, line: 467, baseType: !1553, size: 8, offset: 584)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1541, file: !1542, line: 468, baseType: !1553, size: 8, offset: 592)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1541, file: !1542, line: 469, baseType: !1553, size: 8, offset: 600)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1541, file: !1542, line: 470, baseType: !1553, size: 8, offset: 608)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1541, file: !1542, line: 471, baseType: !1553, size: 8, offset: 616)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1541, file: !1542, line: 472, baseType: !1553, size: 8, offset: 624)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1541, file: !1542, line: 473, baseType: !1553, size: 8, offset: 632)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1541, file: !1542, line: 474, baseType: !1553, size: 8, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1541, file: !1542, line: 475, baseType: !1553, size: 8, offset: 648)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1541, file: !1542, line: 476, baseType: !1553, size: 8, offset: 656)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1541, file: !1542, line: 477, baseType: !1553, size: 8, offset: 664)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1541, file: !1542, line: 478, baseType: !1553, size: 8, offset: 672)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1541, file: !1542, line: 479, baseType: !1553, size: 8, offset: 680)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1541, file: !1542, line: 480, baseType: !1553, size: 8, offset: 688)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1541, file: !1542, line: 481, baseType: !1553, size: 8, offset: 696)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1541, file: !1542, line: 482, baseType: !1553, size: 8, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1541, file: !1542, line: 483, baseType: !1553, size: 8, offset: 712)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1541, file: !1542, line: 484, baseType: !1553, size: 8, offset: 720)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1541, file: !1542, line: 485, baseType: !1553, size: 8, offset: 728)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1541, file: !1542, line: 486, baseType: !1553, size: 8, offset: 736)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1541, file: !1542, line: 487, baseType: !1553, size: 8, offset: 744)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1541, file: !1542, line: 488, baseType: !1553, size: 8, offset: 752)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1541, file: !1542, line: 489, baseType: !1553, size: 8, offset: 760)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1541, file: !1542, line: 490, baseType: !1553, size: 8, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1541, file: !1542, line: 491, baseType: !1553, size: 8, offset: 776)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1541, file: !1542, line: 492, baseType: !1553, size: 8, offset: 784)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1541, file: !1542, line: 493, baseType: !1553, size: 8, offset: 792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1541, file: !1542, line: 494, baseType: !1553, size: 8, offset: 800)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1541, file: !1542, line: 495, baseType: !1553, size: 8, offset: 808)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1541, file: !1542, line: 496, baseType: !1553, size: 8, offset: 816)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1541, file: !1542, line: 497, baseType: !1553, size: 8, offset: 824)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1541, file: !1542, line: 498, baseType: !1553, size: 8, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1541, file: !1542, line: 499, baseType: !1553, size: 8, offset: 840)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1541, file: !1542, line: 500, baseType: !1553, size: 8, offset: 848)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1541, file: !1542, line: 501, baseType: !1553, size: 8, offset: 856)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1541, file: !1542, line: 502, baseType: !1553, size: 8, offset: 864)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1541, file: !1542, line: 503, baseType: !1553, size: 8, offset: 872)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1541, file: !1542, line: 504, baseType: !1553, size: 8, offset: 880)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1541, file: !1542, line: 505, baseType: !1553, size: 8, offset: 888)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1541, file: !1542, line: 506, baseType: !1553, size: 8, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1541, file: !1542, line: 507, baseType: !1553, size: 8, offset: 904)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1541, file: !1542, line: 508, baseType: !1553, size: 8, offset: 912)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1541, file: !1542, line: 509, baseType: !1553, size: 8, offset: 920)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1541, file: !1542, line: 510, baseType: !1553, size: 8, offset: 928)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1541, file: !1542, line: 511, baseType: !1553, size: 8, offset: 936)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1541, file: !1542, line: 512, baseType: !1553, size: 8, offset: 944)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1541, file: !1542, line: 513, baseType: !1553, size: 8, offset: 952)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1541, file: !1542, line: 514, baseType: !1553, size: 8, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1541, file: !1542, line: 515, baseType: !1553, size: 8, offset: 968)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1541, file: !1542, line: 516, baseType: !1553, size: 8, offset: 976)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1541, file: !1542, line: 517, baseType: !1553, size: 8, offset: 984)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1541, file: !1542, line: 518, baseType: !1553, size: 8, offset: 992)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1541, file: !1542, line: 519, baseType: !1553, size: 8, offset: 1000)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1541, file: !1542, line: 520, baseType: !1553, size: 8, offset: 1008)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1541, file: !1542, line: 521, baseType: !1553, size: 8, offset: 1016)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1541, file: !1542, line: 522, baseType: !1553, size: 8, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1541, file: !1542, line: 523, baseType: !1553, size: 8, offset: 1032)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1541, file: !1542, line: 524, baseType: !1553, size: 8, offset: 1040)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1541, file: !1542, line: 525, baseType: !1553, size: 8, offset: 1048)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1541, file: !1542, line: 526, baseType: !1553, size: 8, offset: 1056)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1541, file: !1542, line: 527, baseType: !1553, size: 8, offset: 1064)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1541, file: !1542, line: 528, baseType: !1553, size: 8, offset: 1072)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1541, file: !1542, line: 529, baseType: !1553, size: 8, offset: 1080)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1541, file: !1542, line: 530, baseType: !1553, size: 8, offset: 1088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1541, file: !1542, line: 531, baseType: !1553, size: 8, offset: 1096)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1541, file: !1542, line: 532, baseType: !1553, size: 8, offset: 1104)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1541, file: !1542, line: 533, baseType: !1553, size: 8, offset: 1112)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1541, file: !1542, line: 534, baseType: !1553, size: 8, offset: 1120)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1541, file: !1542, line: 535, baseType: !1553, size: 8, offset: 1128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1541, file: !1542, line: 536, baseType: !1553, size: 8, offset: 1136)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1541, file: !1542, line: 537, baseType: !1553, size: 8, offset: 1144)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1541, file: !1542, line: 538, baseType: !1553, size: 8, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1541, file: !1542, line: 539, baseType: !1553, size: 8, offset: 1160)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1541, file: !1542, line: 540, baseType: !1553, size: 8, offset: 1168)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1541, file: !1542, line: 541, baseType: !1553, size: 8, offset: 1176)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1541, file: !1542, line: 542, baseType: !1553, size: 8, offset: 1184)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1541, file: !1542, line: 543, baseType: !1553, size: 8, offset: 1192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1541, file: !1542, line: 544, baseType: !1553, size: 8, offset: 1200)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1541, file: !1542, line: 545, baseType: !1553, size: 8, offset: 1208)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1541, file: !1542, line: 546, baseType: !1553, size: 8, offset: 1216)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1541, file: !1542, line: 547, baseType: !1553, size: 8, offset: 1224)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1541, file: !1542, line: 548, baseType: !1553, size: 8, offset: 1232)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1541, file: !1542, line: 549, baseType: !1553, size: 8, offset: 1240)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1541, file: !1542, line: 550, baseType: !1553, size: 8, offset: 1248)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1541, file: !1542, line: 551, baseType: !1553, size: 8, offset: 1256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1541, file: !1542, line: 552, baseType: !1553, size: 8, offset: 1264)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1541, file: !1542, line: 553, baseType: !1553, size: 8, offset: 1272)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1541, file: !1542, line: 554, baseType: !1553, size: 8, offset: 1280)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1541, file: !1542, line: 555, baseType: !1553, size: 8, offset: 1288)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1541, file: !1542, line: 556, baseType: !1553, size: 8, offset: 1296)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1541, file: !1542, line: 557, baseType: !1553, size: 8, offset: 1304)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1541, file: !1542, line: 558, baseType: !1553, size: 8, offset: 1312)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1541, file: !1542, line: 559, baseType: !1553, size: 8, offset: 1320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1541, file: !1542, line: 560, baseType: !1553, size: 8, offset: 1328)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1541, file: !1542, line: 561, baseType: !1553, size: 8, offset: 1336)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1541, file: !1542, line: 562, baseType: !1553, size: 8, offset: 1344)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1541, file: !1542, line: 563, baseType: !1553, size: 8, offset: 1352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1541, file: !1542, line: 564, baseType: !1553, size: 8, offset: 1360)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1541, file: !1542, line: 565, baseType: !1553, size: 8, offset: 1368)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1541, file: !1542, line: 566, baseType: !1553, size: 8, offset: 1376)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1541, file: !1542, line: 567, baseType: !1553, size: 8, offset: 1384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1541, file: !1542, line: 568, baseType: !1553, size: 8, offset: 1392)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1541, file: !1542, line: 569, baseType: !1553, size: 8, offset: 1400)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1541, file: !1542, line: 570, baseType: !1553, size: 8, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1541, file: !1542, line: 571, baseType: !1553, size: 8, offset: 1416)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1541, file: !1542, line: 572, baseType: !1553, size: 8, offset: 1424)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1541, file: !1542, line: 573, baseType: !1553, size: 8, offset: 1432)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1541, file: !1542, line: 574, baseType: !1553, size: 8, offset: 1440)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !875, file: !164, line: 3405, baseType: !1709, size: 384)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1709, file: !164, line: 3353, baseType: !911, size: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1709, file: !164, line: 3356, baseType: !1713, size: 192, offset: 192)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1542, line: 578, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1713, file: !1542, line: 580, baseType: !719, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1713, file: !1542, line: 581, baseType: !719, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1713, file: !1542, line: 582, baseType: !719, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1713, file: !1542, line: 583, baseType: !719, size: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1713, file: !1542, line: 584, baseType: !718, size: 8, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1713, file: !1542, line: 585, baseType: !718, size: 8, offset: 136)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1713, file: !1542, line: 586, baseType: !718, size: 8, offset: 144)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1713, file: !1542, line: 587, baseType: !718, size: 8, offset: 152)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1713, file: !1542, line: 588, baseType: !718, size: 8, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1713, file: !1542, line: 589, baseType: !718, size: 8, offset: 168)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1713, file: !1542, line: 590, baseType: !718, size: 8, offset: 176)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !778, file: !574, line: 178, baseType: !728, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !778, file: !574, line: 179, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !574, line: 150, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !574, line: 142, size: 320, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1730, file: !574, line: 144, baseType: !873, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1730, file: !574, line: 145, baseType: !758, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1730, file: !574, line: 146, baseType: !758, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1730, file: !574, line: 147, baseType: !1379, size: 32, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1730, file: !574, line: 148, baseType: !7, size: 32, offset: 224)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1730, file: !574, line: 149, baseType: !718, size: 8, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !778, file: !574, line: 180, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !574, line: 162, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !574, line: 159, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1741, file: !574, line: 160, baseType: !873, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1741, file: !574, line: 161, baseType: !844, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !778, file: !574, line: 181, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !574, line: 181, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !773, file: !574, line: 317, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 64, elements: !792)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !773, file: !574, line: 318, baseType: !1751, size: 320)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !574, line: 188, size: 320, elements: !1752)
!1752 = !{!1753, !1755, !1810}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1751, file: !574, line: 190, baseType: !1754, size: 192)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 192, elements: !944)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1751, file: !574, line: 193, baseType: !1756, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !574, line: 206, size: 320, elements: !1758)
!1758 = !{!1759, !1795, !1796, !1797, !1809}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1757, file: !574, line: 208, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !727, line: 62, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1763, line: 538, size: 256, elements: !1764)
!1763 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1764 = !{!1765, !1769, !1775, !1786}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1762, file: !1763, line: 539, baseType: !1766, size: 32)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1763, line: 482, size: 32, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !1763, line: 484, baseType: !7, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1762, file: !1763, line: 540, baseType: !1770, size: 192)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1763, line: 488, size: 192, elements: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1770, file: !1763, line: 489, baseType: !1766, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1770, file: !1763, line: 492, baseType: !724, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1770, file: !1763, line: 496, baseType: !873, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1762, file: !1763, line: 541, baseType: !1776, size: 256)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1763, line: 504, size: 256, elements: !1777)
!1777 = !{!1778, !1779, !1784, !1785}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1776, file: !1763, line: 505, baseType: !1766, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1776, file: !1763, line: 509, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1763, line: 501, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1235}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1776, file: !1763, line: 510, baseType: !1235, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1776, file: !1763, line: 513, baseType: !1760, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1762, file: !1763, line: 542, baseType: !1787, size: 128)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1763, line: 530, size: 128, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1787, file: !1763, line: 531, baseType: !1766, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1787, file: !1763, line: 534, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1763, line: 525, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!718, !873, !724, !827, !827}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1757, file: !574, line: 211, baseType: !7, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1757, file: !574, line: 214, baseType: !844, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1757, file: !574, line: 224, baseType: !1798, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !574, line: 202, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !574, line: 202, size: 128, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1800, file: !574, line: 202, baseType: !1803, size: 128)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !574, line: 200, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !574, line: 200, size: 128, elements: !1805)
!1805 = !{!1806, !1807, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1804, file: !574, line: 200, baseType: !7, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1804, file: !574, line: 200, baseType: !7, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1804, file: !574, line: 200, baseType: !791, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1757, file: !574, line: 234, baseType: !1798, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1751, file: !574, line: 197, baseType: !844, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !773, file: !574, line: 319, baseType: !933, size: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !773, file: !574, line: 320, baseType: !952, size: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !746, file: !148, line: 134, baseType: !723, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !746, file: !148, line: 137, baseType: !873, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !746, file: !148, line: 138, baseType: !993, size: 32, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !746, file: !148, line: 142, baseType: !7, size: 32, offset: 352)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !148, line: 144, baseType: !719, size: 32, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !746, file: !148, line: 145, baseType: !719, size: 32, offset: 416)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !746, file: !148, line: 146, baseType: !1820, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !148, line: 119, baseType: !844)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !729, file: !148, line: 220, baseType: !732, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !729, file: !148, line: 223, baseType: !723, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !729, file: !148, line: 226, baseType: !1178, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !729, file: !148, line: 229, baseType: !1825, size: 128, offset: 256)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 128, elements: !828)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !148, line: 229, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !729, file: !148, line: 232, baseType: !728, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !729, file: !148, line: 233, baseType: !728, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !729, file: !148, line: 238, baseType: !1831, size: 64, offset: 512)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !148, line: 235, size: 64, elements: !1832)
!1832 = !{!1833, !1839}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1831, file: !148, line: 236, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !148, line: 273, size: 128, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1835, file: !148, line: 275, baseType: !754, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1835, file: !148, line: 278, baseType: !754, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1831, file: !148, line: 237, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !148, line: 259, size: 320, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1841, file: !148, line: 261, baseType: !758, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1841, file: !148, line: 262, baseType: !758, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1841, file: !148, line: 266, baseType: !758, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1841, file: !148, line: 267, baseType: !758, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1841, file: !148, line: 270, baseType: !719, size: 32, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !729, file: !148, line: 241, baseType: !1820, size: 64, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !729, file: !148, line: 244, baseType: !719, size: 32, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !729, file: !148, line: 247, baseType: !719, size: 32, offset: 672)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !729, file: !148, line: 250, baseType: !719, size: 32, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !729, file: !148, line: 253, baseType: !719, size: 32, offset: 736)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !148, line: 256, baseType: !719, size: 32, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1856, line: 32, baseType: !1857)
!1856 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1856, line: 32, size: 96, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1857, file: !1856, line: 32, baseType: !1860, size: 96)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1856, line: 31, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1856, line: 31, size: 96, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1861, file: !1856, line: 31, baseType: !7, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1861, file: !1856, line: 31, baseType: !7, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1861, file: !1856, line: 31, baseType: !1866, size: 32, offset: 64)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 32, elements: !792)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_location_t_heap", file: !3, line: 233, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_location_t_heap", file: !3, line: 233, size: 96, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1869, file: !3, line: 233, baseType: !1872, size: 96)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_location_t_base", file: !3, line: 232, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_location_t_base", file: !3, line: 232, size: 96, elements: !1874)
!1874 = !{!1875, !1876, !1877}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1873, file: !3, line: 232, baseType: !7, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1873, file: !3, line: 232, baseType: !7, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1873, file: !3, line: 232, baseType: !1878, size: 32, offset: 64)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 32, elements: !792)
!1879 = !{!1880, !1908, !1910, !1924, !1926, !1928, !1930, !1932, !1934, !1936, !0, !1938, !1940, !1942, !1944, !1946}
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "pass_into_cfg_layout_mode", scope: !2, file: !3, line: 366, type: !1882, isLocal: false, isDefinition: true)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !391, line: 162, size: 640, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1882, file: !391, line: 164, baseType: !1885, size: 640)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !391, line: 114, size: 640, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1893, !1897, !1899, !1900, !1901, !1903, !1904, !1905, !1906, !1907}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1885, file: !391, line: 117, baseType: !390, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !391, line: 121, baseType: !724, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1885, file: !391, line: 125, baseType: !1890, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!718}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1885, file: !391, line: 130, baseType: !1894, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!7}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1885, file: !391, line: 133, baseType: !1898, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1885, file: !391, line: 136, baseType: !1898, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1885, file: !391, line: 139, baseType: !719, size: 32, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1885, file: !391, line: 143, baseType: !1902, size: 32, offset: 416)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !398, line: 80, baseType: !397)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1885, file: !391, line: 146, baseType: !7, size: 32, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1885, file: !391, line: 147, baseType: !7, size: 32, offset: 480)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1885, file: !391, line: 148, baseType: !7, size: 32, offset: 512)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1885, file: !391, line: 151, baseType: !7, size: 32, offset: 544)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1885, file: !391, line: 152, baseType: !7, size: 32, offset: 576)
!1908 = !DIGlobalVariableExpression(var: !1909, expr: !DIExpression())
!1909 = distinct !DIGlobalVariable(name: "pass_outof_cfg_layout_mode", scope: !2, file: !3, line: 385, type: !1882, isLocal: false, isDefinition: true)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_cfglayout_h", scope: !2, file: !1912, line: 24, type: !1913, isLocal: false, isDefinition: true)
!1912 = !DIFile(filename: "./gt-cfglayout.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1914, size: 640, elements: !828)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1916, line: 69, size: 320, elements: !1917)
!1916 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1917 = !{!1918, !1919, !1920, !1921, !1923}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1915, file: !1916, line: 70, baseType: !723, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1915, file: !1916, line: 71, baseType: !1250, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1915, file: !1916, line: 72, baseType: !1250, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1915, file: !1916, line: 73, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1916, line: 65, baseType: !1244)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1915, file: !1916, line: 74, baseType: !1922, size: 64, offset: 256)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(name: "cfg_layout_function_footer", scope: !2, file: !3, line: 44, type: !758, isLocal: false, isDefinition: true)
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(name: "cfg_layout_function_header", scope: !2, file: !3, line: 45, type: !758, isLocal: false, isDefinition: true)
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(name: "block_locators_locs", scope: !2, file: !3, line: 229, type: !1854, isLocal: true, isDefinition: true)
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(name: "block_locators_blocks", scope: !2, file: !3, line: 230, type: !1454, isLocal: true, isDefinition: true)
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(name: "locations_locators_locs", scope: !2, file: !3, line: 231, type: !1854, isLocal: true, isDefinition: true)
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(name: "locations_locators_vals", scope: !2, file: !3, line: 234, type: !1867, isLocal: true, isDefinition: true)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(name: "prologue_locator", scope: !2, file: !3, line: 235, type: !719, isLocal: false, isDefinition: true)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(name: "curr_location", scope: !2, file: !3, line: 241, type: !993, isLocal: true, isDefinition: true)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(name: "last_location", scope: !2, file: !3, line: 241, type: !993, isLocal: true, isDefinition: true)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "curr_block", scope: !2, file: !3, line: 242, type: !873, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "last_block", scope: !2, file: !3, line: 242, type: !873, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "curr_rtl_loc", scope: !2, file: !3, line: 243, type: !719, isLocal: true, isDefinition: true)
!1948 = !{i32 2, !"Dwarf Version", i32 4}
!1949 = !{i32 2, !"Debug Info Version", i32 3}
!1950 = !{i32 1, !"wchar_size", i32 4}
!1951 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1952 = distinct !DISubprogram(name: "vprintf", scope: !1953, file: !1953, line: 39, type: !1954, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1953 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!719, !1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !724)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1958, file: !3, baseType: !7, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1958, file: !3, baseType: !7, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1958, file: !3, baseType: !723, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1958, file: !3, baseType: !723, size: 64, offset: 128)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1952, file: !1953, line: 39, type: !1956)
!1966 = !DILocalVariable(name: "__arg", arg: 2, scope: !1952, file: !1953, line: 39, type: !1957)
!1967 = !DILocation(line: 0, scope: !1952)
!1968 = !DILocation(line: 41, column: 20, scope: !1952)
!1969 = !DILocation(line: 41, column: 10, scope: !1952)
!1970 = !DILocation(line: 41, column: 3, scope: !1952)
!1971 = distinct !DISubprogram(name: "getchar", scope: !1953, file: !1953, line: 47, type: !1972, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!719}
!1974 = !{}
!1975 = !DILocation(line: 49, column: 16, scope: !1971)
!1976 = !DILocation(line: 49, column: 10, scope: !1971)
!1977 = !DILocation(line: 49, column: 3, scope: !1971)
!1978 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1953, file: !1953, line: 56, type: !1979, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!719, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1983, line: 7, baseType: !1984)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1985, line: 49, size: 1728, elements: !1986)
!1985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2002, !2004, !2005, !2006, !2009, !2011, !2012, !2013, !2016, !2018, !2021, !2024, !2025, !2026, !2027, !2028}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1984, file: !1985, line: 51, baseType: !719, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1984, file: !1985, line: 54, baseType: !721, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1984, file: !1985, line: 55, baseType: !721, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1984, file: !1985, line: 56, baseType: !721, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1984, file: !1985, line: 57, baseType: !721, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1984, file: !1985, line: 58, baseType: !721, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1984, file: !1985, line: 59, baseType: !721, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1984, file: !1985, line: 60, baseType: !721, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1984, file: !1985, line: 61, baseType: !721, size: 64, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1984, file: !1985, line: 64, baseType: !721, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1984, file: !1985, line: 65, baseType: !721, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1984, file: !1985, line: 66, baseType: !721, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1984, file: !1985, line: 68, baseType: !2000, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1985, line: 36, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1984, file: !1985, line: 70, baseType: !2003, size: 64, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1984, file: !1985, line: 72, baseType: !719, size: 32, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1984, file: !1985, line: 73, baseType: !719, size: 32, offset: 928)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1984, file: !1985, line: 74, baseType: !2007, size: 64, offset: 960)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2008, line: 152, baseType: !844)
!2008 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1984, file: !1985, line: 77, baseType: !2010, size: 16, offset: 1024)
!2010 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1984, file: !1985, line: 78, baseType: !1553, size: 8, offset: 1040)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1984, file: !1985, line: 79, baseType: !968, size: 8, offset: 1048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1984, file: !1985, line: 81, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1985, line: 43, baseType: null)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1984, file: !1985, line: 89, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2008, line: 153, baseType: !844)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1984, file: !1985, line: 91, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1985, line: 37, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1984, file: !1985, line: 92, baseType: !2022, size: 64, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1985, line: 38, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1984, file: !1985, line: 93, baseType: !2003, size: 64, offset: 1344)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1984, file: !1985, line: 94, baseType: !723, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1984, file: !1985, line: 95, baseType: !1250, size: 64, offset: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1984, file: !1985, line: 96, baseType: !719, size: 32, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1984, file: !1985, line: 98, baseType: !2029, size: 160, offset: 1568)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 160, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 20)
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "__fp", arg: 1, scope: !1978, file: !1953, line: 56, type: !1981)
!2034 = !DILocation(line: 0, scope: !1978)
!2035 = !DILocation(line: 58, column: 10, scope: !1978)
!2036 = !DILocation(line: 58, column: 3, scope: !1978)
!2037 = distinct !DISubprogram(name: "getc_unlocked", scope: !1953, file: !1953, line: 66, type: !1979, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2038 = !{!2039}
!2039 = !DILocalVariable(name: "__fp", arg: 1, scope: !2037, file: !1953, line: 66, type: !1981)
!2040 = !DILocation(line: 0, scope: !2037)
!2041 = !DILocation(line: 68, column: 10, scope: !2037)
!2042 = !DILocation(line: 68, column: 3, scope: !2037)
!2043 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1953, file: !1953, line: 73, type: !1972, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2044 = !DILocation(line: 75, column: 10, scope: !2043)
!2045 = !DILocation(line: 75, column: 3, scope: !2043)
!2046 = distinct !DISubprogram(name: "putchar", scope: !1953, file: !1953, line: 82, type: !2047, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!719, !719}
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "__c", arg: 1, scope: !2046, file: !1953, line: 82, type: !719)
!2051 = !DILocation(line: 0, scope: !2046)
!2052 = !DILocation(line: 84, column: 21, scope: !2046)
!2053 = !DILocation(line: 84, column: 10, scope: !2046)
!2054 = !DILocation(line: 84, column: 3, scope: !2046)
!2055 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1953, file: !1953, line: 91, type: !2056, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!719, !719, !1981}
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "__c", arg: 1, scope: !2055, file: !1953, line: 91, type: !719)
!2060 = !DILocalVariable(name: "__stream", arg: 2, scope: !2055, file: !1953, line: 91, type: !1981)
!2061 = !DILocation(line: 0, scope: !2055)
!2062 = !DILocation(line: 93, column: 10, scope: !2055)
!2063 = !DILocation(line: 93, column: 3, scope: !2055)
!2064 = distinct !DISubprogram(name: "putc_unlocked", scope: !1953, file: !1953, line: 101, type: !2056, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "__c", arg: 1, scope: !2064, file: !1953, line: 101, type: !719)
!2067 = !DILocalVariable(name: "__stream", arg: 2, scope: !2064, file: !1953, line: 101, type: !1981)
!2068 = !DILocation(line: 0, scope: !2064)
!2069 = !DILocation(line: 103, column: 10, scope: !2064)
!2070 = !DILocation(line: 103, column: 3, scope: !2064)
!2071 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1953, file: !1953, line: 108, type: !2047, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__c", arg: 1, scope: !2071, file: !1953, line: 108, type: !719)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocation(line: 110, column: 10, scope: !2071)
!2076 = !DILocation(line: 110, column: 3, scope: !2071)
!2077 = distinct !DISubprogram(name: "getline", scope: !1953, file: !1953, line: 118, type: !2078, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2080, !720, !2081, !1981}
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2008, line: 193, baseType: !844)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!2082 = !{!2083, !2084, !2085}
!2083 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2077, file: !1953, line: 118, type: !720)
!2084 = !DILocalVariable(name: "__n", arg: 2, scope: !2077, file: !1953, line: 118, type: !2081)
!2085 = !DILocalVariable(name: "__stream", arg: 3, scope: !2077, file: !1953, line: 118, type: !1981)
!2086 = !DILocation(line: 0, scope: !2077)
!2087 = !DILocation(line: 120, column: 10, scope: !2077)
!2088 = !DILocation(line: 120, column: 3, scope: !2077)
!2089 = distinct !DISubprogram(name: "feof_unlocked", scope: !1953, file: !1953, line: 128, type: !1979, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "__stream", arg: 1, scope: !2089, file: !1953, line: 128, type: !1981)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 130, column: 10, scope: !2089)
!2094 = !DILocation(line: 130, column: 3, scope: !2089)
!2095 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1953, file: !1953, line: 135, type: !1979, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__stream", arg: 1, scope: !2095, file: !1953, line: 135, type: !1981)
!2098 = !DILocation(line: 0, scope: !2095)
!2099 = !DILocation(line: 137, column: 10, scope: !2095)
!2100 = !DILocation(line: 137, column: 3, scope: !2095)
!2101 = distinct !DISubprogram(name: "tolower", scope: !2102, file: !2102, line: 207, type: !2047, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2102 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2103 = !{!2104}
!2104 = !DILocalVariable(name: "__c", arg: 1, scope: !2101, file: !2102, line: 207, type: !719)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocation(line: 209, column: 22, scope: !2101)
!2107 = !DILocation(line: 209, column: 39, scope: !2101)
!2108 = !DILocation(line: 209, column: 38, scope: !2101)
!2109 = !DILocation(line: 209, column: 37, scope: !2101)
!2110 = !DILocation(line: 209, column: 10, scope: !2101)
!2111 = !DILocation(line: 209, column: 3, scope: !2101)
!2112 = distinct !DISubprogram(name: "toupper", scope: !2102, file: !2102, line: 213, type: !2047, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "__c", arg: 1, scope: !2112, file: !2102, line: 213, type: !719)
!2115 = !DILocation(line: 0, scope: !2112)
!2116 = !DILocation(line: 215, column: 22, scope: !2112)
!2117 = !DILocation(line: 215, column: 39, scope: !2112)
!2118 = !DILocation(line: 215, column: 38, scope: !2112)
!2119 = !DILocation(line: 215, column: 37, scope: !2112)
!2120 = !DILocation(line: 215, column: 10, scope: !2112)
!2121 = !DILocation(line: 215, column: 3, scope: !2112)
!2122 = distinct !DISubprogram(name: "atoi", scope: !2123, file: !2123, line: 361, type: !2124, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2123 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!719, !724}
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2122, file: !2123, line: 361, type: !724)
!2128 = !DILocation(line: 0, scope: !2122)
!2129 = !DILocation(line: 363, column: 16, scope: !2122)
!2130 = !DILocation(line: 363, column: 10, scope: !2122)
!2131 = !DILocation(line: 363, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "atol", scope: !2123, file: !2123, line: 366, type: !2133, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!844, !724}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2132, file: !2123, line: 366, type: !724)
!2137 = !DILocation(line: 0, scope: !2132)
!2138 = !DILocation(line: 368, column: 10, scope: !2132)
!2139 = !DILocation(line: 368, column: 3, scope: !2132)
!2140 = distinct !DISubprogram(name: "atoll", scope: !2123, file: !2123, line: 373, type: !2141, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !724}
!2143 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2140, file: !2123, line: 373, type: !724)
!2146 = !DILocation(line: 0, scope: !2140)
!2147 = !DILocation(line: 375, column: 10, scope: !2140)
!2148 = !DILocation(line: 375, column: 3, scope: !2140)
!2149 = distinct !DISubprogram(name: "bsearch", scope: !2150, file: !2150, line: 20, type: !2151, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!723, !1235, !1235, !1250, !1250, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2123, line: 808, baseType: !1239)
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2155 = !DILocalVariable(name: "__key", arg: 1, scope: !2149, file: !2150, line: 20, type: !1235)
!2156 = !DILocalVariable(name: "__base", arg: 2, scope: !2149, file: !2150, line: 20, type: !1235)
!2157 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2149, file: !2150, line: 20, type: !1250)
!2158 = !DILocalVariable(name: "__size", arg: 4, scope: !2149, file: !2150, line: 20, type: !1250)
!2159 = !DILocalVariable(name: "__compar", arg: 5, scope: !2149, file: !2150, line: 21, type: !2153)
!2160 = !DILocalVariable(name: "__l", scope: !2149, file: !2150, line: 23, type: !1250)
!2161 = !DILocalVariable(name: "__u", scope: !2149, file: !2150, line: 23, type: !1250)
!2162 = !DILocalVariable(name: "__idx", scope: !2149, file: !2150, line: 23, type: !1250)
!2163 = !DILocalVariable(name: "__p", scope: !2149, file: !2150, line: 24, type: !1235)
!2164 = !DILocalVariable(name: "__comparison", scope: !2149, file: !2150, line: 25, type: !719)
!2165 = !DILocation(line: 0, scope: !2149)
!2166 = !DILocation(line: 29, column: 3, scope: !2149)
!2167 = !DILocation(line: 27, column: 7, scope: !2149)
!2168 = !DILocation(line: 29, column: 14, scope: !2149)
!2169 = !DILocation(line: 31, column: 20, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2149, file: !2150, line: 30, column: 5)
!2171 = !DILocation(line: 31, column: 27, scope: !2170)
!2172 = !DILocation(line: 32, column: 56, scope: !2170)
!2173 = !DILocation(line: 32, column: 47, scope: !2170)
!2174 = !DILocation(line: 33, column: 22, scope: !2170)
!2175 = !DILocation(line: 34, column: 24, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !2150, line: 34, column: 11)
!2177 = !DILocation(line: 34, column: 11, scope: !2170)
!2178 = !DILocation(line: 36, column: 29, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !2150, line: 36, column: 16)
!2180 = !DILocation(line: 36, column: 16, scope: !2176)
!2181 = !DILocation(line: 37, column: 14, scope: !2179)
!2182 = distinct !{!2182, !2166, !2183}
!2183 = !DILocation(line: 40, column: 5, scope: !2149)
!2184 = !DILocation(line: 43, column: 1, scope: !2149)
!2185 = distinct !DISubprogram(name: "atof", scope: !2186, file: !2186, line: 25, type: !2187, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!2189, !724}
!2189 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2185, file: !2186, line: 25, type: !724)
!2192 = !DILocation(line: 0, scope: !2185)
!2193 = !DILocation(line: 27, column: 10, scope: !2185)
!2194 = !DILocation(line: 27, column: 3, scope: !2185)
!2195 = distinct !DISubprogram(name: "strtoimax", scope: !2196, file: !2196, line: 324, type: !2197, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2196 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !1956, !2202, !719}
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2200, line: 101, baseType: !2201)
!2200 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2008, line: 72, baseType: !844)
!2202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !720)
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "nptr", arg: 1, scope: !2195, file: !2196, line: 324, type: !1956)
!2205 = !DILocalVariable(name: "endptr", arg: 2, scope: !2195, file: !2196, line: 324, type: !2202)
!2206 = !DILocalVariable(name: "base", arg: 3, scope: !2195, file: !2196, line: 324, type: !719)
!2207 = !DILocation(line: 0, scope: !2195)
!2208 = !DILocation(line: 327, column: 10, scope: !2195)
!2209 = !DILocation(line: 327, column: 3, scope: !2195)
!2210 = distinct !DISubprogram(name: "strtoumax", scope: !2196, file: !2196, line: 336, type: !2211, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2213, !1956, !2202, !719}
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2200, line: 102, baseType: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2008, line: 73, baseType: !827)
!2215 = !{!2216, !2217, !2218}
!2216 = !DILocalVariable(name: "nptr", arg: 1, scope: !2210, file: !2196, line: 336, type: !1956)
!2217 = !DILocalVariable(name: "endptr", arg: 2, scope: !2210, file: !2196, line: 336, type: !2202)
!2218 = !DILocalVariable(name: "base", arg: 3, scope: !2210, file: !2196, line: 336, type: !719)
!2219 = !DILocation(line: 0, scope: !2210)
!2220 = !DILocation(line: 339, column: 10, scope: !2210)
!2221 = !DILocation(line: 339, column: 3, scope: !2210)
!2222 = distinct !DISubprogram(name: "wcstoimax", scope: !2196, file: !2196, line: 348, type: !2223, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2199, !2225, !2229, !719}
!2225 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2226)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2196, line: 34, baseType: !719)
!2229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "nptr", arg: 1, scope: !2222, file: !2196, line: 348, type: !2225)
!2234 = !DILocalVariable(name: "endptr", arg: 2, scope: !2222, file: !2196, line: 348, type: !2229)
!2235 = !DILocalVariable(name: "base", arg: 3, scope: !2222, file: !2196, line: 348, type: !719)
!2236 = !DILocation(line: 0, scope: !2222)
!2237 = !DILocation(line: 351, column: 10, scope: !2222)
!2238 = !DILocation(line: 351, column: 3, scope: !2222)
!2239 = distinct !DISubprogram(name: "wcstoumax", scope: !2196, file: !2196, line: 362, type: !2240, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2213, !2225, !2229, !719}
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "nptr", arg: 1, scope: !2239, file: !2196, line: 362, type: !2225)
!2244 = !DILocalVariable(name: "endptr", arg: 2, scope: !2239, file: !2196, line: 362, type: !2229)
!2245 = !DILocalVariable(name: "base", arg: 3, scope: !2239, file: !2196, line: 362, type: !719)
!2246 = !DILocation(line: 0, scope: !2239)
!2247 = !DILocation(line: 365, column: 10, scope: !2239)
!2248 = !DILocation(line: 365, column: 3, scope: !2239)
!2249 = distinct !DISubprogram(name: "stat", scope: !2250, file: !2250, line: 453, type: !2251, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!719, !724, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2255, line: 46, size: 1152, elements: !2256)
!2255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2256 = !{!2257, !2259, !2261, !2263, !2265, !2267, !2269, !2270, !2271, !2272, !2274, !2276, !2284, !2285, !2286}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2254, file: !2255, line: 48, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2008, line: 145, baseType: !827)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2254, file: !2255, line: 53, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2008, line: 148, baseType: !827)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2254, file: !2255, line: 61, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2008, line: 151, baseType: !827)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2254, file: !2255, line: 62, baseType: !2264, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2008, line: 150, baseType: !7)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2254, file: !2255, line: 64, baseType: !2266, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2008, line: 146, baseType: !7)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2254, file: !2255, line: 65, baseType: !2268, size: 32, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2008, line: 147, baseType: !7)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2254, file: !2255, line: 67, baseType: !719, size: 32, offset: 288)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2254, file: !2255, line: 69, baseType: !2258, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2254, file: !2255, line: 74, baseType: !2007, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2254, file: !2255, line: 78, baseType: !2273, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2008, line: 174, baseType: !844)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2254, file: !2255, line: 80, baseType: !2275, size: 64, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2008, line: 179, baseType: !844)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2254, file: !2255, line: 91, baseType: !2277, size: 128, offset: 576)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2278, line: 10, size: 128, elements: !2279)
!2278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2279 = !{!2280, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2277, file: !2278, line: 12, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2008, line: 160, baseType: !844)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2277, file: !2278, line: 16, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2008, line: 196, baseType: !844)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2254, file: !2255, line: 92, baseType: !2277, size: 128, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2254, file: !2255, line: 93, baseType: !2277, size: 128, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2254, file: !2255, line: 106, baseType: !2287, size: 192, offset: 960)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 192, elements: !944)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__path", arg: 1, scope: !2249, file: !2250, line: 453, type: !724)
!2290 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2249, file: !2250, line: 453, type: !2253)
!2291 = !DILocation(line: 0, scope: !2249)
!2292 = !DILocation(line: 455, column: 10, scope: !2249)
!2293 = !DILocation(line: 455, column: 3, scope: !2249)
!2294 = distinct !DISubprogram(name: "lstat", scope: !2250, file: !2250, line: 460, type: !2251, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "__path", arg: 1, scope: !2294, file: !2250, line: 460, type: !724)
!2297 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2294, file: !2250, line: 460, type: !2253)
!2298 = !DILocation(line: 0, scope: !2294)
!2299 = !DILocation(line: 462, column: 10, scope: !2294)
!2300 = !DILocation(line: 462, column: 3, scope: !2294)
!2301 = distinct !DISubprogram(name: "fstat", scope: !2250, file: !2250, line: 467, type: !2302, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!719, !719, !2253}
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "__fd", arg: 1, scope: !2301, file: !2250, line: 467, type: !719)
!2306 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2301, file: !2250, line: 467, type: !2253)
!2307 = !DILocation(line: 0, scope: !2301)
!2308 = !DILocation(line: 469, column: 10, scope: !2301)
!2309 = !DILocation(line: 469, column: 3, scope: !2301)
!2310 = distinct !DISubprogram(name: "fstatat", scope: !2250, file: !2250, line: 474, type: !2311, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!719, !719, !724, !2253, !719}
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "__fd", arg: 1, scope: !2310, file: !2250, line: 474, type: !719)
!2315 = !DILocalVariable(name: "__filename", arg: 2, scope: !2310, file: !2250, line: 474, type: !724)
!2316 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2310, file: !2250, line: 474, type: !2253)
!2317 = !DILocalVariable(name: "__flag", arg: 4, scope: !2310, file: !2250, line: 474, type: !719)
!2318 = !DILocation(line: 0, scope: !2310)
!2319 = !DILocation(line: 477, column: 10, scope: !2310)
!2320 = !DILocation(line: 477, column: 3, scope: !2310)
!2321 = distinct !DISubprogram(name: "mknod", scope: !2250, file: !2250, line: 483, type: !2322, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!719, !724, !2264, !2258}
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "__path", arg: 1, scope: !2321, file: !2250, line: 483, type: !724)
!2326 = !DILocalVariable(name: "__mode", arg: 2, scope: !2321, file: !2250, line: 483, type: !2264)
!2327 = !DILocalVariable(name: "__dev", arg: 3, scope: !2321, file: !2250, line: 483, type: !2258)
!2328 = !DILocation(line: 0, scope: !2321)
!2329 = !DILocation(line: 485, column: 10, scope: !2321)
!2330 = !DILocation(line: 485, column: 3, scope: !2321)
!2331 = distinct !DISubprogram(name: "mknodat", scope: !2250, file: !2250, line: 491, type: !2332, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!719, !719, !724, !2264, !2258}
!2334 = !{!2335, !2336, !2337, !2338}
!2335 = !DILocalVariable(name: "__fd", arg: 1, scope: !2331, file: !2250, line: 491, type: !719)
!2336 = !DILocalVariable(name: "__path", arg: 2, scope: !2331, file: !2250, line: 491, type: !724)
!2337 = !DILocalVariable(name: "__mode", arg: 3, scope: !2331, file: !2250, line: 491, type: !2264)
!2338 = !DILocalVariable(name: "__dev", arg: 4, scope: !2331, file: !2250, line: 491, type: !2258)
!2339 = !DILocation(line: 0, scope: !2331)
!2340 = !DILocation(line: 494, column: 10, scope: !2331)
!2341 = !DILocation(line: 494, column: 3, scope: !2331)
!2342 = distinct !DISubprogram(name: "stat64", scope: !2250, file: !2250, line: 502, type: !2343, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!719, !724, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2255, line: 119, size: 1152, elements: !2347)
!2347 = !{!2348, !2349, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2361, !2362, !2363, !2364}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2346, file: !2255, line: 121, baseType: !2258, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2346, file: !2255, line: 123, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2008, line: 149, baseType: !827)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2346, file: !2255, line: 124, baseType: !2262, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2346, file: !2255, line: 125, baseType: !2264, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2346, file: !2255, line: 132, baseType: !2266, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2346, file: !2255, line: 133, baseType: !2268, size: 32, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2346, file: !2255, line: 135, baseType: !719, size: 32, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2346, file: !2255, line: 136, baseType: !2258, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2346, file: !2255, line: 137, baseType: !2007, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2346, file: !2255, line: 143, baseType: !2273, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2346, file: !2255, line: 144, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2008, line: 180, baseType: !844)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2346, file: !2255, line: 152, baseType: !2277, size: 128, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2346, file: !2255, line: 153, baseType: !2277, size: 128, offset: 704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2346, file: !2255, line: 154, baseType: !2277, size: 128, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2346, file: !2255, line: 164, baseType: !2287, size: 192, offset: 960)
!2365 = !{!2366, !2367}
!2366 = !DILocalVariable(name: "__path", arg: 1, scope: !2342, file: !2250, line: 502, type: !724)
!2367 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2342, file: !2250, line: 502, type: !2345)
!2368 = !DILocation(line: 0, scope: !2342)
!2369 = !DILocation(line: 504, column: 10, scope: !2342)
!2370 = !DILocation(line: 504, column: 3, scope: !2342)
!2371 = distinct !DISubprogram(name: "lstat64", scope: !2250, file: !2250, line: 509, type: !2343, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "__path", arg: 1, scope: !2371, file: !2250, line: 509, type: !724)
!2374 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2371, file: !2250, line: 509, type: !2345)
!2375 = !DILocation(line: 0, scope: !2371)
!2376 = !DILocation(line: 511, column: 10, scope: !2371)
!2377 = !DILocation(line: 511, column: 3, scope: !2371)
!2378 = distinct !DISubprogram(name: "fstat64", scope: !2250, file: !2250, line: 516, type: !2379, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!719, !719, !2345}
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "__fd", arg: 1, scope: !2378, file: !2250, line: 516, type: !719)
!2383 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2378, file: !2250, line: 516, type: !2345)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 518, column: 10, scope: !2378)
!2386 = !DILocation(line: 518, column: 3, scope: !2378)
!2387 = distinct !DISubprogram(name: "fstatat64", scope: !2250, file: !2250, line: 523, type: !2388, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!719, !719, !724, !2345, !719}
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "__fd", arg: 1, scope: !2387, file: !2250, line: 523, type: !719)
!2392 = !DILocalVariable(name: "__filename", arg: 2, scope: !2387, file: !2250, line: 523, type: !724)
!2393 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2387, file: !2250, line: 523, type: !2345)
!2394 = !DILocalVariable(name: "__flag", arg: 4, scope: !2387, file: !2250, line: 523, type: !719)
!2395 = !DILocation(line: 0, scope: !2387)
!2396 = !DILocation(line: 526, column: 10, scope: !2387)
!2397 = !DILocation(line: 526, column: 3, scope: !2387)
!2398 = distinct !DISubprogram(name: "unlink_insn_chain", scope: !3, file: !3, line: 59, type: !2399, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!758, !758, !758}
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "first", arg: 1, scope: !2398, file: !3, line: 59, type: !758)
!2403 = !DILocalVariable(name: "last", arg: 2, scope: !2398, file: !3, line: 59, type: !758)
!2404 = !DILocalVariable(name: "prevfirst", scope: !2398, file: !3, line: 61, type: !758)
!2405 = !DILocalVariable(name: "nextlast", scope: !2398, file: !3, line: 62, type: !758)
!2406 = !DILocation(line: 0, scope: !2398)
!2407 = !DILocation(line: 61, column: 19, scope: !2398)
!2408 = !DILocation(line: 62, column: 18, scope: !2398)
!2409 = !DILocation(line: 64, column: 21, scope: !2398)
!2410 = !DILocation(line: 65, column: 20, scope: !2398)
!2411 = !DILocation(line: 66, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 66, column: 7)
!2413 = !DILocation(line: 66, column: 7, scope: !2398)
!2414 = !DILocation(line: 67, column: 5, scope: !2412)
!2415 = !DILocation(line: 67, column: 27, scope: !2412)
!2416 = !DILocation(line: 68, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 68, column: 7)
!2418 = !DILocation(line: 68, column: 7, scope: !2398)
!2419 = !DILocation(line: 69, column: 5, scope: !2417)
!2420 = !DILocation(line: 69, column: 26, scope: !2417)
!2421 = !DILocation(line: 71, column: 5, scope: !2417)
!2422 = !DILocation(line: 72, column: 7, scope: !2398)
!2423 = !DILocation(line: 73, column: 5, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 72, column: 7)
!2425 = !DILocation(line: 74, column: 3, scope: !2398)
!2426 = distinct !DISubprogram(name: "insn_locators_alloc", scope: !3, file: !3, line: 247, type: !2427, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null}
!2429 = !DILocation(line: 249, column: 39, scope: !2426)
!2430 = !DILocation(line: 249, column: 20, scope: !2426)
!2431 = !DILocation(line: 251, column: 25, scope: !2426)
!2432 = !DILocation(line: 251, column: 23, scope: !2426)
!2433 = !DILocation(line: 252, column: 27, scope: !2426)
!2434 = !DILocation(line: 252, column: 25, scope: !2426)
!2435 = !DILocation(line: 253, column: 29, scope: !2426)
!2436 = !DILocation(line: 253, column: 27, scope: !2426)
!2437 = !DILocation(line: 254, column: 29, scope: !2426)
!2438 = !DILocation(line: 254, column: 27, scope: !2426)
!2439 = !DILocation(line: 256, column: 17, scope: !2426)
!2440 = !DILocation(line: 257, column: 17, scope: !2426)
!2441 = !DILocation(line: 258, column: 14, scope: !2426)
!2442 = !DILocation(line: 259, column: 14, scope: !2426)
!2443 = !DILocation(line: 260, column: 16, scope: !2426)
!2444 = !DILocation(line: 261, column: 1, scope: !2426)
!2445 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1856, file: !1856, line: 32, type: !2446, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!1854, !719}
!2448 = !{!2449}
!2449 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2445, file: !1856, line: 32, type: !719)
!2450 = !DILocation(line: 0, scope: !2445)
!2451 = !DILocation(line: 32, column: 1, scope: !2445)
!2452 = distinct !DISubprogram(name: "VEC_tree_gc_alloc", scope: !164, file: !164, line: 183, type: !2453, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!1454, !719}
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2452, file: !164, line: 183, type: !719)
!2457 = !DILocation(line: 0, scope: !2452)
!2458 = !DILocation(line: 183, column: 1, scope: !2452)
!2459 = distinct !DISubprogram(name: "VEC_location_t_heap_alloc", scope: !3, file: !3, line: 233, type: !2460, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!1867, !719}
!2462 = !{!2463}
!2463 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2459, file: !3, line: 233, type: !719)
!2464 = !DILocation(line: 0, scope: !2459)
!2465 = !DILocation(line: 233, column: 1, scope: !2459)
!2466 = distinct !DISubprogram(name: "insn_locators_finalize", scope: !3, file: !3, line: 265, type: !2427, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2467 = !DILocation(line: 267, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 267, column: 7)
!2469 = !DILocation(line: 267, column: 20, scope: !2468)
!2470 = !DILocation(line: 267, column: 7, scope: !2466)
!2471 = !DILocation(line: 268, column: 24, scope: !2468)
!2472 = !DILocation(line: 268, column: 22, scope: !2468)
!2473 = !DILocation(line: 268, column: 5, scope: !2468)
!2474 = !DILocation(line: 269, column: 16, scope: !2466)
!2475 = !DILocation(line: 270, column: 1, scope: !2466)
!2476 = distinct !DISubprogram(name: "curr_insn_locator", scope: !3, file: !3, line: 324, type: !1972, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2477 = !DILocation(line: 326, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 326, column: 7)
!2479 = !DILocation(line: 326, column: 20, scope: !2478)
!2480 = !DILocation(line: 326, column: 7, scope: !2476)
!2481 = !DILocation(line: 328, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 328, column: 7)
!2483 = !DILocation(line: 328, column: 21, scope: !2482)
!2484 = !DILocation(line: 328, column: 18, scope: !2482)
!2485 = !DILocation(line: 328, column: 7, scope: !2476)
!2486 = !DILocation(line: 330, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 329, column: 5)
!2488 = !DILocation(line: 331, column: 7, scope: !2487)
!2489 = !DILocation(line: 332, column: 7, scope: !2487)
!2490 = !DILocation(line: 333, column: 20, scope: !2487)
!2491 = !DILocation(line: 333, column: 18, scope: !2487)
!2492 = !DILocation(line: 334, column: 5, scope: !2487)
!2493 = !DILocation(line: 335, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 335, column: 7)
!2495 = !DILocation(line: 335, column: 24, scope: !2494)
!2496 = !DILocation(line: 335, column: 21, scope: !2494)
!2497 = !DILocation(line: 335, column: 7, scope: !2476)
!2498 = !DILocation(line: 337, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 336, column: 5)
!2500 = !DILocation(line: 338, column: 7, scope: !2499)
!2501 = !DILocation(line: 339, column: 7, scope: !2499)
!2502 = !DILocation(line: 340, column: 23, scope: !2499)
!2503 = !DILocation(line: 340, column: 21, scope: !2499)
!2504 = !DILocation(line: 341, column: 5, scope: !2499)
!2505 = !DILocation(line: 342, column: 10, scope: !2476)
!2506 = !DILocation(line: 342, column: 3, scope: !2476)
!2507 = !DILocation(line: 0, scope: !2476)
!2508 = !DILocation(line: 343, column: 1, scope: !2476)
!2509 = distinct !DISubprogram(name: "insn_locators_free", scope: !3, file: !3, line: 274, type: !2427, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2510 = !DILocation(line: 276, column: 39, scope: !2509)
!2511 = !DILocation(line: 276, column: 20, scope: !2509)
!2512 = !DILocation(line: 278, column: 3, scope: !2509)
!2513 = !DILocation(line: 279, column: 3, scope: !2509)
!2514 = !DILocation(line: 280, column: 3, scope: !2509)
!2515 = !DILocation(line: 281, column: 3, scope: !2509)
!2516 = !DILocation(line: 282, column: 1, scope: !2509)
!2517 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1856, file: !1856, line: 32, type: !2518, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2521)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!2521 = !{!2522}
!2522 = !DILocalVariable(name: "vec_", arg: 1, scope: !2517, file: !1856, line: 32, type: !2520)
!2523 = !DILocation(line: 0, scope: !2517)
!2524 = !DILocation(line: 32, column: 1, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2517, file: !1856, line: 32, column: 1)
!2526 = !DILocation(line: 32, column: 1, scope: !2517)
!2527 = distinct !DISubprogram(name: "VEC_tree_gc_free", scope: !164, file: !164, line: 183, type: !2528, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "vec_", arg: 1, scope: !2527, file: !164, line: 183, type: !2530)
!2533 = !DILocation(line: 0, scope: !2527)
!2534 = !DILocation(line: 183, column: 1, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2527, file: !164, line: 183, column: 1)
!2536 = !DILocation(line: 183, column: 1, scope: !2527)
!2537 = distinct !DISubprogram(name: "VEC_location_t_heap_free", scope: !3, file: !3, line: 233, type: !2538, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2541)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!2541 = !{!2542}
!2542 = !DILocalVariable(name: "vec_", arg: 1, scope: !2537, file: !3, line: 233, type: !2540)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 233, column: 1, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 233, column: 1)
!2546 = !DILocation(line: 233, column: 1, scope: !2537)
!2547 = distinct !DISubprogram(name: "set_curr_insn_source_location", scope: !3, file: !3, line: 287, type: !2548, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !993}
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "location", arg: 1, scope: !2547, file: !3, line: 287, type: !993)
!2552 = !DILocation(line: 0, scope: !2547)
!2553 = !DILocation(line: 291, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 291, column: 7)
!2555 = !DILocation(line: 291, column: 20, scope: !2554)
!2556 = !DILocation(line: 291, column: 7, scope: !2547)
!2557 = !DILocation(line: 293, column: 17, scope: !2547)
!2558 = !DILocation(line: 294, column: 1, scope: !2547)
!2559 = distinct !DISubprogram(name: "get_curr_insn_source_location", scope: !3, file: !3, line: 298, type: !2560, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!993}
!2562 = !DILocation(line: 300, column: 10, scope: !2559)
!2563 = !DILocation(line: 300, column: 3, scope: !2559)
!2564 = distinct !DISubprogram(name: "set_curr_insn_block", scope: !3, file: !3, line: 305, type: !2565, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !873}
!2567 = !{!2568}
!2568 = !DILocalVariable(name: "b", arg: 1, scope: !2564, file: !3, line: 305, type: !873)
!2569 = !DILocation(line: 0, scope: !2564)
!2570 = !DILocation(line: 309, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 309, column: 7)
!2572 = !DILocation(line: 309, column: 20, scope: !2571)
!2573 = !DILocation(line: 311, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 311, column: 7)
!2575 = !DILocation(line: 309, column: 7, scope: !2564)
!2576 = !DILocation(line: 312, column: 16, scope: !2574)
!2577 = !DILocation(line: 312, column: 5, scope: !2574)
!2578 = !DILocation(line: 313, column: 1, scope: !2564)
!2579 = distinct !DISubprogram(name: "get_curr_insn_block", scope: !3, file: !3, line: 317, type: !2580, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!873}
!2582 = !DILocation(line: 319, column: 10, scope: !2579)
!2583 = !DILocation(line: 319, column: 3, scope: !2579)
!2584 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !1856, file: !1856, line: 32, type: !2585, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!2587, !2520, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "vec_", arg: 1, scope: !2584, file: !1856, line: 32, type: !2520)
!2591 = !DILocalVariable(name: "obj_", arg: 2, scope: !2584, file: !1856, line: 32, type: !2588)
!2592 = !DILocation(line: 0, scope: !2584)
!2593 = !DILocation(line: 32, column: 1, scope: !2584)
!2594 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !164, file: !164, line: 183, type: !2595, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!1444, !2530, !873}
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "vec_", arg: 1, scope: !2594, file: !164, line: 183, type: !2530)
!2599 = !DILocalVariable(name: "obj_", arg: 2, scope: !2594, file: !164, line: 183, type: !873)
!2600 = !DILocation(line: 0, scope: !2594)
!2601 = !DILocation(line: 183, column: 1, scope: !2594)
!2602 = distinct !DISubprogram(name: "VEC_location_t_heap_safe_push", scope: !3, file: !3, line: 233, type: !2603, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!2605, !2540, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!2608 = !{!2609, !2610}
!2609 = !DILocalVariable(name: "vec_", arg: 1, scope: !2602, file: !3, line: 233, type: !2540)
!2610 = !DILocalVariable(name: "obj_", arg: 2, scope: !2602, file: !3, line: 233, type: !2606)
!2611 = !DILocation(line: 0, scope: !2602)
!2612 = !DILocation(line: 233, column: 1, scope: !2602)
!2613 = distinct !DISubprogram(name: "into_cfg_layout_mode", scope: !3, file: !3, line: 346, type: !1895, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!2614 = !DILocation(line: 348, column: 3, scope: !2613)
!2615 = !DILocation(line: 349, column: 3, scope: !2613)
!2616 = distinct !DISubprogram(name: "outof_cfg_layout_mode", scope: !3, file: !3, line: 353, type: !1895, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2617)
!2617 = !{!2618}
!2618 = !DILocalVariable(name: "bb", scope: !2616, file: !3, line: 355, type: !726)
!2619 = !DILocation(line: 357, column: 3, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 357, column: 3)
!2621 = !DILocation(line: 0, scope: !2620)
!2622 = !DILocation(line: 357, column: 3, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 357, column: 3)
!2624 = !DILocation(line: 0, scope: !2616)
!2625 = !DILocation(line: 358, column: 13, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 358, column: 9)
!2627 = !DILocation(line: 358, column: 21, scope: !2626)
!2628 = !DILocation(line: 358, column: 9, scope: !2623)
!2629 = !DILocation(line: 359, column: 11, scope: !2626)
!2630 = !DILocation(line: 359, column: 15, scope: !2626)
!2631 = !DILocation(line: 359, column: 7, scope: !2626)
!2632 = distinct !{!2632, !2619, !2633}
!2633 = !DILocation(line: 359, column: 21, scope: !2620)
!2634 = !DILocation(line: 361, column: 3, scope: !2616)
!2635 = !DILocation(line: 363, column: 3, scope: !2616)
!2636 = distinct !DISubprogram(name: "locator_location", scope: !3, file: !3, line: 509, type: !2637, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!993, !719}
!2639 = !{!2640, !2641, !2642, !2643, !2645}
!2640 = !DILocalVariable(name: "loc", arg: 1, scope: !2636, file: !3, line: 509, type: !719)
!2641 = !DILocalVariable(name: "max", scope: !2636, file: !3, line: 511, type: !719)
!2642 = !DILocalVariable(name: "min", scope: !2636, file: !3, line: 512, type: !719)
!2643 = !DILocalVariable(name: "pos", scope: !2644, file: !3, line: 516, type: !719)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 515, column: 5)
!2645 = !DILocalVariable(name: "tmp", scope: !2644, file: !3, line: 517, type: !719)
!2646 = !DILocation(line: 0, scope: !2636)
!2647 = !DILocation(line: 511, column: 13, scope: !2636)
!2648 = !DILocation(line: 514, column: 3, scope: !2636)
!2649 = !DILocation(line: 511, column: 7, scope: !2636)
!2650 = !DILocation(line: 516, column: 22, scope: !2644)
!2651 = !DILocation(line: 516, column: 29, scope: !2644)
!2652 = !DILocation(line: 0, scope: !2644)
!2653 = !DILocation(line: 517, column: 17, scope: !2644)
!2654 = !DILocation(line: 519, column: 15, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 519, column: 11)
!2656 = !DILocation(line: 519, column: 29, scope: !2655)
!2657 = !DILocation(line: 519, column: 22, scope: !2655)
!2658 = !DILocation(line: 521, column: 20, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 521, column: 16)
!2660 = !DILocation(line: 521, column: 33, scope: !2659)
!2661 = !DILocation(line: 521, column: 26, scope: !2659)
!2662 = !DILocation(line: 528, column: 5, scope: !2636)
!2663 = !DILocation(line: 0, scope: !2655)
!2664 = distinct !{!2664, !2648, !2662}
!2665 = !DILocation(line: 529, column: 11, scope: !2636)
!2666 = !DILocation(line: 529, column: 10, scope: !2636)
!2667 = !DILocation(line: 529, column: 3, scope: !2636)
!2668 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !1856, file: !1856, line: 31, type: !2669, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!7, !2671}
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1860)
!2673 = !{!2674}
!2674 = !DILocalVariable(name: "vec_", arg: 1, scope: !2668, file: !1856, line: 31, type: !2671)
!2675 = !DILocation(line: 0, scope: !2668)
!2676 = !DILocation(line: 31, column: 1, scope: !2668)
!2677 = distinct !DISubprogram(name: "VEC_int_base_index", scope: !1856, file: !1856, line: 31, type: !2678, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!719, !2671, !7}
!2680 = !{!2681, !2682}
!2681 = !DILocalVariable(name: "vec_", arg: 1, scope: !2677, file: !1856, line: 31, type: !2671)
!2682 = !DILocalVariable(name: "ix_", arg: 2, scope: !2677, file: !1856, line: 31, type: !7)
!2683 = !DILocation(line: 0, scope: !2677)
!2684 = !DILocation(line: 31, column: 1, scope: !2677)
!2685 = distinct !DISubprogram(name: "VEC_location_t_base_index", scope: !3, file: !3, line: 232, type: !2686, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2605, !2688, !7}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!2689 = !{!2690, !2691}
!2690 = !DILocalVariable(name: "vec_", arg: 1, scope: !2685, file: !3, line: 232, type: !2688)
!2691 = !DILocalVariable(name: "ix_", arg: 2, scope: !2685, file: !3, line: 232, type: !7)
!2692 = !DILocation(line: 0, scope: !2685)
!2693 = !DILocation(line: 232, column: 1, scope: !2685)
!2694 = distinct !DISubprogram(name: "locator_line", scope: !3, file: !3, line: 534, type: !2047, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "loc", arg: 1, scope: !2694, file: !3, line: 534, type: !719)
!2697 = !DILocalVariable(name: "xloc", scope: !2694, file: !3, line: 536, type: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !994, line: 52, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 40, size: 192, elements: !2700)
!2700 = !{!2701, !2702, !2703, !2704}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2699, file: !994, line: 43, baseType: !724, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2699, file: !994, line: 46, baseType: !719, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2699, file: !994, line: 48, baseType: !719, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2699, file: !994, line: 51, baseType: !718, size: 8, offset: 128)
!2705 = !DILocation(line: 0, scope: !2694)
!2706 = !DILocation(line: 536, column: 3, scope: !2694)
!2707 = !DILocation(line: 537, column: 8, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 537, column: 7)
!2709 = !DILocation(line: 537, column: 7, scope: !2694)
!2710 = !DILocation(line: 540, column: 12, scope: !2708)
!2711 = !DILocation(line: 540, column: 29, scope: !2708)
!2712 = !DILocation(line: 541, column: 15, scope: !2694)
!2713 = !DILocation(line: 541, column: 3, scope: !2694)
!2714 = !DILocation(line: 542, column: 1, scope: !2694)
!2715 = distinct !DISubprogram(name: "insn_line", scope: !3, file: !3, line: 546, type: !2716, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!719, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !727, line: 51, baseType: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "insn", arg: 1, scope: !2715, file: !3, line: 546, type: !2718)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocation(line: 548, column: 24, scope: !2715)
!2725 = !DILocation(line: 548, column: 10, scope: !2715)
!2726 = !DILocation(line: 548, column: 3, scope: !2715)
!2727 = distinct !DISubprogram(name: "locator_file", scope: !3, file: !3, line: 553, type: !2728, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!724, !719}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "loc", arg: 1, scope: !2727, file: !3, line: 553, type: !719)
!2732 = !DILocalVariable(name: "xloc", scope: !2727, file: !3, line: 555, type: !2698)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 555, column: 3, scope: !2727)
!2735 = !DILocation(line: 556, column: 8, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 556, column: 7)
!2737 = !DILocation(line: 556, column: 7, scope: !2727)
!2738 = !DILocation(line: 559, column: 12, scope: !2736)
!2739 = !DILocation(line: 559, column: 29, scope: !2736)
!2740 = !DILocation(line: 560, column: 15, scope: !2727)
!2741 = !DILocation(line: 560, column: 3, scope: !2727)
!2742 = !DILocation(line: 561, column: 1, scope: !2727)
!2743 = distinct !DISubprogram(name: "insn_file", scope: !3, file: !3, line: 565, type: !2744, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!724, !2718}
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "insn", arg: 1, scope: !2743, file: !3, line: 565, type: !2718)
!2748 = !DILocation(line: 0, scope: !2743)
!2749 = !DILocation(line: 567, column: 24, scope: !2743)
!2750 = !DILocation(line: 567, column: 10, scope: !2743)
!2751 = !DILocation(line: 567, column: 3, scope: !2743)
!2752 = distinct !DISubprogram(name: "locator_eq", scope: !3, file: !3, line: 572, type: !2753, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!718, !719, !719}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "loc1", arg: 1, scope: !2752, file: !3, line: 572, type: !719)
!2757 = !DILocalVariable(name: "loc2", arg: 2, scope: !2752, file: !3, line: 572, type: !719)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 574, column: 12, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 574, column: 7)
!2761 = !DILocation(line: 574, column: 7, scope: !2752)
!2762 = !DILocation(line: 576, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 576, column: 7)
!2764 = !DILocation(line: 576, column: 34, scope: !2763)
!2765 = !DILocation(line: 576, column: 31, scope: !2763)
!2766 = !DILocation(line: 576, column: 7, scope: !2752)
!2767 = !DILocation(line: 578, column: 10, scope: !2752)
!2768 = !DILocation(line: 578, column: 34, scope: !2752)
!2769 = !DILocation(line: 578, column: 31, scope: !2752)
!2770 = !DILocation(line: 578, column: 3, scope: !2752)
!2771 = !DILocation(line: 579, column: 1, scope: !2752)
!2772 = distinct !DISubprogram(name: "locator_scope", scope: !3, file: !3, line: 463, type: !2773, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!873, !719}
!2775 = !{!2776, !2777, !2778, !2779, !2781}
!2776 = !DILocalVariable(name: "loc", arg: 1, scope: !2772, file: !3, line: 463, type: !719)
!2777 = !DILocalVariable(name: "max", scope: !2772, file: !3, line: 465, type: !719)
!2778 = !DILocalVariable(name: "min", scope: !2772, file: !3, line: 466, type: !719)
!2779 = !DILocalVariable(name: "pos", scope: !2780, file: !3, line: 484, type: !719)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 483, column: 5)
!2781 = !DILocalVariable(name: "tmp", scope: !2780, file: !3, line: 485, type: !719)
!2782 = !DILocation(line: 0, scope: !2772)
!2783 = !DILocation(line: 465, column: 13, scope: !2772)
!2784 = !DILocation(line: 477, column: 14, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 477, column: 7)
!2786 = !DILocation(line: 477, column: 11, scope: !2785)
!2787 = !DILocation(line: 477, column: 41, scope: !2785)
!2788 = !DILocation(line: 477, column: 38, scope: !2785)
!2789 = !DILocation(line: 477, column: 31, scope: !2785)
!2790 = !DILocation(line: 478, column: 12, scope: !2785)
!2791 = !DILocation(line: 478, column: 5, scope: !2785)
!2792 = !DILocation(line: 480, column: 8, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 480, column: 7)
!2794 = !DILocation(line: 480, column: 16, scope: !2793)
!2795 = !DILocation(line: 480, column: 12, scope: !2793)
!2796 = !DILocation(line: 482, column: 3, scope: !2772)
!2797 = !DILocation(line: 465, column: 7, scope: !2772)
!2798 = !DILocation(line: 484, column: 22, scope: !2780)
!2799 = !DILocation(line: 484, column: 29, scope: !2780)
!2800 = !DILocation(line: 0, scope: !2780)
!2801 = !DILocation(line: 485, column: 17, scope: !2780)
!2802 = !DILocation(line: 487, column: 15, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 487, column: 11)
!2804 = !DILocation(line: 487, column: 29, scope: !2803)
!2805 = !DILocation(line: 487, column: 22, scope: !2803)
!2806 = !DILocation(line: 489, column: 20, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 489, column: 16)
!2808 = !DILocation(line: 489, column: 33, scope: !2807)
!2809 = !DILocation(line: 489, column: 26, scope: !2807)
!2810 = !DILocation(line: 496, column: 5, scope: !2772)
!2811 = !DILocation(line: 0, scope: !2803)
!2812 = distinct !{!2812, !2796, !2810}
!2813 = !DILocation(line: 497, column: 10, scope: !2772)
!2814 = !DILocation(line: 497, column: 3, scope: !2772)
!2815 = !DILocation(line: 498, column: 1, scope: !2772)
!2816 = distinct !DISubprogram(name: "reemit_insn_block_notes", scope: !3, file: !3, line: 585, type: !2427, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2825, !2828}
!2818 = !DILocalVariable(name: "cur_block", scope: !2816, file: !3, line: 587, type: !873)
!2819 = !DILocalVariable(name: "insn", scope: !2816, file: !3, line: 588, type: !758)
!2820 = !DILocalVariable(name: "note", scope: !2816, file: !3, line: 588, type: !758)
!2821 = !DILocalVariable(name: "this_block", scope: !2822, file: !3, line: 595, type: !873)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 594, column: 5)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 593, column: 3)
!2824 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 593, column: 3)
!2825 = !DILocalVariable(name: "i", scope: !2826, file: !3, line: 606, type: !719)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 605, column: 2)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 604, column: 11)
!2828 = !DILocalVariable(name: "body", scope: !2826, file: !3, line: 607, type: !758)
!2829 = !DILocation(line: 587, column: 20, scope: !2816)
!2830 = !DILocation(line: 0, scope: !2816)
!2831 = !DILocation(line: 590, column: 10, scope: !2816)
!2832 = !DILocation(line: 591, column: 8, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 591, column: 7)
!2834 = !DILocation(line: 591, column: 7, scope: !2816)
!2835 = !DILocation(line: 592, column: 12, scope: !2833)
!2836 = !DILocation(line: 592, column: 5, scope: !2833)
!2837 = !DILocation(line: 593, column: 3, scope: !2816)
!2838 = !DILocation(line: 587, column: 8, scope: !2816)
!2839 = !DILocation(line: 593, column: 3, scope: !2824)
!2840 = !DILocation(line: 598, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 598, column: 11)
!2842 = !DILocation(line: 598, column: 11, scope: !2822)
!2843 = !DILocation(line: 601, column: 20, scope: !2822)
!2844 = !DILocation(line: 0, scope: !2822)
!2845 = !DILocation(line: 604, column: 11, scope: !2827)
!2846 = !DILocation(line: 604, column: 37, scope: !2827)
!2847 = !DILocation(line: 604, column: 11, scope: !2822)
!2848 = !DILocation(line: 0, scope: !2826)
!2849 = !DILocation(line: 0, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 610, column: 4)
!2851 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 610, column: 4)
!2852 = !DILocation(line: 610, column: 9, scope: !2851)
!2853 = !DILocation(line: 610, column: 20, scope: !2850)
!2854 = !DILocation(line: 610, column: 18, scope: !2850)
!2855 = !DILocation(line: 610, column: 4, scope: !2851)
!2856 = !DILocation(line: 612, column: 19, scope: !2850)
!2857 = !DILocation(line: 612, column: 7, scope: !2850)
!2858 = !DILocation(line: 611, column: 19, scope: !2850)
!2859 = !DILocation(line: 610, column: 40, scope: !2850)
!2860 = !DILocation(line: 610, column: 4, scope: !2850)
!2861 = distinct !{!2861, !2855, !2862}
!2862 = !DILocation(line: 612, column: 40, scope: !2851)
!2863 = !DILocation(line: 614, column: 13, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 614, column: 11)
!2865 = !DILocation(line: 614, column: 11, scope: !2822)
!2866 = !DILocation(line: 617, column: 22, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 617, column: 11)
!2868 = !DILocation(line: 617, column: 11, scope: !2822)
!2869 = !DILocation(line: 619, column: 4, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 618, column: 2)
!2871 = !DILocation(line: 621, column: 2, scope: !2870)
!2872 = !DILocation(line: 593, column: 23, scope: !2823)
!2873 = !DILocation(line: 593, column: 3, scope: !2823)
!2874 = distinct !{!2874, !2839, !2875}
!2875 = !DILocation(line: 622, column: 5, scope: !2824)
!2876 = !DILocation(line: 625, column: 10, scope: !2816)
!2877 = !DILocation(line: 626, column: 34, scope: !2816)
!2878 = !DILocation(line: 626, column: 3, scope: !2816)
!2879 = !DILocation(line: 627, column: 3, scope: !2816)
!2880 = !DILocation(line: 629, column: 3, scope: !2816)
!2881 = !DILocation(line: 630, column: 1, scope: !2816)
!2882 = distinct !DISubprogram(name: "insn_scope", scope: !3, file: !3, line: 502, type: !2883, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!873, !2718}
!2885 = !{!2886}
!2886 = !DILocalVariable(name: "insn", arg: 1, scope: !2882, file: !3, line: 502, type: !2718)
!2887 = !DILocation(line: 0, scope: !2882)
!2888 = !DILocation(line: 504, column: 25, scope: !2882)
!2889 = !DILocation(line: 504, column: 10, scope: !2882)
!2890 = !DILocation(line: 504, column: 3, scope: !2882)
!2891 = distinct !DISubprogram(name: "choose_inner_scope", scope: !3, file: !3, line: 406, type: !2892, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!873, !873, !873}
!2894 = !{!2895, !2896}
!2895 = !DILocalVariable(name: "s1", arg: 1, scope: !2891, file: !3, line: 406, type: !873)
!2896 = !DILocalVariable(name: "s2", arg: 2, scope: !2891, file: !3, line: 406, type: !873)
!2897 = !DILocation(line: 0, scope: !2891)
!2898 = !DILocation(line: 408, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 408, column: 8)
!2900 = !DILocation(line: 408, column: 8, scope: !2891)
!2901 = !DILocation(line: 410, column: 9, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 410, column: 8)
!2903 = !DILocation(line: 410, column: 8, scope: !2891)
!2904 = !DILocation(line: 412, column: 8, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 412, column: 8)
!2906 = !DILocation(line: 412, column: 28, scope: !2905)
!2907 = !DILocation(line: 412, column: 26, scope: !2905)
!2908 = !DILocation(line: 415, column: 1, scope: !2891)
!2909 = distinct !DISubprogram(name: "change_scope", scope: !3, file: !3, line: 420, type: !2910, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !758, !873, !873}
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2913 = !DILocalVariable(name: "orig_insn", arg: 1, scope: !2909, file: !3, line: 420, type: !758)
!2914 = !DILocalVariable(name: "s1", arg: 2, scope: !2909, file: !3, line: 420, type: !873)
!2915 = !DILocalVariable(name: "s2", arg: 3, scope: !2909, file: !3, line: 420, type: !873)
!2916 = !DILocalVariable(name: "insn", scope: !2909, file: !3, line: 422, type: !758)
!2917 = !DILocalVariable(name: "com", scope: !2909, file: !3, line: 423, type: !873)
!2918 = !DILocalVariable(name: "ts1", scope: !2909, file: !3, line: 424, type: !873)
!2919 = !DILocalVariable(name: "ts2", scope: !2909, file: !3, line: 424, type: !873)
!2920 = !DILocalVariable(name: "s", scope: !2909, file: !3, line: 425, type: !873)
!2921 = !DILocalVariable(name: "note", scope: !2922, file: !3, line: 446, type: !758)
!2922 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 445, column: 5)
!2923 = !DILocation(line: 0, scope: !2909)
!2924 = !DILocation(line: 427, column: 3, scope: !2909)
!2925 = !DILocation(line: 424, column: 18, scope: !2909)
!2926 = !DILocation(line: 427, column: 14, scope: !2909)
!2927 = !DILocation(line: 444, column: 3, scope: !2909)
!2928 = !DILocation(line: 429, column: 7, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 428, column: 5)
!2930 = !DILocation(line: 430, column: 11, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 430, column: 11)
!2932 = !DILocation(line: 430, column: 32, scope: !2931)
!2933 = !DILocation(line: 430, column: 30, scope: !2931)
!2934 = !DILocation(line: 430, column: 11, scope: !2929)
!2935 = !DILocation(line: 431, column: 8, scope: !2931)
!2936 = !DILocation(line: 431, column: 2, scope: !2931)
!2937 = !DILocation(line: 432, column: 35, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 432, column: 16)
!2939 = !DILocation(line: 432, column: 16, scope: !2931)
!2940 = !DILocation(line: 433, column: 8, scope: !2938)
!2941 = !DILocation(line: 433, column: 2, scope: !2938)
!2942 = !DILocation(line: 436, column: 10, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 435, column: 2)
!2944 = !DILocation(line: 437, column: 10, scope: !2943)
!2945 = distinct !{!2945, !2924, !2946}
!2946 = !DILocation(line: 439, column: 5, scope: !2909)
!2947 = !DILocation(line: 444, column: 12, scope: !2909)
!2948 = !DILocation(line: 453, column: 3, scope: !2909)
!2949 = !DILocation(line: 446, column: 18, scope: !2922)
!2950 = !DILocation(line: 0, scope: !2922)
!2951 = !DILocation(line: 447, column: 7, scope: !2922)
!2952 = !DILocation(line: 447, column: 25, scope: !2922)
!2953 = !DILocation(line: 448, column: 11, scope: !2922)
!2954 = distinct !{!2954, !2927, !2955}
!2955 = !DILocation(line: 449, column: 5, scope: !2909)
!2956 = !DILocation(line: 453, column: 12, scope: !2909)
!2957 = !DILocation(line: 455, column: 14, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 454, column: 5)
!2959 = !DILocation(line: 456, column: 7, scope: !2958)
!2960 = !DILocation(line: 456, column: 25, scope: !2958)
!2961 = !DILocation(line: 457, column: 11, scope: !2958)
!2962 = distinct !{!2962, !2948, !2963}
!2963 = !DILocation(line: 458, column: 5, scope: !2909)
!2964 = !DILocation(line: 459, column: 1, scope: !2909)
!2965 = distinct !DISubprogram(name: "relink_block_chain", scope: !3, file: !3, line: 645, type: !2966, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{null, !718}
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DILocalVariable(name: "stay_in_cfglayout_mode", arg: 1, scope: !2965, file: !3, line: 645, type: !718)
!2970 = !DILocalVariable(name: "bb", scope: !2965, file: !3, line: 647, type: !726)
!2971 = !DILocalVariable(name: "prev_bb", scope: !2965, file: !3, line: 647, type: !726)
!2972 = !DILocalVariable(name: "index", scope: !2965, file: !3, line: 648, type: !719)
!2973 = !DILocation(line: 0, scope: !2965)
!2974 = !DILocation(line: 651, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 651, column: 7)
!2976 = !DILocation(line: 651, column: 7, scope: !2965)
!2977 = !DILocation(line: 653, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 652, column: 5)
!2979 = !DILocation(line: 654, column: 17, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 654, column: 7)
!2981 = !DILocation(line: 654, column: 34, scope: !2980)
!2982 = !DILocation(line: 654, column: 12, scope: !2980)
!2983 = !DILocation(line: 0, scope: !2980)
!2984 = !DILocation(line: 654, column: 7, scope: !2980)
!2985 = !DILocation(line: 658, column: 13, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 657, column: 2)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 654, column: 7)
!2988 = !DILocation(line: 658, column: 4, scope: !2986)
!2989 = !DILocation(line: 659, column: 8, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 659, column: 8)
!2991 = !DILocation(line: 659, column: 8, scope: !2986)
!2992 = !DILocation(line: 660, column: 15, scope: !2990)
!2993 = !DILocation(line: 661, column: 8, scope: !2990)
!2994 = !DILocation(line: 661, column: 30, scope: !2990)
!2995 = !DILocation(line: 660, column: 6, scope: !2990)
!2996 = !DILocation(line: 662, column: 13, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 662, column: 13)
!2998 = !DILocation(line: 663, column: 6, scope: !2997)
!2999 = !DILocation(line: 663, column: 10, scope: !2997)
!3000 = !DILocation(line: 662, column: 13, scope: !2990)
!3001 = !DILocation(line: 664, column: 15, scope: !2997)
!3002 = !DILocation(line: 664, column: 6, scope: !2997)
!3003 = !DILocation(line: 666, column: 15, scope: !2997)
!3004 = !DILocation(line: 666, column: 40, scope: !2997)
!3005 = !DILocation(line: 666, column: 6, scope: !2997)
!3006 = !DILocation(line: 667, column: 13, scope: !2986)
!3007 = !DILocation(line: 667, column: 39, scope: !2986)
!3008 = !DILocation(line: 667, column: 4, scope: !2986)
!3009 = !DILocation(line: 656, column: 28, scope: !2987)
!3010 = !DILocation(line: 656, column: 38, scope: !2987)
!3011 = !DILocation(line: 654, column: 7, scope: !2987)
!3012 = distinct !{!3012, !2984, !3013}
!3013 = !DILocation(line: 668, column: 2, scope: !2980)
!3014 = !DILocation(line: 672, column: 13, scope: !2965)
!3015 = !DILocation(line: 673, column: 25, scope: !2965)
!3016 = !DILocation(line: 674, column: 3, scope: !2965)
!3017 = !DILocation(line: 674, column: 3, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 674, column: 3)
!3019 = !DILocation(line: 676, column: 11, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 675, column: 5)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 674, column: 3)
!3022 = !DILocation(line: 676, column: 19, scope: !3020)
!3023 = !DILocation(line: 677, column: 16, scope: !3020)
!3024 = !DILocation(line: 677, column: 24, scope: !3020)
!3025 = !DILocation(line: 674, column: 51, scope: !3021)
!3026 = !DILocation(line: 674, column: 3, scope: !3021)
!3027 = distinct !{!3027, !3017, !3028}
!3028 = !DILocation(line: 678, column: 5, scope: !3018)
!3029 = !DILocation(line: 679, column: 22, scope: !2965)
!3030 = !DILocation(line: 679, column: 12, scope: !2965)
!3031 = !DILocation(line: 679, column: 20, scope: !2965)
!3032 = !DILocation(line: 680, column: 3, scope: !2965)
!3033 = !DILocation(line: 680, column: 19, scope: !2965)
!3034 = !DILocation(line: 680, column: 27, scope: !2965)
!3035 = !DILocation(line: 683, column: 3, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 683, column: 3)
!3037 = !DILocation(line: 0, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 687, column: 11)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 684, column: 5)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 683, column: 3)
!3041 = !DILocation(line: 0, scope: !3036)
!3042 = !DILocation(line: 685, column: 11, scope: !3039)
!3043 = !DILocation(line: 685, column: 15, scope: !3039)
!3044 = !DILocation(line: 686, column: 11, scope: !3039)
!3045 = !DILocation(line: 686, column: 14, scope: !3039)
!3046 = !DILocation(line: 686, column: 19, scope: !3039)
!3047 = !DILocation(line: 686, column: 27, scope: !3039)
!3048 = !DILocation(line: 688, column: 30, scope: !3038)
!3049 = !DILocation(line: 688, column: 35, scope: !3038)
!3050 = !DILocation(line: 688, column: 42, scope: !3038)
!3051 = !DILocation(line: 688, column: 9, scope: !3038)
!3052 = !DILocation(line: 688, column: 14, scope: !3038)
!3053 = !DILocation(line: 688, column: 21, scope: !3038)
!3054 = !DILocation(line: 683, column: 3, scope: !3040)
!3055 = distinct !{!3055, !3035, !3056}
!3056 = !DILocation(line: 689, column: 5, scope: !3036)
!3057 = !DILocation(line: 694, column: 3, scope: !2965)
!3058 = !DILocation(line: 695, column: 7, scope: !2965)
!3059 = !DILocation(line: 696, column: 5, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 695, column: 7)
!3061 = !DILocation(line: 699, column: 3, scope: !2965)
!3062 = !DILocation(line: 700, column: 1, scope: !2965)
!3063 = distinct !DISubprogram(name: "verify_insn_chain", scope: !3, file: !3, line: 990, type: !2427, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069}
!3065 = !DILocalVariable(name: "x", scope: !3063, file: !3, line: 992, type: !758)
!3066 = !DILocalVariable(name: "prevx", scope: !3063, file: !3, line: 992, type: !758)
!3067 = !DILocalVariable(name: "nextx", scope: !3063, file: !3, line: 992, type: !758)
!3068 = !DILocalVariable(name: "insn_cnt1", scope: !3063, file: !3, line: 993, type: !719)
!3069 = !DILocalVariable(name: "insn_cnt2", scope: !3063, file: !3, line: 993, type: !719)
!3070 = !DILocation(line: 0, scope: !3063)
!3071 = !DILocation(line: 995, column: 41, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 995, column: 3)
!3073 = !DILocation(line: 995, column: 8, scope: !3072)
!3074 = !DILocation(line: 0, scope: !3072)
!3075 = !DILocation(line: 996, column: 10, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 995, column: 3)
!3077 = !DILocation(line: 995, column: 3, scope: !3072)
!3078 = !DILocation(line: 998, column: 5, scope: !3076)
!3079 = !DILocation(line: 997, column: 28, scope: !3076)
!3080 = !DILocation(line: 997, column: 36, scope: !3076)
!3081 = !DILocation(line: 995, column: 3, scope: !3076)
!3082 = distinct !{!3082, !3077, !3083}
!3083 = !DILocation(line: 998, column: 5, scope: !3072)
!3084 = !DILocation(line: 1000, column: 3, scope: !3063)
!3085 = !DILocation(line: 1002, column: 41, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 1002, column: 3)
!3087 = !DILocation(line: 1002, column: 8, scope: !3086)
!3088 = !DILocation(line: 0, scope: !3086)
!3089 = !DILocation(line: 1003, column: 10, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1002, column: 3)
!3091 = !DILocation(line: 1002, column: 3, scope: !3086)
!3092 = !DILocation(line: 1005, column: 5, scope: !3090)
!3093 = !DILocation(line: 1004, column: 28, scope: !3090)
!3094 = !DILocation(line: 1004, column: 36, scope: !3090)
!3095 = !DILocation(line: 1002, column: 3, scope: !3090)
!3096 = distinct !{!3096, !3091, !3097}
!3097 = !DILocation(line: 1005, column: 5, scope: !3086)
!3098 = !DILocation(line: 1007, column: 3, scope: !3063)
!3099 = !DILocation(line: 1008, column: 1, scope: !3063)
!3100 = distinct !DISubprogram(name: "cfg_layout_can_duplicate_bb_p", scope: !3, file: !3, line: 1115, type: !3101, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!718, !3103}
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !727, line: 112, baseType: !3104)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "bb", arg: 1, scope: !3100, file: !3, line: 1115, type: !3103)
!3108 = !DILocalVariable(name: "insn", scope: !3109, file: !3, line: 1126, type: !758)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1125, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1124, column: 7)
!3111 = !DILocation(line: 0, scope: !3100)
!3112 = !DILocation(line: 1120, column: 20, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1120, column: 7)
!3114 = !DILocation(line: 1120, column: 7, scope: !3113)
!3115 = !DILocation(line: 1120, column: 7, scope: !3100)
!3116 = !DILocation(line: 1124, column: 15, scope: !3110)
!3117 = !DILocation(line: 1124, column: 7, scope: !3110)
!3118 = !DILocation(line: 1124, column: 7, scope: !3100)
!3119 = !DILocation(line: 1126, column: 18, scope: !3109)
!3120 = !DILocation(line: 1127, column: 7, scope: !3109)
!3121 = !DILocation(line: 0, scope: !3109)
!3122 = !DILocation(line: 1129, column: 8, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 1129, column: 8)
!3124 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1128, column: 2)
!3125 = !DILocation(line: 1129, column: 22, scope: !3123)
!3126 = !DILocation(line: 1129, column: 33, scope: !3123)
!3127 = !DILocation(line: 1129, column: 25, scope: !3123)
!3128 = !DILocation(line: 1129, column: 8, scope: !3124)
!3129 = !DILocation(line: 1131, column: 16, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 1131, column: 8)
!3131 = !DILocation(line: 1131, column: 13, scope: !3130)
!3132 = !DILocation(line: 1131, column: 8, scope: !3124)
!3133 = !DILocation(line: 1133, column: 11, scope: !3124)
!3134 = distinct !{!3134, !3120, !3135}
!3135 = !DILocation(line: 1134, column: 2, scope: !3109)
!3136 = !DILocation(line: 1137, column: 3, scope: !3100)
!3137 = !DILocation(line: 1138, column: 1, scope: !3100)
!3138 = distinct !DISubprogram(name: "duplicate_insn_chain", scope: !3, file: !3, line: 1141, type: !2399, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144}
!3140 = !DILocalVariable(name: "from", arg: 1, scope: !3138, file: !3, line: 1141, type: !758)
!3141 = !DILocalVariable(name: "to", arg: 2, scope: !3138, file: !3, line: 1141, type: !758)
!3142 = !DILocalVariable(name: "insn", scope: !3138, file: !3, line: 1143, type: !758)
!3143 = !DILocalVariable(name: "last", scope: !3138, file: !3, line: 1143, type: !758)
!3144 = !DILocalVariable(name: "copy", scope: !3138, file: !3, line: 1143, type: !758)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 1147, column: 10, scope: !3138)
!3147 = !DILocation(line: 0, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1151, column: 3)
!3149 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1151, column: 3)
!3150 = !DILocation(line: 1151, column: 8, scope: !3149)
!3151 = !DILocation(line: 0, scope: !3149)
!3152 = !DILocation(line: 1151, column: 29, scope: !3148)
!3153 = !DILocation(line: 1151, column: 26, scope: !3148)
!3154 = !DILocation(line: 1151, column: 3, scope: !3149)
!3155 = !DILocation(line: 1153, column: 15, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1152, column: 5)
!3157 = !DILocation(line: 1153, column: 7, scope: !3156)
!3158 = !DILocation(line: 1162, column: 8, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1162, column: 8)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1154, column: 2)
!3161 = !DILocation(line: 1162, column: 34, scope: !3159)
!3162 = !DILocation(line: 1163, column: 8, scope: !3159)
!3163 = !DILocation(line: 1163, column: 37, scope: !3159)
!3164 = !DILocation(line: 1162, column: 8, scope: !3160)
!3165 = !DILocation(line: 1165, column: 42, scope: !3160)
!3166 = !DILocation(line: 1165, column: 11, scope: !3160)
!3167 = !DILocation(line: 1166, column: 11, scope: !3160)
!3168 = !DILocation(line: 1167, column: 4, scope: !3160)
!3169 = !DILocation(line: 1173, column: 4, scope: !3160)
!3170 = !DILocation(line: 1174, column: 4, scope: !3160)
!3171 = !DILocation(line: 1177, column: 12, scope: !3160)
!3172 = !DILocation(line: 1177, column: 4, scope: !3160)
!3173 = !DILocation(line: 1193, column: 8, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1178, column: 6)
!3175 = !DILocation(line: 1194, column: 8, scope: !3174)
!3176 = !DILocation(line: 1198, column: 8, scope: !3174)
!3177 = !DILocation(line: 1199, column: 6, scope: !3174)
!3178 = !DILocation(line: 1202, column: 4, scope: !3160)
!3179 = !DILocation(line: 1203, column: 2, scope: !3160)
!3180 = !DILocation(line: 1151, column: 52, scope: !3148)
!3181 = !DILocation(line: 1151, column: 3, scope: !3148)
!3182 = distinct !{!3182, !3154, !3183}
!3183 = !DILocation(line: 1204, column: 5, scope: !3149)
!3184 = !DILocation(line: 1205, column: 10, scope: !3138)
!3185 = !DILocation(line: 1206, column: 3, scope: !3138)
!3186 = !DILocation(line: 1207, column: 3, scope: !3138)
!3187 = distinct !DISubprogram(name: "cfg_layout_duplicate_bb", scope: !3, file: !3, line: 1218, type: !3188, scopeLine: 1219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!726, !726}
!3190 = !{!3191, !3192, !3193, !3194}
!3191 = !DILocalVariable(name: "bb", arg: 1, scope: !3187, file: !3, line: 1218, type: !726)
!3192 = !DILocalVariable(name: "insn", scope: !3187, file: !3, line: 1220, type: !758)
!3193 = !DILocalVariable(name: "new_bb", scope: !3187, file: !3, line: 1221, type: !726)
!3194 = !DILocalVariable(name: "bb_", scope: !3195, file: !3, line: 1228, type: !726)
!3195 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1228, column: 3)
!3196 = !DILocation(line: 0, scope: !3187)
!3197 = !DILocation(line: 1223, column: 32, scope: !3187)
!3198 = !DILocation(line: 1223, column: 46, scope: !3187)
!3199 = !DILocation(line: 1223, column: 10, scope: !3187)
!3200 = !DILocation(line: 1224, column: 32, scope: !3187)
!3201 = !DILocation(line: 1225, column: 11, scope: !3187)
!3202 = !DILocation(line: 1225, column: 18, scope: !3187)
!3203 = !DILocation(line: 1226, column: 11, scope: !3187)
!3204 = !DILocation(line: 1226, column: 27, scope: !3187)
!3205 = !DILocation(line: 1224, column: 12, scope: !3187)
!3206 = !DILocation(line: 0, scope: !3195)
!3207 = !DILocation(line: 1228, column: 3, scope: !3195)
!3208 = !DILocation(line: 1229, column: 14, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1229, column: 7)
!3210 = !DILocation(line: 1229, column: 19, scope: !3209)
!3211 = !DILocation(line: 1229, column: 7, scope: !3209)
!3212 = !DILocation(line: 1229, column: 7, scope: !3187)
!3213 = !DILocation(line: 1232, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1230, column: 5)
!3215 = !DILocation(line: 0, scope: !3214)
!3216 = !DILocation(line: 1232, column: 14, scope: !3214)
!3217 = distinct !{!3217, !3213, !3218}
!3218 = !DILocation(line: 1233, column: 9, scope: !3214)
!3219 = !DILocation(line: 1234, column: 14, scope: !3214)
!3220 = !DILocation(line: 1235, column: 11, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1235, column: 11)
!3222 = !DILocation(line: 1235, column: 11, scope: !3214)
!3223 = !DILocation(line: 1236, column: 52, scope: !3221)
!3224 = !DILocation(line: 1236, column: 27, scope: !3221)
!3225 = !DILocation(line: 1236, column: 10, scope: !3221)
!3226 = !DILocation(line: 1236, column: 13, scope: !3221)
!3227 = !DILocation(line: 1236, column: 18, scope: !3221)
!3228 = !DILocation(line: 1236, column: 25, scope: !3221)
!3229 = !DILocation(line: 1236, column: 2, scope: !3221)
!3230 = !DILocation(line: 1239, column: 14, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1239, column: 7)
!3232 = !DILocation(line: 1239, column: 19, scope: !3231)
!3233 = !DILocation(line: 1239, column: 7, scope: !3231)
!3234 = !DILocation(line: 1239, column: 7, scope: !3187)
!3235 = !DILocation(line: 1242, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1240, column: 5)
!3237 = !DILocation(line: 0, scope: !3236)
!3238 = !DILocation(line: 1242, column: 14, scope: !3236)
!3239 = distinct !{!3239, !3235, !3240}
!3240 = !DILocation(line: 1243, column: 9, scope: !3236)
!3241 = !DILocation(line: 1244, column: 14, scope: !3236)
!3242 = !DILocation(line: 1245, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1245, column: 11)
!3244 = !DILocation(line: 1245, column: 11, scope: !3236)
!3245 = !DILocation(line: 1246, column: 52, scope: !3243)
!3246 = !DILocation(line: 1246, column: 27, scope: !3243)
!3247 = !DILocation(line: 1246, column: 10, scope: !3243)
!3248 = !DILocation(line: 1246, column: 13, scope: !3243)
!3249 = !DILocation(line: 1246, column: 18, scope: !3243)
!3250 = !DILocation(line: 1246, column: 25, scope: !3243)
!3251 = !DILocation(line: 1246, column: 2, scope: !3243)
!3252 = !DILocation(line: 1249, column: 3, scope: !3187)
!3253 = distinct !DISubprogram(name: "cfg_layout_initialize", scope: !3, file: !3, line: 1259, type: !3254, scopeLine: 1260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !7}
!3256 = !{!3257, !3258, !3259}
!3257 = !DILocalVariable(name: "flags", arg: 1, scope: !3253, file: !3, line: 1259, type: !7)
!3258 = !DILocalVariable(name: "x", scope: !3253, file: !3, line: 1261, type: !758)
!3259 = !DILocalVariable(name: "bb", scope: !3253, file: !3, line: 1262, type: !726)
!3260 = !DILocation(line: 0, scope: !3253)
!3261 = !DILocation(line: 1264, column: 3, scope: !3253)
!3262 = !DILocation(line: 1266, column: 3, scope: !3253)
!3263 = !DILocation(line: 1268, column: 3, scope: !3253)
!3264 = !DILocation(line: 1271, column: 8, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1271, column: 3)
!3266 = !DILocation(line: 0, scope: !3265)
!3267 = !DILocation(line: 1271, column: 3, scope: !3265)
!3268 = !DILocation(line: 1273, column: 12, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1272, column: 5)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 1271, column: 3)
!3271 = !DILocation(line: 1274, column: 11, scope: !3269)
!3272 = !DILocation(line: 1274, column: 17, scope: !3269)
!3273 = !DILocation(line: 1271, column: 49, scope: !3270)
!3274 = !DILocation(line: 1271, column: 3, scope: !3270)
!3275 = distinct !{!3275, !3267, !3276}
!3276 = !DILocation(line: 1275, column: 5, scope: !3265)
!3277 = !DILocation(line: 1277, column: 34, scope: !3253)
!3278 = !DILocation(line: 1277, column: 3, scope: !3253)
!3279 = !DILocation(line: 1278, column: 1, scope: !3253)
!3280 = distinct !DISubprogram(name: "record_effective_endpoints", scope: !3, file: !3, line: 182, type: !2427, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "next_insn", scope: !3280, file: !3, line: 184, type: !758)
!3283 = !DILocalVariable(name: "bb", scope: !3280, file: !3, line: 185, type: !726)
!3284 = !DILocalVariable(name: "insn", scope: !3280, file: !3, line: 186, type: !758)
!3285 = !DILocalVariable(name: "end", scope: !3286, file: !3, line: 206, type: !758)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 205, column: 5)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 204, column: 3)
!3288 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 204, column: 3)
!3289 = !DILocation(line: 188, column: 15, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 188, column: 3)
!3291 = !DILocation(line: 0, scope: !3280)
!3292 = !DILocation(line: 188, column: 8, scope: !3290)
!3293 = !DILocation(line: 0, scope: !3290)
!3294 = !DILocation(line: 190, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 188, column: 3)
!3296 = !DILocation(line: 190, column: 11, scope: !3295)
!3297 = !DILocation(line: 191, column: 8, scope: !3295)
!3298 = !DILocation(line: 191, column: 11, scope: !3295)
!3299 = !DILocation(line: 191, column: 28, scope: !3295)
!3300 = !DILocation(line: 188, column: 3, scope: !3290)
!3301 = !DILocation(line: 192, column: 15, scope: !3295)
!3302 = !DILocation(line: 188, column: 3, scope: !3295)
!3303 = distinct !{!3303, !3300, !3304}
!3304 = !DILocation(line: 193, column: 5, scope: !3290)
!3305 = !DILocation(line: 195, column: 3, scope: !3280)
!3306 = !DILocation(line: 197, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 197, column: 7)
!3308 = !DILocation(line: 197, column: 7, scope: !3280)
!3309 = !DILocation(line: 199, column: 25, scope: !3307)
!3310 = !DILocation(line: 199, column: 39, scope: !3307)
!3311 = !DILocation(line: 199, column: 6, scope: !3307)
!3312 = !DILocation(line: 198, column: 5, scope: !3307)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 203, column: 15, scope: !3280)
!3315 = !DILocation(line: 204, column: 3, scope: !3288)
!3316 = !DILocation(line: 204, column: 3, scope: !3287)
!3317 = !DILocation(line: 0, scope: !3288)
!3318 = !DILocation(line: 208, column: 11, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 208, column: 11)
!3320 = !DILocation(line: 208, column: 36, scope: !3319)
!3321 = !DILocation(line: 208, column: 49, scope: !3319)
!3322 = !DILocation(line: 208, column: 11, scope: !3286)
!3323 = !DILocation(line: 209, column: 23, scope: !3319)
!3324 = !DILocation(line: 209, column: 9, scope: !3319)
!3325 = !DILocation(line: 209, column: 14, scope: !3319)
!3326 = !DILocation(line: 209, column: 21, scope: !3319)
!3327 = !DILocation(line: 209, column: 2, scope: !3319)
!3328 = !DILocation(line: 211, column: 13, scope: !3286)
!3329 = !DILocation(line: 0, scope: !3286)
!3330 = !DILocation(line: 212, column: 11, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 212, column: 11)
!3332 = !DILocation(line: 212, column: 35, scope: !3331)
!3333 = !DILocation(line: 212, column: 50, scope: !3331)
!3334 = !DILocation(line: 212, column: 11, scope: !3286)
!3335 = !DILocation(line: 213, column: 23, scope: !3331)
!3336 = !DILocation(line: 213, column: 9, scope: !3331)
!3337 = !DILocation(line: 213, column: 14, scope: !3331)
!3338 = !DILocation(line: 213, column: 21, scope: !3331)
!3339 = !DILocation(line: 214, column: 19, scope: !3286)
!3340 = !DILocation(line: 213, column: 2, scope: !3331)
!3341 = !DILocation(line: 0, scope: !3287)
!3342 = distinct !{!3342, !3315, !3343}
!3343 = !DILocation(line: 215, column: 5, scope: !3288)
!3344 = !DILocation(line: 217, column: 30, scope: !3280)
!3345 = !DILocation(line: 218, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 218, column: 7)
!3347 = !DILocation(line: 218, column: 7, scope: !3280)
!3348 = !DILocation(line: 219, column: 81, scope: !3346)
!3349 = !DILocation(line: 219, column: 34, scope: !3346)
!3350 = !DILocation(line: 219, column: 32, scope: !3346)
!3351 = !DILocation(line: 219, column: 5, scope: !3346)
!3352 = !DILocation(line: 220, column: 1, scope: !3280)
!3353 = distinct !DISubprogram(name: "break_superblocks", scope: !3, file: !3, line: 1282, type: !2427, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3354)
!3354 = !{!3355, !3366, !3367}
!3355 = !DILocalVariable(name: "superblocks", scope: !3353, file: !3, line: 1284, type: !3356)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3357, line: 45, baseType: !3358)
!3357 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3357, line: 39, size: 192, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3359, file: !3357, line: 41, baseType: !717, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3359, file: !3357, line: 42, baseType: !7, size: 32, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3359, file: !3357, line: 43, baseType: !7, size: 32, offset: 96)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3359, file: !3357, line: 44, baseType: !3365, size: 64, offset: 128)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 64, elements: !792)
!3366 = !DILocalVariable(name: "need", scope: !3353, file: !3, line: 1285, type: !718)
!3367 = !DILocalVariable(name: "bb", scope: !3353, file: !3, line: 1286, type: !726)
!3368 = !DILocation(line: 0, scope: !3353)
!3369 = !DILocation(line: 1288, column: 32, scope: !3353)
!3370 = !DILocation(line: 1288, column: 17, scope: !3353)
!3371 = !DILocation(line: 1289, column: 3, scope: !3353)
!3372 = !DILocation(line: 1291, column: 3, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1291, column: 3)
!3374 = !DILocation(line: 1291, column: 3, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 1291, column: 3)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 1292, column: 13, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1292, column: 9)
!3379 = !DILocation(line: 1292, column: 19, scope: !3378)
!3380 = !DILocation(line: 1292, column: 9, scope: !3375)
!3381 = !DILocation(line: 1294, column: 12, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1293, column: 7)
!3383 = !DILocation(line: 1295, column: 28, scope: !3382)
!3384 = !DILocation(line: 1295, column: 2, scope: !3382)
!3385 = !DILocation(line: 1297, column: 7, scope: !3382)
!3386 = !DILocation(line: 0, scope: !3375)
!3387 = distinct !{!3387, !3372, !3388}
!3388 = !DILocation(line: 1297, column: 7, scope: !3373)
!3389 = !DILocation(line: 1299, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1299, column: 7)
!3391 = !DILocation(line: 1299, column: 7, scope: !3353)
!3392 = !DILocation(line: 1301, column: 28, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1300, column: 5)
!3394 = !DILocation(line: 1301, column: 7, scope: !3393)
!3395 = !DILocation(line: 1302, column: 7, scope: !3393)
!3396 = !DILocation(line: 1303, column: 5, scope: !3393)
!3397 = !DILocation(line: 1305, column: 9, scope: !3353)
!3398 = !DILocation(line: 1305, column: 3, scope: !3353)
!3399 = !DILocation(line: 1306, column: 1, scope: !3353)
!3400 = distinct !DISubprogram(name: "SET_BIT", scope: !3357, file: !3357, line: 63, type: !3401, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !3356, !7}
!3403 = !{!3404, !3405, !3406}
!3404 = !DILocalVariable(name: "map", arg: 1, scope: !3400, file: !3357, line: 63, type: !3356)
!3405 = !DILocalVariable(name: "bitno", arg: 2, scope: !3400, file: !3357, line: 63, type: !7)
!3406 = !DILocalVariable(name: "oldbit", scope: !3407, file: !3357, line: 67, type: !718)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3357, line: 66, column: 5)
!3408 = distinct !DILexicalBlock(scope: !3400, file: !3357, line: 65, column: 7)
!3409 = !DILocation(line: 0, scope: !3400)
!3410 = !DILocation(line: 65, column: 12, scope: !3408)
!3411 = !DILocation(line: 65, column: 7, scope: !3408)
!3412 = !DILocation(line: 65, column: 7, scope: !3400)
!3413 = !DILocation(line: 73, column: 40, scope: !3400)
!3414 = !DILocation(line: 73, column: 29, scope: !3400)
!3415 = !DILocation(line: 72, column: 19, scope: !3400)
!3416 = !DILocation(line: 72, column: 3, scope: !3400)
!3417 = !DILocation(line: 68, column: 16, scope: !3407)
!3418 = !DILocation(line: 69, column: 12, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3407, file: !3357, line: 69, column: 11)
!3420 = !DILocation(line: 69, column: 11, scope: !3407)
!3421 = !DILocation(line: 70, column: 2, scope: !3419)
!3422 = !DILocation(line: 70, column: 41, scope: !3419)
!3423 = !DILocation(line: 73, column: 5, scope: !3400)
!3424 = !DILocation(line: 74, column: 1, scope: !3400)
!3425 = distinct !DISubprogram(name: "cfg_layout_finalize", scope: !3, file: !3, line: 1312, type: !2427, scopeLine: 1313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!3426 = !DILocation(line: 1317, column: 3, scope: !3425)
!3427 = !DILocation(line: 1318, column: 3, scope: !3425)
!3428 = !DILocation(line: 1325, column: 3, scope: !3425)
!3429 = !DILocation(line: 1327, column: 24, scope: !3425)
!3430 = !DILocation(line: 1327, column: 3, scope: !3425)
!3431 = !DILocation(line: 1328, column: 3, scope: !3425)
!3432 = !DILocation(line: 1334, column: 1, scope: !3425)
!3433 = distinct !DISubprogram(name: "force_one_exit_fallthru", scope: !3, file: !3, line: 1060, type: !2427, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3445, !3446}
!3435 = !DILocalVariable(name: "e", scope: !3433, file: !3, line: 1062, type: !744)
!3436 = !DILocalVariable(name: "predecessor", scope: !3433, file: !3, line: 1062, type: !744)
!3437 = !DILocalVariable(name: "more", scope: !3433, file: !3, line: 1063, type: !718)
!3438 = !DILocalVariable(name: "ei", scope: !3433, file: !3, line: 1064, type: !3439)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !148, line: 682, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 679, size: 128, elements: !3441)
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3440, file: !148, line: 680, baseType: !7, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3440, file: !148, line: 681, baseType: !3444, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3445 = !DILocalVariable(name: "forwarder", scope: !3433, file: !3, line: 1065, type: !726)
!3446 = !DILocalVariable(name: "bb", scope: !3433, file: !3, line: 1065, type: !726)
!3447 = !DILocation(line: 1062, column: 3, scope: !3433)
!3448 = !DILocation(line: 0, scope: !3433)
!3449 = !DILocation(line: 1064, column: 3, scope: !3433)
!3450 = !DILocation(line: 1067, column: 3, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1067, column: 3)
!3452 = !DILocation(line: 0, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 1067, column: 3)
!3454 = !DILocation(line: 1067, column: 3, scope: !3453)
!3455 = !DILocation(line: 1068, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 1068, column: 9)
!3457 = !DILocation(line: 1068, column: 12, scope: !3456)
!3458 = !DILocation(line: 1068, column: 18, scope: !3456)
!3459 = !DILocation(line: 1068, column: 9, scope: !3453)
!3460 = !DILocation(line: 1070, column: 18, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1070, column: 6)
!3462 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1069, column: 7)
!3463 = !DILocation(line: 1070, column: 6, scope: !3462)
!3464 = !DILocation(line: 1077, column: 7, scope: !3462)
!3465 = distinct !{!3465, !3450, !3466}
!3466 = !DILocation(line: 1077, column: 7, scope: !3451)
!3467 = !DILocation(line: 1079, column: 7, scope: !3433)
!3468 = !DILocation(line: 1084, column: 15, scope: !3433)
!3469 = !DILocation(line: 1085, column: 13, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1085, column: 3)
!3471 = !DILocation(line: 1085, column: 8, scope: !3470)
!3472 = !DILocation(line: 1085, column: 52, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 1085, column: 3)
!3474 = !DILocation(line: 1085, column: 50, scope: !3473)
!3475 = !DILocation(line: 1085, column: 3, scope: !3470)
!3476 = !DILocation(line: 1087, column: 14, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1087, column: 11)
!3478 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1086, column: 5)
!3479 = !DILocation(line: 1087, column: 18, scope: !3477)
!3480 = !DILocation(line: 1088, column: 4, scope: !3477)
!3481 = !DILocation(line: 1088, column: 12, scope: !3477)
!3482 = !DILocation(line: 1088, column: 18, scope: !3477)
!3483 = !DILocation(line: 1087, column: 11, scope: !3478)
!3484 = !DILocation(line: 1089, column: 2, scope: !3477)
!3485 = !DILocation(line: 1091, column: 2, scope: !3477)
!3486 = !DILocation(line: 1085, column: 3, scope: !3473)
!3487 = distinct !{!3487, !3475, !3488}
!3488 = !DILocation(line: 1092, column: 5, scope: !3470)
!3489 = !DILocation(line: 1096, column: 3, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1096, column: 3)
!3491 = !DILocation(line: 0, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 1096, column: 3)
!3493 = !DILocation(line: 0, scope: !3490)
!3494 = !DILocation(line: 1096, column: 3, scope: !3492)
!3495 = !DILocation(line: 1098, column: 15, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1098, column: 11)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1097, column: 5)
!3498 = !DILocation(line: 1098, column: 19, scope: !3496)
!3499 = !DILocation(line: 1098, column: 33, scope: !3496)
!3500 = !DILocation(line: 1098, column: 27, scope: !3496)
!3501 = !DILocation(line: 1100, column: 12, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1099, column: 2)
!3503 = !DILocation(line: 1101, column: 4, scope: !3502)
!3504 = distinct !{!3504, !3489, !3505}
!3505 = !DILocation(line: 1103, column: 5, scope: !3490)
!3506 = !DILocation(line: 1104, column: 1, scope: !3433)
!3507 = distinct !DISubprogram(name: "fixup_reorder_chain", scope: !3, file: !3, line: 706, type: !2427, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509, !3510, !3511, !3515, !3516, !3517, !3518, !3519, !3520, !3528, !3532, !3536, !3537, !3542, !3543, !3548}
!3509 = !DILocalVariable(name: "bb", scope: !3507, file: !3, line: 708, type: !726)
!3510 = !DILocalVariable(name: "insn", scope: !3507, file: !3, line: 709, type: !758)
!3511 = !DILocalVariable(name: "e_fall", scope: !3512, file: !3, line: 767, type: !744)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 766, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 765, column: 3)
!3514 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 765, column: 3)
!3515 = !DILocalVariable(name: "e_taken", scope: !3512, file: !3, line: 767, type: !744)
!3516 = !DILocalVariable(name: "e", scope: !3512, file: !3, line: 767, type: !744)
!3517 = !DILocalVariable(name: "bb_end_insn", scope: !3512, file: !3, line: 768, type: !758)
!3518 = !DILocalVariable(name: "nb", scope: !3512, file: !3, line: 769, type: !726)
!3519 = !DILocalVariable(name: "ei", scope: !3512, file: !3, line: 770, type: !3439)
!3520 = !DILocalVariable(name: "note", scope: !3521, file: !3, line: 819, type: !758)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 818, column: 3)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 817, column: 17)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 810, column: 12)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 789, column: 6)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 788, column: 8)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 787, column: 2)
!3527 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 786, column: 11)
!3528 = !DILocalVariable(name: "bb_", scope: !3529, file: !3, line: 910, type: !726)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 910, column: 4)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 900, column: 2)
!3531 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 899, column: 11)
!3532 = !DILocalVariable(name: "e", scope: !3533, file: !3, line: 925, type: !744)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 924, column: 5)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 923, column: 3)
!3535 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 923, column: 3)
!3536 = !DILocalVariable(name: "ei", scope: !3533, file: !3, line: 926, type: !3439)
!3537 = !DILocalVariable(name: "e", scope: !3538, file: !3, line: 941, type: !744)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 940, column: 7)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 939, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 939, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 938, column: 7)
!3542 = !DILocalVariable(name: "ei", scope: !3538, file: !3, line: 942, type: !3439)
!3543 = !DILocalVariable(name: "nb", scope: !3544, file: !3, line: 947, type: !726)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 946, column: 6)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 945, column: 8)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 944, column: 9)
!3547 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 944, column: 9)
!3548 = !DILocalVariable(name: "end", scope: !3544, file: !3, line: 948, type: !758)
!3549 = !DILocation(line: 0, scope: !3507)
!3550 = !DILocation(line: 711, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 711, column: 7)
!3552 = !DILocation(line: 711, column: 7, scope: !3507)
!3553 = !DILocation(line: 713, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 712, column: 5)
!3555 = !DILocation(line: 0, scope: !3554)
!3556 = !DILocation(line: 715, column: 7, scope: !3554)
!3557 = !DILocation(line: 715, column: 14, scope: !3554)
!3558 = distinct !{!3558, !3556, !3559}
!3559 = !DILocation(line: 716, column: 9, scope: !3554)
!3560 = !DILocation(line: 722, column: 13, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 722, column: 3)
!3562 = !DILocation(line: 722, column: 30, scope: !3561)
!3563 = !DILocation(line: 722, column: 8, scope: !3561)
!3564 = !DILocation(line: 0, scope: !3561)
!3565 = !DILocation(line: 722, column: 3, scope: !3561)
!3566 = !DILocation(line: 724, column: 15, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 724, column: 11)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 723, column: 5)
!3569 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 722, column: 3)
!3570 = !DILocation(line: 724, column: 18, scope: !3567)
!3571 = !DILocation(line: 724, column: 23, scope: !3567)
!3572 = !DILocation(line: 724, column: 11, scope: !3567)
!3573 = !DILocation(line: 724, column: 11, scope: !3568)
!3574 = !DILocation(line: 726, column: 8, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 726, column: 8)
!3576 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 725, column: 2)
!3577 = !DILocation(line: 726, column: 8, scope: !3576)
!3578 = !DILocation(line: 727, column: 6, scope: !3575)
!3579 = !DILocation(line: 727, column: 23, scope: !3575)
!3580 = !DILocation(line: 729, column: 6, scope: !3575)
!3581 = !DILocation(line: 730, column: 4, scope: !3576)
!3582 = !DILocation(line: 730, column: 35, scope: !3576)
!3583 = !DILocation(line: 731, column: 18, scope: !3576)
!3584 = !DILocation(line: 731, column: 23, scope: !3576)
!3585 = !DILocation(line: 0, scope: !3576)
!3586 = !DILocation(line: 732, column: 4, scope: !3576)
!3587 = !DILocation(line: 732, column: 11, scope: !3576)
!3588 = distinct !{!3588, !3586, !3589}
!3589 = !DILocation(line: 733, column: 13, scope: !3576)
!3590 = !DILocation(line: 735, column: 11, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 735, column: 11)
!3592 = !DILocation(line: 0, scope: !3591)
!3593 = !DILocation(line: 735, column: 11, scope: !3568)
!3594 = !DILocation(line: 736, column: 2, scope: !3591)
!3595 = !DILocation(line: 736, column: 19, scope: !3591)
!3596 = !DILocation(line: 738, column: 2, scope: !3591)
!3597 = !DILocation(line: 739, column: 7, scope: !3568)
!3598 = !DILocation(line: 739, column: 32, scope: !3568)
!3599 = !DILocation(line: 740, column: 14, scope: !3568)
!3600 = !DILocation(line: 741, column: 23, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 741, column: 11)
!3602 = !DILocation(line: 741, column: 11, scope: !3601)
!3603 = !DILocation(line: 741, column: 11, scope: !3568)
!3604 = !DILocation(line: 743, column: 4, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 742, column: 2)
!3606 = !DILocation(line: 743, column: 21, scope: !3605)
!3607 = !DILocation(line: 744, column: 4, scope: !3605)
!3608 = !DILocation(line: 744, column: 35, scope: !3605)
!3609 = !DILocation(line: 745, column: 4, scope: !3605)
!3610 = !DILocation(line: 0, scope: !3568)
!3611 = !DILocation(line: 745, column: 11, scope: !3605)
!3612 = distinct !{!3612, !3609, !3613}
!3613 = !DILocation(line: 746, column: 13, scope: !3605)
!3614 = !DILocation(line: 722, column: 66, scope: !3569)
!3615 = !DILocation(line: 740, column: 12, scope: !3568)
!3616 = !DILocation(line: 722, column: 3, scope: !3569)
!3617 = distinct !{!3617, !3565, !3618}
!3618 = !DILocation(line: 748, column: 5, scope: !3561)
!3619 = !DILocation(line: 750, column: 22, scope: !3507)
!3620 = !DILocation(line: 750, column: 3, scope: !3507)
!3621 = !DILocation(line: 750, column: 20, scope: !3507)
!3622 = !DILocation(line: 751, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 751, column: 7)
!3624 = !DILocation(line: 751, column: 7, scope: !3507)
!3625 = !DILocation(line: 752, column: 5, scope: !3623)
!3626 = !DILocation(line: 752, column: 44, scope: !3623)
!3627 = !DILocation(line: 754, column: 3, scope: !3507)
!3628 = !DILocation(line: 754, column: 10, scope: !3507)
!3629 = distinct !{!3629, !3627, !3630}
!3630 = !DILocation(line: 755, column: 12, scope: !3507)
!3631 = !DILocation(line: 757, column: 3, scope: !3507)
!3632 = !DILocation(line: 765, column: 13, scope: !3514)
!3633 = !DILocation(line: 765, column: 30, scope: !3514)
!3634 = !DILocation(line: 0, scope: !3512)
!3635 = !DILocation(line: 0, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 779, column: 7)
!3637 = !DILocation(line: 0, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 779, column: 7)
!3639 = !DILocation(line: 765, column: 8, scope: !3514)
!3640 = !DILocation(line: 0, scope: !3514)
!3641 = !DILocation(line: 765, column: 3, scope: !3514)
!3642 = !DILocation(line: 767, column: 7, scope: !3512)
!3643 = !DILocation(line: 770, column: 7, scope: !3512)
!3644 = !DILocation(line: 772, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 772, column: 11)
!3646 = !DILocation(line: 772, column: 34, scope: !3645)
!3647 = !DILocation(line: 772, column: 11, scope: !3512)
!3648 = !DILocation(line: 779, column: 7, scope: !3636)
!3649 = !DILocation(line: 777, column: 15, scope: !3512)
!3650 = !DILocation(line: 779, column: 7, scope: !3638)
!3651 = !DILocation(line: 780, column: 6, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 780, column: 6)
!3653 = !DILocation(line: 780, column: 9, scope: !3652)
!3654 = !DILocation(line: 780, column: 15, scope: !3652)
!3655 = !DILocation(line: 780, column: 6, scope: !3638)
!3656 = !DILocation(line: 782, column: 23, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 782, column: 11)
!3658 = !DILocation(line: 782, column: 11, scope: !3652)
!3659 = distinct !{!3659, !3648, !3660}
!3660 = !DILocation(line: 783, column: 14, scope: !3636)
!3661 = !DILocation(line: 785, column: 21, scope: !3512)
!3662 = !DILocation(line: 786, column: 11, scope: !3527)
!3663 = !DILocation(line: 786, column: 11, scope: !3512)
!3664 = !DILocation(line: 788, column: 8, scope: !3525)
!3665 = !DILocation(line: 788, column: 8, scope: !3526)
!3666 = !DILocation(line: 794, column: 13, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 794, column: 12)
!3668 = !DILocation(line: 794, column: 12, scope: !3524)
!3669 = !DILocation(line: 796, column: 5, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 795, column: 3)
!3671 = !DILocation(line: 797, column: 26, scope: !3670)
!3672 = !DILocation(line: 797, column: 12, scope: !3670)
!3673 = !DILocation(line: 797, column: 17, scope: !3670)
!3674 = !DILocation(line: 797, column: 24, scope: !3670)
!3675 = !DILocation(line: 798, column: 5, scope: !3670)
!3676 = !DILocation(line: 802, column: 16, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 802, column: 12)
!3678 = !DILocation(line: 802, column: 31, scope: !3677)
!3679 = !DILocation(line: 802, column: 20, scope: !3677)
!3680 = !DILocation(line: 803, column: 5, scope: !3677)
!3681 = !DILocation(line: 803, column: 24, scope: !3677)
!3682 = !DILocation(line: 803, column: 21, scope: !3677)
!3683 = !DILocation(line: 802, column: 12, scope: !3524)
!3684 = !DILocation(line: 810, column: 13, scope: !3523)
!3685 = !DILocation(line: 810, column: 12, scope: !3524)
!3686 = !DILocation(line: 817, column: 37, scope: !3522)
!3687 = !DILocation(line: 817, column: 25, scope: !3522)
!3688 = !DILocation(line: 817, column: 17, scope: !3523)
!3689 = !DILocation(line: 819, column: 16, scope: !3521)
!3690 = !DILocation(line: 0, scope: !3521)
!3691 = !DILocation(line: 821, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 821, column: 9)
!3693 = !DILocation(line: 822, column: 9, scope: !3692)
!3694 = !DILocation(line: 822, column: 12, scope: !3692)
!3695 = !DILocation(line: 822, column: 36, scope: !3692)
!3696 = !DILocation(line: 823, column: 9, scope: !3692)
!3697 = !DILocation(line: 824, column: 20, scope: !3692)
!3698 = !DILocation(line: 824, column: 28, scope: !3692)
!3699 = !DILocation(line: 824, column: 25, scope: !3692)
!3700 = !DILocation(line: 824, column: 12, scope: !3692)
!3701 = !DILocation(line: 826, column: 14, scope: !3692)
!3702 = !DILocation(line: 823, column: 12, scope: !3692)
!3703 = !DILocation(line: 821, column: 9, scope: !3521)
!3704 = !DILocation(line: 828, column: 17, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 827, column: 7)
!3706 = !DILocation(line: 828, column: 23, scope: !3705)
!3707 = !DILocation(line: 833, column: 18, scope: !3705)
!3708 = !DILocation(line: 833, column: 24, scope: !3705)
!3709 = !DILocation(line: 834, column: 9, scope: !3705)
!3710 = !DILocation(line: 835, column: 11, scope: !3705)
!3711 = !DILocation(line: 836, column: 7, scope: !3705)
!3712 = !DILocation(line: 841, column: 27, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 841, column: 17)
!3714 = !DILocation(line: 841, column: 33, scope: !3713)
!3715 = !DILocation(line: 842, column: 10, scope: !3713)
!3716 = !DILocation(line: 842, column: 23, scope: !3713)
!3717 = !DILocation(line: 842, column: 29, scope: !3713)
!3718 = !DILocation(line: 841, column: 17, scope: !3522)
!3719 = !DILocation(line: 848, column: 10, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 847, column: 17)
!3721 = !DILocation(line: 850, column: 12, scope: !3720)
!3722 = !DILocation(line: 847, column: 17, scope: !3720)
!3723 = !DILocation(line: 847, column: 17, scope: !3713)
!3724 = !DILocation(line: 852, column: 13, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 851, column: 3)
!3726 = !DILocation(line: 852, column: 19, scope: !3725)
!3727 = !DILocation(line: 857, column: 20, scope: !3725)
!3728 = !DILocation(line: 858, column: 5, scope: !3725)
!3729 = !DILocation(line: 859, column: 5, scope: !3725)
!3730 = !DILocation(line: 862, column: 35, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 862, column: 13)
!3732 = !DILocation(line: 862, column: 13, scope: !3731)
!3733 = !DILocation(line: 862, column: 58, scope: !3731)
!3734 = !DILocation(line: 862, column: 13, scope: !3525)
!3735 = !DILocation(line: 865, column: 16, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 865, column: 12)
!3737 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 863, column: 6)
!3738 = !DILocation(line: 865, column: 31, scope: !3736)
!3739 = !DILocation(line: 865, column: 20, scope: !3736)
!3740 = !DILocation(line: 866, column: 5, scope: !3736)
!3741 = !DILocation(line: 866, column: 24, scope: !3736)
!3742 = !DILocation(line: 866, column: 21, scope: !3736)
!3743 = !DILocation(line: 865, column: 12, scope: !3737)
!3744 = !DILocation(line: 876, column: 8, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 872, column: 6)
!3746 = !DILocation(line: 885, column: 10, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 885, column: 8)
!3748 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 881, column: 2)
!3749 = !DILocation(line: 885, column: 8, scope: !3748)
!3750 = !DILocation(line: 889, column: 12, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 889, column: 8)
!3752 = !DILocation(line: 889, column: 27, scope: !3751)
!3753 = !DILocation(line: 889, column: 16, scope: !3751)
!3754 = !DILocation(line: 889, column: 8, scope: !3748)
!3755 = !DILocation(line: 893, column: 24, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 893, column: 8)
!3757 = !DILocation(line: 893, column: 21, scope: !3756)
!3758 = !DILocation(line: 893, column: 8, scope: !3748)
!3759 = !DILocation(line: 898, column: 12, scope: !3512)
!3760 = !DILocation(line: 899, column: 11, scope: !3531)
!3761 = !DILocation(line: 899, column: 11, scope: !3512)
!3762 = !DILocation(line: 901, column: 8, scope: !3530)
!3763 = !DILocation(line: 901, column: 11, scope: !3530)
!3764 = !DILocation(line: 901, column: 16, scope: !3530)
!3765 = !DILocation(line: 901, column: 24, scope: !3530)
!3766 = !DILocation(line: 902, column: 18, scope: !3530)
!3767 = !DILocation(line: 902, column: 8, scope: !3530)
!3768 = !DILocation(line: 902, column: 12, scope: !3530)
!3769 = !DILocation(line: 903, column: 12, scope: !3530)
!3770 = !DILocation(line: 910, column: 4, scope: !3529)
!3771 = !DILocation(line: 0, scope: !3529)
!3772 = !DILocation(line: 911, column: 8, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 911, column: 8)
!3774 = !DILocation(line: 912, column: 8, scope: !3773)
!3775 = !DILocation(line: 912, column: 19, scope: !3773)
!3776 = !DILocation(line: 912, column: 11, scope: !3773)
!3777 = !DILocation(line: 913, column: 8, scope: !3773)
!3778 = !DILocation(line: 913, column: 11, scope: !3773)
!3779 = !DILocation(line: 914, column: 8, scope: !3773)
!3780 = !DILocation(line: 914, column: 12, scope: !3773)
!3781 = !DILocation(line: 915, column: 8, scope: !3773)
!3782 = !DILocation(line: 915, column: 12, scope: !3773)
!3783 = !DILocation(line: 915, column: 31, scope: !3773)
!3784 = !DILocation(line: 915, column: 37, scope: !3773)
!3785 = !DILocation(line: 911, column: 8, scope: !3530)
!3786 = !DILocation(line: 916, column: 20, scope: !3773)
!3787 = !DILocation(line: 916, column: 6, scope: !3773)
!3788 = !DILocation(line: 918, column: 5, scope: !3513)
!3789 = !DILocation(line: 765, column: 67, scope: !3513)
!3790 = !DILocation(line: 765, column: 3, scope: !3513)
!3791 = distinct !{!3791, !3641, !3792}
!3792 = !DILocation(line: 918, column: 5, scope: !3514)
!3793 = !DILocation(line: 920, column: 3, scope: !3507)
!3794 = !DILocation(line: 923, column: 3, scope: !3535)
!3795 = !DILocation(line: 0, scope: !3533)
!3796 = !DILocation(line: 0, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 928, column: 7)
!3798 = !DILocation(line: 0, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 928, column: 7)
!3800 = !DILocation(line: 923, column: 3, scope: !3534)
!3801 = !DILocation(line: 0, scope: !3535)
!3802 = !DILocation(line: 925, column: 7, scope: !3533)
!3803 = !DILocation(line: 926, column: 7, scope: !3533)
!3804 = !DILocation(line: 928, column: 7, scope: !3797)
!3805 = !DILocation(line: 928, column: 7, scope: !3799)
!3806 = !DILocation(line: 932, column: 11, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 932, column: 11)
!3808 = !DILocation(line: 929, column: 6, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 929, column: 6)
!3810 = !DILocation(line: 929, column: 9, scope: !3809)
!3811 = !DILocation(line: 929, column: 15, scope: !3809)
!3812 = !DILocation(line: 929, column: 6, scope: !3799)
!3813 = distinct !{!3813, !3804, !3814}
!3814 = !DILocation(line: 930, column: 4, scope: !3797)
!3815 = !DILocation(line: 932, column: 13, scope: !3807)
!3816 = !DILocation(line: 932, column: 34, scope: !3807)
!3817 = !DILocation(line: 932, column: 42, scope: !3807)
!3818 = !DILocation(line: 932, column: 17, scope: !3807)
!3819 = !DILocation(line: 932, column: 11, scope: !3533)
!3820 = !DILocation(line: 933, column: 21, scope: !3807)
!3821 = !DILocation(line: 933, column: 2, scope: !3807)
!3822 = !DILocation(line: 934, column: 5, scope: !3534)
!3823 = !DILocation(line: 0, scope: !3534)
!3824 = distinct !{!3824, !3794, !3825}
!3825 = !DILocation(line: 934, column: 5, scope: !3535)
!3826 = !DILocation(line: 938, column: 8, scope: !3541)
!3827 = !DILocation(line: 938, column: 7, scope: !3507)
!3828 = !DILocation(line: 939, column: 5, scope: !3540)
!3829 = !DILocation(line: 0, scope: !3538)
!3830 = !DILocation(line: 0, scope: !3547)
!3831 = !DILocation(line: 0, scope: !3546)
!3832 = !DILocation(line: 939, column: 5, scope: !3539)
!3833 = !DILocation(line: 0, scope: !3540)
!3834 = !DILocation(line: 941, column: 9, scope: !3538)
!3835 = !DILocation(line: 942, column: 9, scope: !3538)
!3836 = !DILocation(line: 944, column: 9, scope: !3547)
!3837 = !DILocation(line: 944, column: 9, scope: !3546)
!3838 = !DILocation(line: 945, column: 8, scope: !3545)
!3839 = !DILocation(line: 945, column: 11, scope: !3545)
!3840 = !DILocation(line: 945, column: 22, scope: !3545)
!3841 = !DILocation(line: 945, column: 30, scope: !3545)
!3842 = !DILocation(line: 945, column: 36, scope: !3545)
!3843 = !DILocation(line: 945, column: 8, scope: !3546)
!3844 = !DILocation(line: 950, column: 15, scope: !3544)
!3845 = !DILocation(line: 951, column: 14, scope: !3544)
!3846 = !DILocation(line: 0, scope: !3544)
!3847 = !DILocation(line: 952, column: 8, scope: !3544)
!3848 = !DILocation(line: 952, column: 20, scope: !3544)
!3849 = !DILocation(line: 953, column: 8, scope: !3544)
!3850 = !DILocation(line: 953, column: 13, scope: !3544)
!3851 = !DILocation(line: 953, column: 27, scope: !3544)
!3852 = !DILocation(line: 953, column: 30, scope: !3544)
!3853 = !DILocation(line: 953, column: 50, scope: !3544)
!3854 = !DILocation(line: 954, column: 10, scope: !3544)
!3855 = distinct !{!3855, !3847, !3854}
!3856 = !DILocation(line: 956, column: 5, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 955, column: 12)
!3858 = !DILocation(line: 956, column: 20, scope: !3857)
!3859 = !DILocation(line: 956, column: 8, scope: !3857)
!3860 = !DILocation(line: 955, column: 12, scope: !3544)
!3861 = !DILocation(line: 958, column: 26, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 958, column: 12)
!3863 = !DILocation(line: 0, scope: !3862)
!3864 = !DILocation(line: 958, column: 12, scope: !3862)
!3865 = !DILocation(line: 959, column: 5, scope: !3862)
!3866 = !DILocation(line: 964, column: 12, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 964, column: 12)
!3868 = !DILocation(line: 959, column: 8, scope: !3862)
!3869 = !DILocation(line: 959, column: 39, scope: !3862)
!3870 = !DILocation(line: 958, column: 12, scope: !3544)
!3871 = !DILocation(line: 961, column: 41, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 960, column: 3)
!3873 = !DILocation(line: 961, column: 36, scope: !3872)
!3874 = !DILocation(line: 962, column: 5, scope: !3872)
!3875 = !DILocation(line: 964, column: 15, scope: !3867)
!3876 = !DILocation(line: 964, column: 23, scope: !3867)
!3877 = !DILocation(line: 964, column: 20, scope: !3867)
!3878 = !DILocation(line: 964, column: 12, scope: !3544)
!3879 = !DILocation(line: 966, column: 12, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 965, column: 3)
!3881 = !DILocation(line: 967, column: 11, scope: !3880)
!3882 = !DILocation(line: 968, column: 5, scope: !3880)
!3883 = !DILocation(line: 0, scope: !3880)
!3884 = !DILocation(line: 968, column: 17, scope: !3880)
!3885 = !DILocation(line: 968, column: 24, scope: !3880)
!3886 = !DILocation(line: 968, column: 28, scope: !3880)
!3887 = !DILocation(line: 969, column: 14, scope: !3880)
!3888 = distinct !{!3888, !3882, !3887}
!3889 = !DILocation(line: 970, column: 21, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 970, column: 9)
!3891 = !DILocation(line: 970, column: 24, scope: !3890)
!3892 = !DILocation(line: 971, column: 9, scope: !3890)
!3893 = !DILocation(line: 971, column: 54, scope: !3890)
!3894 = !DILocation(line: 971, column: 12, scope: !3890)
!3895 = !DILocation(line: 970, column: 9, scope: !3880)
!3896 = !DILocation(line: 974, column: 25, scope: !3544)
!3897 = !DILocation(line: 974, column: 13, scope: !3544)
!3898 = !DILocation(line: 975, column: 13, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 975, column: 12)
!3900 = !DILocation(line: 975, column: 12, scope: !3544)
!3901 = !DILocation(line: 976, column: 40, scope: !3899)
!3902 = !DILocation(line: 976, column: 52, scope: !3899)
!3903 = !DILocation(line: 976, column: 17, scope: !3899)
!3904 = !DILocation(line: 976, column: 3, scope: !3899)
!3905 = !DILocation(line: 976, column: 15, scope: !3899)
!3906 = !DILocation(line: 978, column: 8, scope: !3544)
!3907 = !DILocation(line: 978, column: 37, scope: !3544)
!3908 = !DILocation(line: 978, column: 40, scope: !3544)
!3909 = !DILocation(line: 978, column: 35, scope: !3544)
!3910 = !DILocation(line: 979, column: 6, scope: !3545)
!3911 = distinct !{!3911, !3836, !3912}
!3912 = !DILocation(line: 979, column: 6, scope: !3547)
!3913 = !DILocation(line: 980, column: 7, scope: !3539)
!3914 = !DILocation(line: 0, scope: !3539)
!3915 = distinct !{!3915, !3828, !3916}
!3916 = !DILocation(line: 980, column: 7, scope: !3540)
!3917 = !DILocation(line: 981, column: 1, scope: !3507)
!3918 = distinct !DISubprogram(name: "can_copy_bbs_p", scope: !3, file: !3, line: 1338, type: !3919, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3922)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!718, !3921, !7}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3932}
!3923 = !DILocalVariable(name: "bbs", arg: 1, scope: !3918, file: !3, line: 1338, type: !3921)
!3924 = !DILocalVariable(name: "n", arg: 2, scope: !3918, file: !3, line: 1338, type: !7)
!3925 = !DILocalVariable(name: "i", scope: !3918, file: !3, line: 1340, type: !7)
!3926 = !DILocalVariable(name: "e", scope: !3918, file: !3, line: 1341, type: !744)
!3927 = !DILocalVariable(name: "ret", scope: !3918, file: !3, line: 1342, type: !719)
!3928 = !DILocalVariable(name: "ei", scope: !3929, file: !3, line: 1350, type: !3439)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 1348, column: 5)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1347, column: 3)
!3931 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 1347, column: 3)
!3932 = !DILabel(scope: !3918, name: "end", file: !3, line: 1366)
!3933 = !DILocation(line: 0, scope: !3918)
!3934 = !DILocation(line: 1341, column: 3, scope: !3918)
!3935 = !DILocation(line: 1344, column: 17, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1344, column: 3)
!3937 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 1344, column: 3)
!3938 = !DILocation(line: 1344, column: 8, scope: !3937)
!3939 = !DILocation(line: 0, scope: !3937)
!3940 = !DILocation(line: 1344, column: 3, scope: !3937)
!3941 = !DILocation(line: 0, scope: !3929)
!3942 = !DILocation(line: 0, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 1351, column: 7)
!3944 = !DILocation(line: 0, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1351, column: 7)
!3946 = !DILocation(line: 1347, column: 17, scope: !3930)
!3947 = !DILocation(line: 1347, column: 3, scope: !3931)
!3948 = !DILocation(line: 1345, column: 5, scope: !3936)
!3949 = !DILocation(line: 1345, column: 13, scope: !3936)
!3950 = !DILocation(line: 1345, column: 19, scope: !3936)
!3951 = !DILocation(line: 1344, column: 23, scope: !3936)
!3952 = !DILocation(line: 1344, column: 3, scope: !3936)
!3953 = distinct !{!3953, !3940, !3954}
!3954 = !DILocation(line: 1345, column: 22, scope: !3937)
!3955 = !DILocation(line: 0, scope: !3931)
!3956 = !DILocation(line: 1350, column: 7, scope: !3929)
!3957 = !DILocation(line: 1351, column: 7, scope: !3943)
!3958 = !DILocation(line: 1351, column: 7, scope: !3945)
!3959 = !DILocation(line: 1352, column: 7, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 1352, column: 6)
!3961 = !DILocation(line: 1352, column: 10, scope: !3960)
!3962 = !DILocation(line: 1352, column: 16, scope: !3960)
!3963 = !DILocation(line: 1353, column: 6, scope: !3960)
!3964 = !DILocation(line: 1353, column: 13, scope: !3960)
!3965 = !DILocation(line: 1353, column: 19, scope: !3960)
!3966 = !DILocation(line: 1353, column: 25, scope: !3960)
!3967 = !DILocation(line: 1352, column: 6, scope: !3945)
!3968 = distinct !{!3968, !3957, !3969}
!3969 = !DILocation(line: 1357, column: 4, scope: !3943)
!3970 = !DILocation(line: 1359, column: 35, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 1359, column: 11)
!3972 = !DILocation(line: 1359, column: 12, scope: !3971)
!3973 = !DILocation(line: 0, scope: !3930)
!3974 = !DILocation(line: 1364, column: 5, scope: !3930)
!3975 = !DILocation(line: 1347, column: 23, scope: !3930)
!3976 = !DILocation(line: 1347, column: 3, scope: !3930)
!3977 = distinct !{!3977, !3947, !3978}
!3978 = !DILocation(line: 1364, column: 5, scope: !3931)
!3979 = !DILocation(line: 1355, column: 10, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3960, file: !3, line: 1354, column: 4)
!3981 = !DILocation(line: 1366, column: 1, scope: !3918)
!3982 = !DILocation(line: 1367, column: 17, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1367, column: 3)
!3984 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 1367, column: 3)
!3985 = !DILocation(line: 1367, column: 8, scope: !3984)
!3986 = !DILocation(line: 0, scope: !3984)
!3987 = !DILocation(line: 1367, column: 3, scope: !3984)
!3988 = !DILocation(line: 1368, column: 5, scope: !3983)
!3989 = !DILocation(line: 1368, column: 13, scope: !3983)
!3990 = !DILocation(line: 1368, column: 19, scope: !3983)
!3991 = !DILocation(line: 1367, column: 23, scope: !3983)
!3992 = !DILocation(line: 1367, column: 3, scope: !3983)
!3993 = distinct !{!3993, !3987, !3994}
!3994 = !DILocation(line: 1368, column: 23, scope: !3984)
!3995 = !DILocation(line: 1370, column: 10, scope: !3918)
!3996 = !DILocation(line: 1370, column: 3, scope: !3918)
!3997 = !DILocation(line: 1371, column: 1, scope: !3918)
!3998 = distinct !DISubprogram(name: "ei_start_1", scope: !148, file: !148, line: 696, type: !3999, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!3439, !3444}
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "ev", arg: 1, scope: !3998, file: !148, line: 696, type: !3444)
!4003 = !DILocalVariable(name: "i", scope: !3998, file: !148, line: 698, type: !3439)
!4004 = !DILocation(line: 0, scope: !3998)
!4005 = !DILocation(line: 700, column: 5, scope: !3998)
!4006 = !DILocation(line: 700, column: 11, scope: !3998)
!4007 = !DILocation(line: 701, column: 5, scope: !3998)
!4008 = !DILocation(line: 701, column: 15, scope: !3998)
!4009 = !DILocation(line: 703, column: 3, scope: !3998)
!4010 = distinct !DISubprogram(name: "ei_cond", scope: !148, file: !148, line: 771, type: !4011, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4014)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!718, !3439, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "ei", arg: 1, scope: !4010, file: !148, line: 771, type: !3439)
!4016 = !DILocalVariable(name: "p", arg: 2, scope: !4010, file: !148, line: 771, type: !4013)
!4017 = !DILocation(line: 0, scope: !4010)
!4018 = !DILocation(line: 773, column: 8, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4010, file: !148, line: 773, column: 7)
!4020 = !DILocation(line: 773, column: 7, scope: !4010)
!4021 = !DILocation(line: 775, column: 12, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4019, file: !148, line: 774, column: 5)
!4023 = !DILocation(line: 776, column: 7, scope: !4022)
!4024 = !DILocation(line: 781, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4019, file: !148, line: 779, column: 5)
!4026 = !DILocation(line: 0, scope: !4019)
!4027 = !DILocation(line: 783, column: 1, scope: !4010)
!4028 = distinct !DISubprogram(name: "ei_next", scope: !148, file: !148, line: 736, type: !4029, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "i", arg: 1, scope: !4028, file: !148, line: 736, type: !4031)
!4034 = !DILocation(line: 0, scope: !4028)
!4035 = !DILocation(line: 738, column: 3, scope: !4028)
!4036 = !DILocation(line: 739, column: 11, scope: !4028)
!4037 = !DILocation(line: 740, column: 1, scope: !4028)
!4038 = distinct !DISubprogram(name: "copy_bbs", scope: !3, file: !3, line: 1392, type: !4039, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !3921, !7, !3921, !4013, !7, !4013, !1178, !726}
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056}
!4042 = !DILocalVariable(name: "bbs", arg: 1, scope: !4038, file: !3, line: 1392, type: !3921)
!4043 = !DILocalVariable(name: "n", arg: 2, scope: !4038, file: !3, line: 1392, type: !7)
!4044 = !DILocalVariable(name: "new_bbs", arg: 3, scope: !4038, file: !3, line: 1392, type: !3921)
!4045 = !DILocalVariable(name: "edges", arg: 4, scope: !4038, file: !3, line: 1393, type: !4013)
!4046 = !DILocalVariable(name: "num_edges", arg: 5, scope: !4038, file: !3, line: 1393, type: !7)
!4047 = !DILocalVariable(name: "new_edges", arg: 6, scope: !4038, file: !3, line: 1393, type: !4013)
!4048 = !DILocalVariable(name: "base", arg: 7, scope: !4038, file: !3, line: 1394, type: !1178)
!4049 = !DILocalVariable(name: "after", arg: 8, scope: !4038, file: !3, line: 1394, type: !726)
!4050 = !DILocalVariable(name: "i", scope: !4038, file: !3, line: 1396, type: !7)
!4051 = !DILocalVariable(name: "j", scope: !4038, file: !3, line: 1396, type: !7)
!4052 = !DILocalVariable(name: "bb", scope: !4038, file: !3, line: 1397, type: !726)
!4053 = !DILocalVariable(name: "new_bb", scope: !4038, file: !3, line: 1397, type: !726)
!4054 = !DILocalVariable(name: "dom_bb", scope: !4038, file: !3, line: 1397, type: !726)
!4055 = !DILocalVariable(name: "e", scope: !4038, file: !3, line: 1398, type: !744)
!4056 = !DILocalVariable(name: "ei", scope: !4057, file: !3, line: 1435, type: !3439)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1434, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1433, column: 3)
!4059 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1433, column: 3)
!4060 = !DILocation(line: 0, scope: !4038)
!4061 = !DILocation(line: 1398, column: 3, scope: !4038)
!4062 = !DILocation(line: 1401, column: 17, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1401, column: 3)
!4064 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1401, column: 3)
!4065 = !DILocation(line: 1401, column: 8, scope: !4064)
!4066 = !DILocation(line: 1401, column: 3, scope: !4064)
!4067 = !DILocation(line: 1417, column: 17, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 1417, column: 3)
!4069 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1417, column: 3)
!4070 = !DILocation(line: 1417, column: 3, scope: !4069)
!4071 = !DILocation(line: 1404, column: 12, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 1402, column: 5)
!4073 = !DILocation(line: 1405, column: 29, scope: !4072)
!4074 = !DILocation(line: 1405, column: 16, scope: !4072)
!4075 = !DILocation(line: 1405, column: 27, scope: !4072)
!4076 = !DILocation(line: 1407, column: 11, scope: !4072)
!4077 = !DILocation(line: 1407, column: 17, scope: !4072)
!4078 = !DILocation(line: 1409, column: 15, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1409, column: 11)
!4080 = !DILocation(line: 1409, column: 28, scope: !4079)
!4081 = !DILocation(line: 1409, column: 35, scope: !4079)
!4082 = !DILocation(line: 1409, column: 41, scope: !4079)
!4083 = !DILocation(line: 1409, column: 60, scope: !4079)
!4084 = !DILocation(line: 1409, column: 11, scope: !4072)
!4085 = !DILocation(line: 1410, column: 10, scope: !4079)
!4086 = !DILocation(line: 1410, column: 23, scope: !4079)
!4087 = !DILocation(line: 1410, column: 30, scope: !4079)
!4088 = !DILocation(line: 1412, column: 15, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1412, column: 11)
!4090 = !DILocation(line: 1410, column: 2, scope: !4079)
!4091 = !DILocation(line: 1412, column: 28, scope: !4089)
!4092 = !DILocation(line: 1412, column: 34, scope: !4089)
!4093 = !DILocation(line: 1412, column: 40, scope: !4089)
!4094 = !DILocation(line: 1412, column: 59, scope: !4089)
!4095 = !DILocation(line: 1412, column: 11, scope: !4072)
!4096 = !DILocation(line: 1413, column: 10, scope: !4089)
!4097 = !DILocation(line: 1413, column: 23, scope: !4089)
!4098 = !DILocation(line: 1413, column: 29, scope: !4089)
!4099 = !DILocation(line: 1413, column: 2, scope: !4089)
!4100 = !DILocation(line: 1401, column: 23, scope: !4063)
!4101 = !DILocation(line: 1401, column: 3, scope: !4063)
!4102 = distinct !{!4102, !4066, !4103}
!4103 = !DILocation(line: 1414, column: 5, scope: !4064)
!4104 = !DILocation(line: 0, scope: !4069)
!4105 = !DILocation(line: 1431, column: 17, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1431, column: 3)
!4107 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1431, column: 3)
!4108 = !DILocation(line: 1431, column: 3, scope: !4107)
!4109 = !DILocation(line: 1419, column: 12, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 1418, column: 5)
!4111 = !DILocation(line: 1420, column: 16, scope: !4110)
!4112 = !DILocation(line: 1422, column: 16, scope: !4110)
!4113 = !DILocation(line: 1423, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1423, column: 11)
!4115 = !DILocation(line: 1423, column: 25, scope: !4114)
!4116 = !DILocation(line: 1423, column: 11, scope: !4110)
!4117 = !DILocation(line: 1425, column: 13, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1424, column: 2)
!4119 = !DILocation(line: 1426, column: 4, scope: !4118)
!4120 = !DILocation(line: 1427, column: 2, scope: !4118)
!4121 = !DILocation(line: 1417, column: 23, scope: !4068)
!4122 = !DILocation(line: 1417, column: 3, scope: !4068)
!4123 = distinct !{!4123, !4070, !4124}
!4124 = !DILocation(line: 1428, column: 5, scope: !4069)
!4125 = !DILocation(line: 0, scope: !4107)
!4126 = !DILocation(line: 0, scope: !4057)
!4127 = !DILocation(line: 0, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1439, column: 7)
!4129 = !DILocation(line: 0, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1439, column: 7)
!4131 = !DILocation(line: 1433, column: 17, scope: !4058)
!4132 = !DILocation(line: 1433, column: 3, scope: !4059)
!4133 = !DILocation(line: 1432, column: 5, scope: !4106)
!4134 = !DILocation(line: 1432, column: 18, scope: !4106)
!4135 = !DILocation(line: 1431, column: 31, scope: !4106)
!4136 = !DILocation(line: 1431, column: 3, scope: !4106)
!4137 = distinct !{!4137, !4108, !4138}
!4138 = !DILocation(line: 1432, column: 20, scope: !4107)
!4139 = !DILocation(line: 0, scope: !4059)
!4140 = !DILocation(line: 1452, column: 17, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1452, column: 3)
!4142 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1452, column: 3)
!4143 = !DILocation(line: 1452, column: 3, scope: !4142)
!4144 = !DILocation(line: 1435, column: 7, scope: !4057)
!4145 = !DILocation(line: 1436, column: 16, scope: !4057)
!4146 = !DILocation(line: 1437, column: 12, scope: !4057)
!4147 = !DILocation(line: 1439, column: 7, scope: !4128)
!4148 = !DILocation(line: 1439, column: 7, scope: !4130)
!4149 = !DILocation(line: 1441, column: 18, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 1441, column: 4)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 1441, column: 4)
!4152 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1440, column: 2)
!4153 = !DILocation(line: 1441, column: 4, scope: !4151)
!4154 = !DILocation(line: 0, scope: !4151)
!4155 = !DILocation(line: 1442, column: 10, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1442, column: 10)
!4157 = !DILocation(line: 1442, column: 19, scope: !4156)
!4158 = !DILocation(line: 1442, column: 32, scope: !4156)
!4159 = !DILocation(line: 1442, column: 36, scope: !4156)
!4160 = !DILocation(line: 1442, column: 42, scope: !4156)
!4161 = !DILocation(line: 1442, column: 55, scope: !4156)
!4162 = !DILocation(line: 1442, column: 63, scope: !4156)
!4163 = !DILocation(line: 1442, column: 66, scope: !4156)
!4164 = !DILocation(line: 1442, column: 60, scope: !4156)
!4165 = !DILocation(line: 1442, column: 10, scope: !4150)
!4166 = !DILocation(line: 1443, column: 8, scope: !4156)
!4167 = !DILocation(line: 1443, column: 21, scope: !4156)
!4168 = !DILocation(line: 1441, column: 32, scope: !4150)
!4169 = !DILocation(line: 1441, column: 4, scope: !4150)
!4170 = distinct !{!4170, !4153, !4171}
!4171 = !DILocation(line: 1443, column: 23, scope: !4151)
!4172 = !DILocation(line: 1445, column: 10, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 1445, column: 8)
!4174 = !DILocation(line: 1445, column: 13, scope: !4173)
!4175 = !DILocation(line: 1445, column: 19, scope: !4173)
!4176 = !DILocation(line: 1445, column: 25, scope: !4173)
!4177 = !DILocation(line: 1445, column: 8, scope: !4152)
!4178 = !DILocation(line: 1447, column: 39, scope: !4152)
!4179 = !DILocation(line: 1447, column: 4, scope: !4152)
!4180 = !DILocation(line: 1448, column: 2, scope: !4152)
!4181 = distinct !{!4181, !4147, !4182}
!4182 = !DILocation(line: 1448, column: 2, scope: !4128)
!4183 = !DILocation(line: 1449, column: 5, scope: !4058)
!4184 = !DILocation(line: 1433, column: 23, scope: !4058)
!4185 = !DILocation(line: 1433, column: 3, scope: !4058)
!4186 = distinct !{!4186, !4132, !4187}
!4187 = !DILocation(line: 1449, column: 5, scope: !4059)
!4188 = !DILocation(line: 0, scope: !4142)
!4189 = !DILocation(line: 1453, column: 5, scope: !4141)
!4190 = !DILocation(line: 1453, column: 13, scope: !4141)
!4191 = !DILocation(line: 1453, column: 19, scope: !4141)
!4192 = !DILocation(line: 1452, column: 23, scope: !4141)
!4193 = !DILocation(line: 1452, column: 3, scope: !4141)
!4194 = distinct !{!4194, !4143, !4195}
!4195 = !DILocation(line: 1453, column: 23, scope: !4142)
!4196 = !DILocation(line: 1454, column: 1, scope: !4038)
!4197 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !1856, file: !1856, line: 32, type: !4198, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!719, !2520, !719}
!4200 = !{!4201, !4202, !4203}
!4201 = !DILocalVariable(name: "vec_", arg: 1, scope: !4197, file: !1856, line: 32, type: !2520)
!4202 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4197, file: !1856, line: 32, type: !719)
!4203 = !DILocalVariable(name: "extend", scope: !4197, file: !1856, line: 32, type: !719)
!4204 = !DILocation(line: 0, scope: !4197)
!4205 = !DILocation(line: 32, column: 1, scope: !4197)
!4206 = !DILocation(line: 32, column: 1, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4197, file: !1856, line: 32, column: 1)
!4208 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1856, file: !1856, line: 31, type: !4209, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4212)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!2587, !4211, !719}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!4212 = !{!4213, !4214, !4215}
!4213 = !DILocalVariable(name: "vec_", arg: 1, scope: !4208, file: !1856, line: 31, type: !4211)
!4214 = !DILocalVariable(name: "obj_", arg: 2, scope: !4208, file: !1856, line: 31, type: !719)
!4215 = !DILocalVariable(name: "slot_", scope: !4208, file: !1856, line: 31, type: !2587)
!4216 = !DILocation(line: 0, scope: !4208)
!4217 = !DILocation(line: 31, column: 1, scope: !4208)
!4218 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !1856, file: !1856, line: 31, type: !4219, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!719, !4211, !719}
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "vec_", arg: 1, scope: !4218, file: !1856, line: 31, type: !4211)
!4223 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4218, file: !1856, line: 31, type: !719)
!4224 = !DILocation(line: 0, scope: !4218)
!4225 = !DILocation(line: 31, column: 1, scope: !4218)
!4226 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !164, file: !164, line: 183, type: !4227, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!719, !2530, !719}
!4229 = !{!4230, !4231, !4232}
!4230 = !DILocalVariable(name: "vec_", arg: 1, scope: !4226, file: !164, line: 183, type: !2530)
!4231 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4226, file: !164, line: 183, type: !719)
!4232 = !DILocalVariable(name: "extend", scope: !4226, file: !164, line: 183, type: !719)
!4233 = !DILocation(line: 0, scope: !4226)
!4234 = !DILocation(line: 183, column: 1, scope: !4226)
!4235 = !DILocation(line: 183, column: 1, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4226, file: !164, line: 183, column: 1)
!4237 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !164, file: !164, line: 182, type: !4238, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4241)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!1444, !4240, !873}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "vec_", arg: 1, scope: !4237, file: !164, line: 182, type: !4240)
!4243 = !DILocalVariable(name: "obj_", arg: 2, scope: !4237, file: !164, line: 182, type: !873)
!4244 = !DILocalVariable(name: "slot_", scope: !4237, file: !164, line: 182, type: !1444)
!4245 = !DILocation(line: 0, scope: !4237)
!4246 = !DILocation(line: 182, column: 1, scope: !4237)
!4247 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !164, file: !164, line: 182, type: !4248, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!719, !4240, !719}
!4250 = !{!4251, !4252}
!4251 = !DILocalVariable(name: "vec_", arg: 1, scope: !4247, file: !164, line: 182, type: !4240)
!4252 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4247, file: !164, line: 182, type: !719)
!4253 = !DILocation(line: 0, scope: !4247)
!4254 = !DILocation(line: 182, column: 1, scope: !4247)
!4255 = distinct !DISubprogram(name: "VEC_location_t_heap_reserve", scope: !3, file: !3, line: 233, type: !4256, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!719, !2540, !719}
!4258 = !{!4259, !4260, !4261}
!4259 = !DILocalVariable(name: "vec_", arg: 1, scope: !4255, file: !3, line: 233, type: !2540)
!4260 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4255, file: !3, line: 233, type: !719)
!4261 = !DILocalVariable(name: "extend", scope: !4255, file: !3, line: 233, type: !719)
!4262 = !DILocation(line: 0, scope: !4255)
!4263 = !DILocation(line: 233, column: 1, scope: !4255)
!4264 = !DILocation(line: 233, column: 1, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 233, column: 1)
!4266 = distinct !DISubprogram(name: "VEC_location_t_base_quick_push", scope: !3, file: !3, line: 232, type: !4267, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!2605, !2688, !2606}
!4269 = !{!4270, !4271, !4272}
!4270 = !DILocalVariable(name: "vec_", arg: 1, scope: !4266, file: !3, line: 232, type: !2688)
!4271 = !DILocalVariable(name: "obj_", arg: 2, scope: !4266, file: !3, line: 232, type: !2606)
!4272 = !DILocalVariable(name: "slot_", scope: !4266, file: !3, line: 232, type: !2605)
!4273 = !DILocation(line: 0, scope: !4266)
!4274 = !DILocation(line: 232, column: 1, scope: !4266)
!4275 = !DILocation(line: 232, column: 1, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 232, column: 1)
!4277 = distinct !DISubprogram(name: "VEC_location_t_base_space", scope: !3, file: !3, line: 232, type: !4278, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!719, !2688, !719}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "vec_", arg: 1, scope: !4277, file: !3, line: 232, type: !2688)
!4282 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4277, file: !3, line: 232, type: !719)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 232, column: 1, scope: !4277)
!4285 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !164, file: !164, line: 182, type: !4286, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4290)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!873, !4288, !7}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!4290 = !{!4291, !4292}
!4291 = !DILocalVariable(name: "vec_", arg: 1, scope: !4285, file: !164, line: 182, type: !4288)
!4292 = !DILocalVariable(name: "ix_", arg: 2, scope: !4285, file: !164, line: 182, type: !7)
!4293 = !DILocation(line: 0, scope: !4285)
!4294 = !DILocation(line: 182, column: 1, scope: !4285)
!4295 = distinct !DISubprogram(name: "skip_insns_after_block", scope: !3, file: !3, line: 82, type: !4296, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!758, !726}
!4298 = !{!4299, !4300, !4301, !4302, !4303}
!4299 = !DILocalVariable(name: "bb", arg: 1, scope: !4295, file: !3, line: 82, type: !726)
!4300 = !DILocalVariable(name: "insn", scope: !4295, file: !3, line: 84, type: !758)
!4301 = !DILocalVariable(name: "last_insn", scope: !4295, file: !3, line: 84, type: !758)
!4302 = !DILocalVariable(name: "next_head", scope: !4295, file: !3, line: 84, type: !758)
!4303 = !DILocalVariable(name: "prev", scope: !4295, file: !3, line: 84, type: !758)
!4304 = !DILocation(line: 0, scope: !4295)
!4305 = !DILocation(line: 87, column: 11, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 87, column: 7)
!4307 = !DILocation(line: 87, column: 22, scope: !4306)
!4308 = !DILocation(line: 87, column: 19, scope: !4306)
!4309 = !DILocation(line: 87, column: 7, scope: !4295)
!4310 = !DILocation(line: 88, column: 17, scope: !4306)
!4311 = !DILocation(line: 88, column: 5, scope: !4306)
!4312 = !DILocation(line: 90, column: 27, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 90, column: 3)
!4314 = !DILocation(line: 90, column: 8, scope: !4313)
!4315 = !DILocation(line: 90, column: 48, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 90, column: 3)
!4317 = !DILocation(line: 90, column: 3, scope: !4313)
!4318 = !DILocation(line: 0, scope: !4313)
!4319 = !DILocation(line: 90, column: 66, scope: !4316)
!4320 = !DILocation(line: 92, column: 16, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 92, column: 11)
!4322 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 91, column: 5)
!4323 = !DILocation(line: 95, column: 15, scope: !4322)
!4324 = !DILocation(line: 95, column: 7, scope: !4322)
!4325 = distinct !{!4325, !4317, !4326}
!4326 = !DILocation(line: 128, column: 5, scope: !4313)
!4327 = !DILocation(line: 102, column: 12, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 96, column: 2)
!4329 = !DILocation(line: 102, column: 4, scope: !4328)
!4330 = !DILocation(line: 105, column: 8, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 103, column: 6)
!4332 = !DILocation(line: 106, column: 8, scope: !4331)
!4333 = !DILocation(line: 114, column: 8, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 114, column: 8)
!4335 = !DILocation(line: 115, column: 8, scope: !4334)
!4336 = !DILocation(line: 115, column: 11, scope: !4334)
!4337 = !DILocation(line: 114, column: 8, scope: !4328)
!4338 = !DILocation(line: 119, column: 8, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 116, column: 6)
!4340 = !DILocation(line: 140, column: 8, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 140, column: 3)
!4342 = !DILocation(line: 0, scope: !4341)
!4343 = !DILocation(line: 140, column: 34, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 140, column: 3)
!4345 = !DILocation(line: 140, column: 31, scope: !4344)
!4346 = !DILocation(line: 140, column: 3, scope: !4341)
!4347 = !DILocation(line: 142, column: 14, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 141, column: 5)
!4349 = !DILocation(line: 143, column: 11, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 143, column: 11)
!4351 = !DILocation(line: 143, column: 11, scope: !4348)
!4352 = !DILocation(line: 144, column: 10, scope: !4350)
!4353 = !DILocation(line: 144, column: 2, scope: !4350)
!4354 = !DILocation(line: 147, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 145, column: 4)
!4356 = !DILocation(line: 148, column: 6, scope: !4355)
!4357 = !DILocation(line: 153, column: 6, scope: !4355)
!4358 = !DILocation(line: 154, column: 4, scope: !4355)
!4359 = !DILocation(line: 140, column: 3, scope: !4344)
!4360 = distinct !{!4360, !4346, !4361}
!4361 = !DILocation(line: 155, column: 5, scope: !4341)
!4362 = !DILocation(line: 157, column: 3, scope: !4295)
!4363 = distinct !DISubprogram(name: "ei_safe_edge", scope: !148, file: !148, line: 761, type: !4364, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!744, !3439}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "i", arg: 1, scope: !4363, file: !148, line: 761, type: !3439)
!4368 = !DILocation(line: 763, column: 11, scope: !4363)
!4369 = !DILocation(line: 763, column: 10, scope: !4363)
!4370 = !DILocation(line: 763, column: 26, scope: !4363)
!4371 = !DILocation(line: 763, column: 3, scope: !4363)
!4372 = distinct !DISubprogram(name: "ei_end_p", scope: !148, file: !148, line: 721, type: !4373, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!718, !3439}
!4375 = !{!4376}
!4376 = !DILocalVariable(name: "i", arg: 1, scope: !4372, file: !148, line: 721, type: !3439)
!4377 = !DILocation(line: 723, column: 22, scope: !4372)
!4378 = !DILocation(line: 723, column: 19, scope: !4372)
!4379 = !DILocation(line: 723, column: 10, scope: !4372)
!4380 = !DILocation(line: 723, column: 3, scope: !4372)
!4381 = distinct !DISubprogram(name: "ei_edge", scope: !148, file: !148, line: 752, type: !4364, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4382)
!4382 = !{!4383}
!4383 = !DILocalVariable(name: "i", arg: 1, scope: !4381, file: !148, line: 752, type: !3439)
!4384 = !DILocation(line: 754, column: 10, scope: !4381)
!4385 = !DILocation(line: 754, column: 3, scope: !4381)
!4386 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !148, file: !148, line: 150, type: !4387, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!7, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!4391 = !{!4392}
!4392 = !DILocalVariable(name: "vec_", arg: 1, scope: !4386, file: !148, line: 150, type: !4389)
!4393 = !DILocation(line: 0, scope: !4386)
!4394 = !DILocation(line: 150, column: 1, scope: !4386)
!4395 = distinct !DISubprogram(name: "ei_container", scope: !148, file: !148, line: 685, type: !4396, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!732, !3439}
!4398 = !{!4399}
!4399 = !DILocalVariable(name: "i", arg: 1, scope: !4395, file: !148, line: 685, type: !3439)
!4400 = !DILocation(line: 687, column: 3, scope: !4395)
!4401 = !DILocation(line: 688, column: 10, scope: !4395)
!4402 = !DILocation(line: 688, column: 3, scope: !4395)
!4403 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !148, file: !148, line: 150, type: !4404, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!744, !4389, !7}
!4406 = !{!4407, !4408}
!4407 = !DILocalVariable(name: "vec_", arg: 1, scope: !4403, file: !148, line: 150, type: !4389)
!4408 = !DILocalVariable(name: "ix_", arg: 2, scope: !4403, file: !148, line: 150, type: !7)
!4409 = !DILocation(line: 0, scope: !4403)
!4410 = !DILocation(line: 150, column: 1, scope: !4403)
!4411 = distinct !DISubprogram(name: "label_for_bb", scope: !3, file: !3, line: 163, type: !4296, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4412)
!4412 = !{!4413, !4414}
!4413 = !DILocalVariable(name: "bb", arg: 1, scope: !4411, file: !3, line: 163, type: !726)
!4414 = !DILocalVariable(name: "label", scope: !4411, file: !3, line: 165, type: !758)
!4415 = !DILocation(line: 0, scope: !4411)
!4416 = !DILocation(line: 165, column: 15, scope: !4411)
!4417 = !DILocation(line: 167, column: 8, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 167, column: 7)
!4419 = !DILocation(line: 167, column: 7, scope: !4411)
!4420 = !DILocation(line: 169, column: 11, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 169, column: 11)
!4422 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 168, column: 5)
!4423 = !DILocation(line: 169, column: 11, scope: !4422)
!4424 = !DILocation(line: 170, column: 59, scope: !4421)
!4425 = !DILocation(line: 170, column: 2, scope: !4421)
!4426 = !DILocation(line: 172, column: 15, scope: !4422)
!4427 = !DILocation(line: 173, column: 5, scope: !4422)
!4428 = !DILocation(line: 175, column: 3, scope: !4411)
!4429 = distinct !DISubprogram(name: "single_pred", scope: !148, file: !148, line: 672, type: !4430, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!726, !3103}
!4432 = !{!4433}
!4433 = !DILocalVariable(name: "bb", arg: 1, scope: !4429, file: !148, line: 672, type: !3103)
!4434 = !DILocation(line: 0, scope: !4429)
!4435 = !DILocation(line: 674, column: 10, scope: !4429)
!4436 = !DILocation(line: 674, column: 33, scope: !4429)
!4437 = !DILocation(line: 674, column: 3, scope: !4429)
!4438 = distinct !DISubprogram(name: "single_pred_edge", scope: !148, file: !148, line: 653, type: !4439, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!744, !3103}
!4441 = !{!4442}
!4442 = !DILocalVariable(name: "bb", arg: 1, scope: !4438, file: !148, line: 653, type: !3103)
!4443 = !DILocation(line: 0, scope: !4438)
!4444 = !DILocation(line: 655, column: 3, scope: !4438)
!4445 = !DILocation(line: 656, column: 10, scope: !4438)
!4446 = !DILocation(line: 656, column: 3, scope: !4438)
!4447 = distinct !DISubprogram(name: "single_pred_p", scope: !148, file: !148, line: 634, type: !3101, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4448)
!4448 = !{!4449}
!4449 = !DILocalVariable(name: "bb", arg: 1, scope: !4447, file: !148, line: 634, type: !3103)
!4450 = !DILocation(line: 0, scope: !4447)
!4451 = !DILocation(line: 636, column: 10, scope: !4447)
!4452 = !DILocation(line: 636, column: 33, scope: !4447)
!4453 = !DILocation(line: 636, column: 3, scope: !4447)
