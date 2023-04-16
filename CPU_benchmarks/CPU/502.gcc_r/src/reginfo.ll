; ModuleID = 'reginfo.bc'
source_filename = "reginfo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.reg_pref = type { i8, i8, i8 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
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
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.reg_attrs = type { %union.tree_node*, i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.subregs_of_mode_node = type { i32, [87 x i8] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@reg_alloc_order = dso_local local_unnamed_addr global [53 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], align 16, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"bx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"st(1)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"st(2)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"st(3)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"st(4)\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"st(5)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"st(6)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"st(7)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"argp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fpsr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fpcr\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"mm0\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"mm1\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mm2\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"mm3\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mm4\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"mm5\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"mm6\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"mm7\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1
@reg_names = dso_local global [53 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)], align 16, !dbg !794
@.str.53 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"CLOBBERED_REGS\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"SSE_FIRST_REG\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@reg_class_names = dso_local local_unnamed_addr global [27 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0)], align 16, !dbg !799
@reg_class_contents = common dso_local local_unnamed_addr global [27 x i64] zeroinitializer, align 16, !dbg !976
@int_reg_class_contents = internal unnamed_addr constant [27 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 16, i32 0], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 7, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 1114352, i32 8160], [2 x i32] [i32 127, i32 8160], [2 x i32] [i32 1114367, i32 0], [2 x i32] [i32 1114367, i32 8160], [2 x i32] [i32 256, i32 0], [2 x i32] [i32 512, i32 0], [2 x i32] [i32 65280, i32 0], [2 x i32] [i32 2097152, i32 0], [2 x i32] [i32 534773760, i32 2088960], [2 x i32] [i32 -536870912, i32 31], [2 x i32] [i32 534774016, i32 2088960], [2 x i32] [i32 534774272, i32 2088960], [2 x i32] [i32 534839040, i32 4186112], [2 x i32] [i32 131071, i32 8160], [2 x i32] [i32 534839551, i32 2097120], [2 x i32] [i32 534904831, i32 2097120], [2 x i32] [i32 -1, i32 2097151]], align 16, !dbg !2029
@fixed_regs = common dso_local global [53 x i8] zeroinitializer, align 16, !dbg !895
@initial_fixed_regs = internal constant [53 x i8] c"\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16, !dbg !2034
@call_used_regs = common dso_local global [53 x i8] zeroinitializer, align 16, !dbg !900
@initial_call_used_regs = internal constant [53 x i8] c"\01\01\01\00\03\03\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\01\01\01\01\01\01\01\01", align 16, !dbg !2037
@global_regs = common dso_local global [53 x i8] zeroinitializer, align 16, !dbg !906
@init_move_cost.last_move_cost = internal unnamed_addr global [27 x [27 x i16]] zeroinitializer, align 16, !dbg !802
@have_regs_of_mode = common dso_local global [87 x i8] zeroinitializer, align 16, !dbg !992
@.str.80 = private unnamed_addr constant [10 x i8] c"reginfo.c\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@contains_reg_of_mode = common dso_local global [27 x [87 x i8]] zeroinitializer, align 16, !dbg !994
@last_mode_for_init_move_cost = internal unnamed_addr global i32 0, align 4, !dbg !1005
@move_cost = common dso_local global [87 x [27 x i16]*] zeroinitializer, align 16, !dbg !998
@may_move_in_cost = common dso_local global [87 x [27 x i16]*] zeroinitializer, align 16, !dbg !1001
@may_move_out_cost = common dso_local global [87 x [27 x i16]*] zeroinitializer, align 16, !dbg !1003
@reg_class_subclasses = common dso_local local_unnamed_addr global [27 x [27 x i32]] zeroinitializer, align 16, !dbg !982
@saved_fixed_regs = internal global [53 x i8] zeroinitializer, align 16, !dbg !2017
@saved_call_used_regs = internal global [53 x i8] zeroinitializer, align 16, !dbg !2019
@saved_reg_names = internal global [53 x i8*] zeroinitializer, align 16, !dbg !2021
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@hard_regno_nregs = common dso_local local_unnamed_addr global [53 x [87 x i8]] zeroinitializer, align 16, !dbg !2013
@reg_raw_mode = common dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16, !dbg !989
@word_mode = external dso_local local_unnamed_addr global i32, align 4
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@top_of_stack = internal global [87 x %struct.rtx_def*] zeroinitializer, align 16, !dbg !1007
@class_narrowest_mode = external dso_local local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external dso_local local_unnamed_addr constant [87 x i8], align 16
@fix_register.what_option = internal unnamed_addr constant [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0)]], align 16, !dbg !831
@.str.82 = private unnamed_addr constant [11 x i8] c"call-saved\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"call-used\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"no-such-option\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"can't use '%s' as a %s register\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"unknown register name: %s\00", align 1
@no_global_reg_vars = internal unnamed_addr global i1 false, align 4, !dbg !2043
@.str.88 = private unnamed_addr constant [55 x i8] c"global register variable follows a function definition\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"register used for two global register variables\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"call-clobbered register used for global register variable\00", align 1
@regs_invalidated_by_call = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !908
@regs_invalidated_by_call_regset = common dso_local local_unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !910
@fixed_reg_set = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !898
@call_used_reg_set = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !902
@call_fixed_reg_set = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !904
@reg_pref = internal unnamed_addr global %struct.reg_pref* null, align 8, !dbg !2023
@reg_info_size = internal unnamed_addr global i32 0, align 4, !dbg !2025
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@.str.91 = private unnamed_addr constant [8 x i8] c"reginfo\00", align 1
@pass_reginfo_init = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8 ()* null, i32 ()* @reginfo_init, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !845
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@subregs_of_mode = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2027
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@gt_ggc_r_gt_reginfo_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast ([87 x %struct.rtx_def*]* @top_of_stack to i8*), i64 87, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !873
@max_regno = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !893
@inv_reg_alloc_order = common dso_local local_unnamed_addr global [53 x i32] zeroinitializer, align 16, !dbg !973
@reg_class_size = common dso_local global [27 x i32] zeroinitializer, align 16, !dbg !979
@reg_class_subunion = common dso_local global [27 x [27 x i32]] zeroinitializer, align 16, !dbg !985
@reg_class_superunion = common dso_local global [27 x [27 x i32]] zeroinitializer, align 16, !dbg !987
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@persistent_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !2039
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external dso_local local_unnamed_addr global %struct.rtx_def*, align 8
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2062, metadata !DIExpression()), !dbg !2063
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2064
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2065
  ret i32 %call, !dbg !2066
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2067 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2071
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2072
  ret i32 %call, !dbg !2073
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2128, metadata !DIExpression()), !dbg !2129
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2130
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2130
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2130
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2130
  %cmp = icmp uge i8* %0, %1, !dbg !2130
  %conv1 = zext i1 %cmp to i64, !dbg !2130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2130
  %tobool = icmp eq i64 %expval, 0, !dbg !2130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2130

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2130
  br label %cond.end, !dbg !2130

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2130
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2130
  %2 = load i8, i8* %0, align 1, !dbg !2130
  %conv3 = zext i8 %2 to i32, !dbg !2130
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2134, metadata !DIExpression()), !dbg !2135
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2136
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2136
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2136
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2136
  %cmp = icmp uge i8* %0, %1, !dbg !2136
  %conv1 = zext i1 %cmp to i64, !dbg !2136
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2136
  %tobool = icmp eq i64 %expval, 0, !dbg !2136
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2136

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2136
  br label %cond.end, !dbg !2136

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2136
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2136
  %2 = load i8, i8* %0, align 1, !dbg !2136
  %conv3 = zext i8 %2 to i32, !dbg !2136
  br label %cond.end, !dbg !2136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2136
  ret i32 %cond, !dbg !2137
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2138 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2139
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2139
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2139
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2139
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2139
  %cmp = icmp uge i8* %1, %2, !dbg !2139
  %conv1 = zext i1 %cmp to i64, !dbg !2139
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2139
  %tobool = icmp eq i64 %expval, 0, !dbg !2139
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2139

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2139
  br label %cond.end, !dbg !2139

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2139
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2139
  %3 = load i8, i8* %1, align 1, !dbg !2139
  %conv3 = zext i8 %3 to i32, !dbg !2139
  br label %cond.end, !dbg !2139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2139
  ret i32 %cond, !dbg !2140
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2145, metadata !DIExpression()), !dbg !2146
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2147
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2148
  ret i32 %call, !dbg !2149
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2155, metadata !DIExpression()), !dbg !2156
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2157
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2157
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2157
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2157
  %cmp = icmp uge i8* %0, %1, !dbg !2157
  %conv1 = zext i1 %cmp to i64, !dbg !2157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2157
  %tobool = icmp eq i64 %expval, 0, !dbg !2157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2157

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2157
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2157
  br label %cond.end, !dbg !2157

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2157
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2157
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2157
  store i8 %conv2, i8* %0, align 1, !dbg !2157
  %conv6 = and i32 %__c, 255, !dbg !2157
  br label %cond.end, !dbg !2157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2157
  ret i32 %cond, !dbg !2158
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2162, metadata !DIExpression()), !dbg !2163
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2164
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2164
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2164
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2164
  %cmp = icmp uge i8* %0, %1, !dbg !2164
  %conv1 = zext i1 %cmp to i64, !dbg !2164
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2164
  %tobool = icmp eq i64 %expval, 0, !dbg !2164
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2164

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2164
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2164
  br label %cond.end, !dbg !2164

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2164
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2164
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2164
  store i8 %conv2, i8* %0, align 1, !dbg !2164
  %conv6 = and i32 %__c, 255, !dbg !2164
  br label %cond.end, !dbg !2164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2164
  ret i32 %cond, !dbg !2165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2170
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2170
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2170
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2170
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2170
  %cmp = icmp uge i8* %1, %2, !dbg !2170
  %conv1 = zext i1 %cmp to i64, !dbg !2170
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2170
  %tobool = icmp eq i64 %expval, 0, !dbg !2170
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2170

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2170
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2170
  br label %cond.end, !dbg !2170

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2170
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2170
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2170
  store i8 %conv4, i8* %1, align 1, !dbg !2170
  %conv6 = and i32 %__c, 255, !dbg !2170
  br label %cond.end, !dbg !2170

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2170
  ret i32 %cond, !dbg !2171
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2178, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2180, metadata !DIExpression()), !dbg !2181
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2182
  ret i64 %call, !dbg !2183
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2186, metadata !DIExpression()), !dbg !2187
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2188
  %0 = load i32, i32* %_flags, align 8, !dbg !2188
  %and = lshr i32 %0, 4, !dbg !2188
  %and.lobit = and i32 %and, 1, !dbg !2188
  ret i32 %and.lobit, !dbg !2189
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2192, metadata !DIExpression()), !dbg !2193
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2194
  %0 = load i32, i32* %_flags, align 8, !dbg !2194
  %and = lshr i32 %0, 5, !dbg !2194
  %and.lobit = and i32 %and, 1, !dbg !2194
  ret i32 %and.lobit, !dbg !2195
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2199, metadata !DIExpression()), !dbg !2200
  %__c.off = add i32 %__c, 128, !dbg !2201
  %0 = icmp ult i32 %__c.off, 384, !dbg !2201
  br i1 %0, label %cond.true, label %cond.end, !dbg !2201

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2202
  %1 = load i32*, i32** %call, align 8, !dbg !2203
  %idxprom = sext i32 %__c to i64, !dbg !2204
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2204
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2204
  br label %cond.end, !dbg !2205

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2205
  ret i32 %cond, !dbg !2206
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2209, metadata !DIExpression()), !dbg !2210
  %__c.off = add i32 %__c, 128, !dbg !2211
  %0 = icmp ult i32 %__c.off, 384, !dbg !2211
  br i1 %0, label %cond.true, label %cond.end, !dbg !2211

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2212
  %1 = load i32*, i32** %call, align 8, !dbg !2213
  %idxprom = sext i32 %__c to i64, !dbg !2214
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2214
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2214
  br label %cond.end, !dbg !2215

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2215
  ret i32 %cond, !dbg !2216
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2222, metadata !DIExpression()), !dbg !2223
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2224
  %conv = trunc i64 %call to i32, !dbg !2225
  ret i32 %conv, !dbg !2226
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2231, metadata !DIExpression()), !dbg !2232
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2233
  ret i64 %call, !dbg !2234
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2240, metadata !DIExpression()), !dbg !2241
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2242
  ret i64 %call, !dbg !2243
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2250, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2251, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2252, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2253, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2254, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 0, metadata !2255, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2256, metadata !DIExpression()), !dbg !2260
  br label %while.cond, !dbg !2261

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2262
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2255, metadata !DIExpression()), !dbg !2260
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2263
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2261

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2264
  %div = lshr i64 %add, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %div, metadata !2257, metadata !DIExpression()), !dbg !2260
  %mul = mul i64 %div, %__size, !dbg !2267
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2268
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2258, metadata !DIExpression()), !dbg !2260
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %call, metadata !2259, metadata !DIExpression()), !dbg !2260
  %cmp1 = icmp slt i32 %call, 0, !dbg !2270
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2272

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2273
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2275

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2255, metadata !DIExpression()), !dbg !2260
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2260
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2255, metadata !DIExpression()), !dbg !2260
  br label %while.cond, !dbg !2261, !llvm.loop !2277

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2260
  ret i8* %retval.0, !dbg !2279
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2286, metadata !DIExpression()), !dbg !2287
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2288
  ret double %call, !dbg !2289
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2290 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %base, metadata !2301, metadata !DIExpression()), !dbg !2302
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2303
  ret i64 %call, !dbg !2304
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2305 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %base, metadata !2313, metadata !DIExpression()), !dbg !2314
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2315
  ret i64 %call, !dbg !2316
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2328, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %base, metadata !2330, metadata !DIExpression()), !dbg !2331
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2332
  ret i64 %call, !dbg !2333
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2334 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %base, metadata !2340, metadata !DIExpression()), !dbg !2341
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2342
  ret i64 %call, !dbg !2343
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2385, metadata !DIExpression()), !dbg !2386
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2387
  ret i32 %call, !dbg !2388
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2392, metadata !DIExpression()), !dbg !2393
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2394
  ret i32 %call, !dbg !2395
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2401, metadata !DIExpression()), !dbg !2402
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2416 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2422, metadata !DIExpression()), !dbg !2423
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2422, metadata !DIExpression(DW_OP_deref)), !dbg !2423
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2424
  ret i32 %call, !dbg !2425
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2426 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2430, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2431, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2432, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2433, metadata !DIExpression()), !dbg !2434
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2433, metadata !DIExpression(DW_OP_deref)), !dbg !2434
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2435
  ret i32 %call, !dbg !2436
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2437 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2462, metadata !DIExpression()), !dbg !2463
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2464
  ret i32 %call, !dbg !2465
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2466 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2469, metadata !DIExpression()), !dbg !2470
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2471
  ret i32 %call, !dbg !2472
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2473 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2477, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2478, metadata !DIExpression()), !dbg !2479
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2480
  ret i32 %call, !dbg !2481
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2482 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2487, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2489, metadata !DIExpression()), !dbg !2490
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2491
  ret i32 %call, !dbg !2492
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reg_set_to_hard_reg_set(i64* %to, %struct.bitmap_head_def* %from) local_unnamed_addr #4 !dbg !2493 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i64* %to, metadata !2501, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %from, metadata !2502, metadata !DIExpression()), !dbg !2512
  %0 = bitcast i32* %i to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2513
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2514
  call void @llvm.dbg.value(metadata i32* %i, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %from, i32 0, i32* nonnull %i) #8, !dbg !2515
  br label %for.cond, !dbg !2515

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2517
  %tobool = icmp eq i8 %call, 0, !dbg !2515
  %2 = load i32, i32* %i, align 4, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %2, metadata !2503, metadata !DIExpression()), !dbg !2512
  %cmp = icmp ugt i32 %2, 52, !dbg !2522
  %or.cond = or i1 %tobool, %cmp, !dbg !2515
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !2515

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %2, metadata !2503, metadata !DIExpression()), !dbg !2512
  %sh_prom = zext i32 %2 to i64, !dbg !2523
  %shl = shl i64 1, %sh_prom, !dbg !2523
  %3 = load i64, i64* %to, align 8, !dbg !2523
  %or = or i64 %3, %shl, !dbg !2523
  store i64 %or, i64* %to, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata i32* %i, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2517
  br label %for.cond, !dbg !2517, !llvm.loop !2524

cleanup:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2527 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2536, metadata !DIExpression()), !dbg !2537
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2538
  %1 = load i64, i64* %0, align 8, !dbg !2538
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2539
  store i64 %1, i64* %2, align 8, !dbg !2539
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2540
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2541
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2542
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2545
  br label %while.body, !dbg !2545

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2546
  br i1 %tobool, label %if.then, label %if.end, !dbg !2547

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2548
  br label %while.end, !dbg !2550

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2551

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2545, !llvm.loop !2552

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2554

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2554
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2556
  %7 = load i32, i32* %indx9, align 8, !dbg !2556
  %cmp11 = icmp eq i32 %7, 0, !dbg !2557
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2558

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2559
  %8 = load i32, i32* %indx14, align 8, !dbg !2559
  %mul = shl i32 %8, 7, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2535, metadata !DIExpression()), !dbg !2537
  br label %if.end15, !dbg !2561

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2535, metadata !DIExpression()), !dbg !2537
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2562
  store i32 0, i32* %word_no, align 8, !dbg !2563
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2564
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2564
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2565
  store i64 %9, i64* %bits21, align 8, !dbg !2566
  %tobool23 = icmp eq i64 %9, 0, !dbg !2567
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2567
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %add, metadata !2535, metadata !DIExpression()), !dbg !2537
  store i32 %add, i32* %bit_no, align 4, !dbg !2569
  ret void, !dbg !2570
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2571 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2575, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2576, metadata !DIExpression()), !dbg !2580
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2581
  %0 = load i64, i64* %bits, align 8, !dbg !2581
  %tobool = icmp eq i64 %0, 0, !dbg !2582
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2583

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2584
  br label %next_bit, !dbg !2587

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2577), !dbg !2588
  br label %while.cond, !dbg !2587

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2589
  %and = and i64 %2, 1, !dbg !2590
  %tobool2 = icmp eq i64 %and, 0, !dbg !2591
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2587

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2592
  store i64 %shr, i64* %bits, align 8, !dbg !2592
  %3 = load i32, i32* %bit_no, align 4, !dbg !2594
  %add = add i32 %3, 1, !dbg !2594
  store i32 %add, i32* %bit_no, align 4, !dbg !2594
  %.pre = load i64, i64* %bits, align 8, !dbg !2589
  br label %while.cond, !dbg !2587, !llvm.loop !2595

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2597
  %sub = add i32 %4, 63, !dbg !2598
  %div = and i32 %sub, -64, !dbg !2599
  store i32 %div, i32* %bit_no, align 4, !dbg !2600
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2601
  %5 = load i32, i32* %word_no, align 8, !dbg !2602
  %inc = add i32 %5, 1, !dbg !2602
  store i32 %inc, i32* %word_no, align 8, !dbg !2602
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2603
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2603
  br label %while.body6, !dbg !2604

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2605

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2606
  %cmp = icmp eq i32 %8, 2, !dbg !2607
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2603
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2605

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2584
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2584
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2584
  store i64 %10, i64* %bits, align 8, !dbg !2608
  %tobool14 = icmp eq i64 %10, 0, !dbg !2609
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2611

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2612
  %add17 = add i32 %11, 64, !dbg !2612
  store i32 %add17, i32* %bit_no, align 4, !dbg !2612
  %12 = load i32, i32* %word_no, align 8, !dbg !2613
  %inc19 = add i32 %12, 1, !dbg !2613
  store i32 %inc19, i32* %word_no, align 8, !dbg !2613
  br label %while.cond7, !dbg !2605, !llvm.loop !2614

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2603
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2616
  %14 = load i64, i64* %13, align 8, !dbg !2616
  store i64 %14, i64* %6, align 8, !dbg !2617
  %tobool24 = icmp eq i64 %14, 0, !dbg !2618
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2620

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2620
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2621
  %16 = load i32, i32* %indx, align 8, !dbg !2621
  %mul28 = shl i32 %16, 7, !dbg !2622
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2623
  store i32 0, i32* %word_no, align 8, !dbg !2624
  br label %while.body6, !dbg !2604, !llvm.loop !2625

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2627

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2627

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2580
  ret i8 %retval.0, !dbg !2627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2633, metadata !DIExpression()), !dbg !2634
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2635
  %0 = load i64, i64* %bits, align 8, !dbg !2636
  %shr = lshr i64 %0, 1, !dbg !2636
  store i64 %shr, i64* %bits, align 8, !dbg !2636
  %1 = load i32, i32* %bit_no, align 4, !dbg !2637
  %add = add i32 %1, 1, !dbg !2637
  store i32 %add, i32* %bit_no, align 4, !dbg !2637
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @init_reg_sets() local_unnamed_addr #4 !dbg !2639 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()), !dbg !2645
  br label %for.cond, !dbg !2646

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc11 ], [ 0, %entry ], !dbg !2648
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2643, metadata !DIExpression()), !dbg !2645
  %exitcond3 = icmp eq i64 %indvars.iv1, 27, !dbg !2649
  br i1 %exitcond3, label %for.end13, label %for.body, !dbg !2651

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv1, !dbg !2652
  store i64 0, i64* %arrayidx, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata i32 0, metadata !2644, metadata !DIExpression()), !dbg !2645
  br label %for.cond1, !dbg !2654

for.cond1:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %0 = phi i64 [ %3, %for.inc ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2644, metadata !DIExpression()), !dbg !2645
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2656
  br i1 %exitcond, label %for.inc11, label %for.body3, !dbg !2658

for.body3:                                        ; preds = %for.cond1
  %div = lshr i64 %indvars.iv, 5, !dbg !2659
  %idxprom6 = and i64 %div, 134217727, !dbg !2661
  %arrayidx7 = getelementptr inbounds [27 x [2 x i32]], [27 x [2 x i32]]* @int_reg_class_contents, i64 0, i64 %indvars.iv1, i64 %idxprom6, !dbg !2661
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !2661
  %2 = trunc i64 %indvars.iv to i32, !dbg !2662
  %rem = and i32 %2, 31, !dbg !2662
  %shl = shl i32 1, %rem, !dbg !2663
  %and = and i32 %1, %shl, !dbg !2664
  %tobool = icmp eq i32 %and, 0, !dbg !2664
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2665

if.then:                                          ; preds = %for.body3
  %shl8 = shl i64 1, %indvars.iv, !dbg !2666
  %or = or i64 %0, %shl8, !dbg !2666
  store i64 %or, i64* %arrayidx, align 8, !dbg !2666
  br label %for.inc, !dbg !2666

for.inc:                                          ; preds = %for.body3, %if.then
  %3 = phi i64 [ %0, %for.body3 ], [ %or, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i32 undef, metadata !2644, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2645
  br label %for.cond1, !dbg !2668, !llvm.loop !2669

for.inc11:                                        ; preds = %for.cond1
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2671
  call void @llvm.dbg.value(metadata i32 undef, metadata !2643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2645
  br label %for.cond, !dbg !2672, !llvm.loop !2673

for.end13:                                        ; preds = %for.cond
  %call = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @initial_fixed_regs, i64 0, i64 0), i64 53) #6, !dbg !2675
  %call14 = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @initial_call_used_regs, i64 0, i64 0), i64 53) #6, !dbg !2676
  %call15 = tail call i8* @memset(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @global_regs, i64 0, i64 0), i32 0, i64 53) #6, !dbg !2677
  ret void, !dbg !2678
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_move_cost(i32 %m) local_unnamed_addr #4 !dbg !804 {
entry:
  call void @llvm.dbg.value(metadata i32 %m, metadata !808, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 1, metadata !809, metadata !DIExpression()), !dbg !2679
  %idxprom = zext i32 %m to i64, !dbg !2680
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 %idxprom, !dbg !2680
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2680
  %tobool = icmp eq i8 %0, 0, !dbg !2680
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2680

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !2680
  br label %cond.end, !dbg !2680

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !2679
  br label %for.cond, !dbg !2681

for.cond:                                         ; preds = %for.inc34, %cond.end
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc34 ], [ 0, %cond.end ], !dbg !2682
  %all_match.0 = phi i8 [ %all_match.2, %for.inc34 ], [ 1, %cond.end ], !dbg !2683
  call void @llvm.dbg.value(metadata i8 %all_match.0, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !810, metadata !DIExpression()), !dbg !2679
  %exitcond13 = icmp eq i64 %indvars.iv11, 27, !dbg !2684
  br i1 %exitcond13, label %for.end36, label %for.body, !dbg !2685

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %indvars.iv11, i64 %idxprom, !dbg !2686
  %1 = load i8, i8* %arrayidx4, align 1, !dbg !2686
  %tobool5 = icmp eq i8 %1, 0, !dbg !2686
  br i1 %tobool5, label %for.inc34, label %for.cond6.preheader, !dbg !2687

for.cond6.preheader:                              ; preds = %for.body
  br label %for.cond6, !dbg !2688

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end
  %indvars.iv8 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next9, %if.end ], !dbg !2689
  %all_match.1 = phi i8 [ %all_match.0, %for.cond6.preheader ], [ %and, %if.end ], !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.1, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !811, metadata !DIExpression()), !dbg !2679
  %exitcond10 = icmp eq i64 %indvars.iv8, 27, !dbg !2690
  br i1 %exitcond10, label %for.inc34.loopexit, label %for.body8, !dbg !2688

for.body8:                                        ; preds = %for.cond6
  %arrayidx12 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %indvars.iv8, i64 %idxprom, !dbg !2691
  %2 = load i8, i8* %arrayidx12, align 1, !dbg !2691
  %tobool13 = icmp eq i8 %2, 0, !dbg !2691
  br i1 %tobool13, label %if.end, label %if.else, !dbg !2693

if.else:                                          ; preds = %for.body8
  %3 = trunc i64 %indvars.iv8 to i32, !dbg !2694
  %4 = trunc i64 %indvars.iv11 to i32, !dbg !2694
  %call = tail call i32 @ix86_register_move_cost(i32 %m, i32 %4, i32 %3) #6, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %call, metadata !812, metadata !DIExpression()), !dbg !2696
  %cmp15 = icmp slt i32 %call, 65535, !dbg !2697
  br i1 %cmp15, label %if.end, label %cond.true16, !dbg !2697

cond.true16:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !2697
  br label %if.end, !dbg !2697

if.end:                                           ; preds = %for.body8, %cond.true16, %if.else
  %cost.0 = phi i32 [ 65535, %for.body8 ], [ %call, %if.else ], [ %call, %cond.true16 ], !dbg !2698
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !812, metadata !DIExpression()), !dbg !2696
  %arrayidx23 = getelementptr inbounds [27 x [27 x i16]], [27 x [27 x i16]]* @init_move_cost.last_move_cost, i64 0, i64 %indvars.iv11, i64 %indvars.iv8, !dbg !2699
  %5 = load i16, i16* %arrayidx23, align 2, !dbg !2699
  %conv = zext i16 %5 to i32, !dbg !2699
  %cmp24 = icmp eq i32 %cost.0, %conv, !dbg !2700
  %conv25 = zext i1 %cmp24 to i8, !dbg !2700
  %and = and i8 %all_match.1, %conv25, !dbg !2701
  call void @llvm.dbg.value(metadata i8 %and, metadata !809, metadata !DIExpression()), !dbg !2679
  %conv28 = trunc i32 %cost.0 to i16, !dbg !2702
  store i16 %conv28, i16* %arrayidx23, align 2, !dbg !2703
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i32 undef, metadata !811, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2679
  br label %for.cond6, !dbg !2705, !llvm.loop !2706

for.inc34.loopexit:                               ; preds = %for.cond6
  %all_match.1.lcssa = phi i8 [ %all_match.1, %for.cond6 ], !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.1.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.1.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.1.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  br label %for.inc34, !dbg !2708

for.inc34:                                        ; preds = %for.inc34.loopexit, %for.body
  %all_match.2 = phi i8 [ %all_match.0, %for.body ], [ %all_match.1.lcssa, %for.inc34.loopexit ], !dbg !2683
  call void @llvm.dbg.value(metadata i8 %all_match.2, metadata !809, metadata !DIExpression()), !dbg !2679
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i32 undef, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2679
  br label %for.cond, !dbg !2709, !llvm.loop !2710

for.end36:                                        ; preds = %for.cond
  %all_match.0.lcssa = phi i8 [ %all_match.0, %for.cond ], !dbg !2683
  call void @llvm.dbg.value(metadata i8 %all_match.0.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.0.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %all_match.0.lcssa, metadata !809, metadata !DIExpression()), !dbg !2679
  %tobool38 = icmp ne i8 %all_match.0.lcssa, 0, !dbg !2712
  %6 = load i32, i32* @last_mode_for_init_move_cost, align 4, !dbg !2714
  %cmp39 = icmp ne i32 %6, -1, !dbg !2715
  %or.cond = and i1 %tobool38, %cmp39, !dbg !2716
  br i1 %or.cond, label %if.then41, label %if.end54, !dbg !2716

if.then41:                                        ; preds = %for.end36
  %idxprom42 = sext i32 %6 to i64, !dbg !2717
  %arrayidx43 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %idxprom42, !dbg !2717
  %7 = bitcast [27 x i16]** %arrayidx43 to i64*, !dbg !2717
  %8 = load i64, i64* %7, align 8, !dbg !2717
  %arrayidx45 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %idxprom, !dbg !2719
  %9 = bitcast [27 x i16]** %arrayidx45 to i64*, !dbg !2720
  store i64 %8, i64* %9, align 8, !dbg !2720
  %arrayidx47 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_in_cost, i64 0, i64 %idxprom42, !dbg !2721
  %10 = bitcast [27 x i16]** %arrayidx47 to i64*, !dbg !2721
  %11 = load i64, i64* %10, align 8, !dbg !2721
  %arrayidx49 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_in_cost, i64 0, i64 %idxprom, !dbg !2722
  %12 = bitcast [27 x i16]** %arrayidx49 to i64*, !dbg !2723
  store i64 %11, i64* %12, align 8, !dbg !2723
  %arrayidx51 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_out_cost, i64 0, i64 %idxprom42, !dbg !2724
  %13 = bitcast [27 x i16]** %arrayidx51 to i64*, !dbg !2724
  %14 = load i64, i64* %13, align 8, !dbg !2724
  %arrayidx53 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_out_cost, i64 0, i64 %idxprom, !dbg !2725
  %15 = bitcast [27 x i16]** %arrayidx53 to i64*, !dbg !2726
  store i64 %14, i64* %15, align 8, !dbg !2726
  br label %cleanup.cont, !dbg !2727

if.end54:                                         ; preds = %for.end36
  store i32 %m, i32* @last_mode_for_init_move_cost, align 4, !dbg !2728
  %call55 = tail call i8* @xmalloc(i64 1458) #6, !dbg !2729
  %arrayidx57 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %idxprom, !dbg !2730
  %16 = bitcast [27 x i16]** %arrayidx57 to i8**, !dbg !2731
  store i8* %call55, i8** %16, align 8, !dbg !2731
  %call58 = tail call i8* @xmalloc(i64 1458) #6, !dbg !2732
  %arrayidx60 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_in_cost, i64 0, i64 %idxprom, !dbg !2733
  %17 = bitcast [27 x i16]** %arrayidx60 to i8**, !dbg !2734
  store i8* %call58, i8** %17, align 8, !dbg !2734
  %call61 = tail call i8* @xmalloc(i64 1458) #6, !dbg !2735
  %arrayidx63 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_out_cost, i64 0, i64 %idxprom, !dbg !2736
  %18 = bitcast [27 x i16]** %arrayidx63 to i8**, !dbg !2737
  store i8* %call61, i8** %18, align 8, !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !2679
  br label %for.cond64, !dbg !2738

for.cond64:                                       ; preds = %for.inc272, %if.end54
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc272 ], [ 0, %if.end54 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !810, metadata !DIExpression()), !dbg !2679
  %exitcond7 = icmp eq i64 %indvars.iv5, 27, !dbg !2740
  br i1 %exitcond7, label %cleanup.cont.loopexit, label %for.body67, !dbg !2741

for.body67:                                       ; preds = %for.cond64
  %arrayidx71 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %indvars.iv5, i64 %idxprom, !dbg !2742
  %19 = load i8, i8* %arrayidx71, align 1, !dbg !2742
  %tobool72 = icmp eq i8 %19, 0, !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !2679
  br i1 %tobool72, label %for.cond246.preheader, label %for.cond74.preheader, !dbg !2743

for.cond74.preheader:                             ; preds = %for.body67
  %arrayidx153 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subclasses, i64 0, i64 %indvars.iv5, i64 0, !dbg !2744
  br label %for.cond74, !dbg !2748

for.cond246.preheader:                            ; preds = %for.body67
  br label %for.cond246, !dbg !2749

for.cond74:                                       ; preds = %for.cond74.preheader, %for.inc242
  %indvars.iv = phi i64 [ 0, %for.cond74.preheader ], [ %indvars.iv.next, %for.inc242 ], !dbg !2751
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !811, metadata !DIExpression()), !dbg !2679
  %exitcond = icmp eq i64 %indvars.iv, 27, !dbg !2752
  br i1 %exitcond, label %for.inc272.loopexit1, label %for.body77, !dbg !2748

for.body77:                                       ; preds = %for.cond74
  %arrayidx82 = getelementptr inbounds [27 x [27 x i16]], [27 x [27 x i16]]* @init_move_cost.last_move_cost, i64 0, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2753
  %20 = load i16, i16* %arrayidx82, align 2, !dbg !2753
  %cmp84 = icmp eq i16 %20, -1, !dbg !2754
  br i1 %cmp84, label %if.then86, label %if.else105, !dbg !2755

if.then86:                                        ; preds = %for.body77
  %21 = load [27 x i16]*, [27 x i16]** %arrayidx57, align 8, !dbg !2756
  %arrayidx92 = getelementptr inbounds [27 x i16], [27 x i16]* %21, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2756
  store i16 -1, i16* %arrayidx92, align 2, !dbg !2758
  %22 = load [27 x i16]*, [27 x i16]** %arrayidx60, align 8, !dbg !2759
  %arrayidx98 = getelementptr inbounds [27 x i16], [27 x i16]* %22, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2759
  store i16 -1, i16* %arrayidx98, align 2, !dbg !2760
  %23 = load [27 x i16]*, [27 x i16]** %arrayidx63, align 8, !dbg !2761
  %arrayidx104 = getelementptr inbounds [27 x i16], [27 x i16]* %23, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2761
  store i16 -1, i16* %arrayidx104, align 2, !dbg !2762
  br label %for.inc242, !dbg !2763

if.else105:                                       ; preds = %for.body77
  %conv110 = zext i16 %20 to i32, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %conv110, metadata !819, metadata !DIExpression()), !dbg !2765
  %arrayidx113 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subclasses, i64 0, i64 %indvars.iv, i64 0, !dbg !2766
  call void @llvm.dbg.value(metadata i32* %arrayidx113, metadata !828, metadata !DIExpression()), !dbg !2765
  br label %for.cond114, !dbg !2768

for.cond114:                                      ; preds = %for.inc149, %if.else105
  %cost78.0 = phi i32 [ %conv110, %if.else105 ], [ %cost78.1, %for.inc149 ], !dbg !2769
  %p2.0 = phi i32* [ %arrayidx113, %if.else105 ], [ %incdec.ptr, %for.inc149 ], !dbg !2770
  call void @llvm.dbg.value(metadata i32* %p2.0, metadata !828, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %cost78.0, metadata !819, metadata !DIExpression()), !dbg !2765
  %24 = load i32, i32* %p2.0, align 4, !dbg !2771
  %cmp115 = icmp eq i32 %24, 27, !dbg !2773
  br i1 %cmp115, label %for.end150, label %for.body117, !dbg !2774

for.body117:                                      ; preds = %for.cond114
  %25 = zext i32 %24 to i64, !dbg !2775
  %cmp118 = icmp eq i64 %indvars.iv5, %25, !dbg !2775
  br i1 %cmp118, label %for.inc149, label %land.lhs.true120, !dbg !2777

land.lhs.true120:                                 ; preds = %for.body117
  %idxprom121 = zext i32 %24 to i64, !dbg !2778
  %arrayidx124 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom121, i64 %idxprom, !dbg !2778
  %26 = load i8, i8* %arrayidx124, align 1, !dbg !2778
  %tobool126 = icmp eq i8 %26, 0, !dbg !2778
  br i1 %tobool126, label %for.inc149, label %if.then127, !dbg !2779

if.then127:                                       ; preds = %land.lhs.true120
  %27 = load [27 x i16]*, [27 x i16]** %arrayidx57, align 8, !dbg !2780
  %arrayidx133 = getelementptr inbounds [27 x i16], [27 x i16]* %27, i64 %indvars.iv5, i64 %idxprom121, !dbg !2780
  %28 = load i16, i16* %arrayidx133, align 2, !dbg !2780
  %conv134 = zext i16 %28 to i32, !dbg !2780
  %cmp135 = icmp sgt i32 %cost78.0, %conv134, !dbg !2780
  br i1 %cmp135, label %for.inc149, label %cond.false138, !dbg !2780

cond.false138:                                    ; preds = %if.then127
  br label %for.inc149, !dbg !2780

for.inc149:                                       ; preds = %land.lhs.true120, %for.body117, %if.then127, %cond.false138
  %cost78.1 = phi i32 [ %cost78.0, %land.lhs.true120 ], [ %cost78.0, %for.body117 ], [ %conv134, %cond.false138 ], [ %cost78.0, %if.then127 ], !dbg !2769
  call void @llvm.dbg.value(metadata i32 %cost78.1, metadata !819, metadata !DIExpression()), !dbg !2765
  %incdec.ptr = getelementptr inbounds i32, i32* %p2.0, i64 1, !dbg !2781
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !828, metadata !DIExpression()), !dbg !2765
  br label %for.cond114, !dbg !2782, !llvm.loop !2783

for.end150:                                       ; preds = %for.cond114
  %cost78.0.lcssa = phi i32 [ %cost78.0, %for.cond114 ], !dbg !2769
  call void @llvm.dbg.value(metadata i32 %cost78.0.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %cost78.0.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %cost78.0.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32* %arrayidx153, metadata !826, metadata !DIExpression()), !dbg !2765
  br label %for.cond154, !dbg !2785

for.cond154:                                      ; preds = %for.inc189, %for.end150
  %p1.0 = phi i32* [ %arrayidx153, %for.end150 ], [ %incdec.ptr190, %for.inc189 ], !dbg !2744
  %cost78.2 = phi i32 [ %cost78.0.lcssa, %for.end150 ], [ %cost78.3, %for.inc189 ], !dbg !2769
  call void @llvm.dbg.value(metadata i32 %cost78.2, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32* %p1.0, metadata !826, metadata !DIExpression()), !dbg !2765
  %29 = load i32, i32* %p1.0, align 4, !dbg !2786
  %cmp155 = icmp eq i32 %29, 27, !dbg !2788
  br i1 %cmp155, label %for.end191, label %for.body157, !dbg !2789

for.body157:                                      ; preds = %for.cond154
  %30 = zext i32 %29 to i64, !dbg !2790
  %cmp158 = icmp eq i64 %indvars.iv, %30, !dbg !2790
  br i1 %cmp158, label %for.inc189, label %land.lhs.true160, !dbg !2792

land.lhs.true160:                                 ; preds = %for.body157
  %idxprom161 = zext i32 %29 to i64, !dbg !2793
  %arrayidx164 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom161, i64 %idxprom, !dbg !2793
  %31 = load i8, i8* %arrayidx164, align 1, !dbg !2793
  %tobool166 = icmp eq i8 %31, 0, !dbg !2793
  br i1 %tobool166, label %for.inc189, label %if.then167, !dbg !2794

if.then167:                                       ; preds = %land.lhs.true160
  %32 = load [27 x i16]*, [27 x i16]** %arrayidx57, align 8, !dbg !2795
  %arrayidx173 = getelementptr inbounds [27 x i16], [27 x i16]* %32, i64 %idxprom161, i64 %indvars.iv, !dbg !2795
  %33 = load i16, i16* %arrayidx173, align 2, !dbg !2795
  %conv174 = zext i16 %33 to i32, !dbg !2795
  %cmp175 = icmp sgt i32 %cost78.2, %conv174, !dbg !2795
  br i1 %cmp175, label %for.inc189, label %cond.false178, !dbg !2795

cond.false178:                                    ; preds = %if.then167
  br label %for.inc189, !dbg !2795

for.inc189:                                       ; preds = %land.lhs.true160, %for.body157, %if.then167, %cond.false178
  %cost78.3 = phi i32 [ %cost78.2, %land.lhs.true160 ], [ %cost78.2, %for.body157 ], [ %conv174, %cond.false178 ], [ %cost78.2, %if.then167 ], !dbg !2769
  call void @llvm.dbg.value(metadata i32 %cost78.3, metadata !819, metadata !DIExpression()), !dbg !2765
  %incdec.ptr190 = getelementptr inbounds i32, i32* %p1.0, i64 1, !dbg !2796
  call void @llvm.dbg.value(metadata i32* %incdec.ptr190, metadata !826, metadata !DIExpression()), !dbg !2765
  br label %for.cond154, !dbg !2797, !llvm.loop !2798

for.end191:                                       ; preds = %for.cond154
  %cost78.2.lcssa = phi i32 [ %cost78.2, %for.cond154 ], !dbg !2769
  call void @llvm.dbg.value(metadata i32 %cost78.2.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %cost78.2.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %cost78.2.lcssa, metadata !819, metadata !DIExpression()), !dbg !2765
  %cmp192 = icmp slt i32 %cost78.2.lcssa, 65536, !dbg !2800
  br i1 %cmp192, label %cond.end196, label %cond.true194, !dbg !2800

cond.true194:                                     ; preds = %for.end191
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !2800
  br label %cond.end196, !dbg !2800

cond.end196:                                      ; preds = %for.end191, %cond.true194
  %conv198 = trunc i32 %cost78.2.lcssa to i16, !dbg !2801
  %34 = load [27 x i16]*, [27 x i16]** %arrayidx57, align 8, !dbg !2802
  %arrayidx204 = getelementptr inbounds [27 x i16], [27 x i16]* %34, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2802
  store i16 %conv198, i16* %arrayidx204, align 2, !dbg !2803
  %35 = trunc i64 %indvars.iv to i32, !dbg !2804
  %36 = trunc i64 %indvars.iv5 to i32, !dbg !2804
  %call205 = tail call i32 @reg_class_subset_p(i32 %36, i32 %35) #8, !dbg !2804
  %tobool206 = icmp eq i32 %call205, 0, !dbg !2804
  br i1 %tobool206, label %if.else214, label %if.then207, !dbg !2806

if.then207:                                       ; preds = %cond.end196
  %37 = load [27 x i16]*, [27 x i16]** %arrayidx60, align 8, !dbg !2807
  %arrayidx213 = getelementptr inbounds [27 x i16], [27 x i16]* %37, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2807
  store i16 0, i16* %arrayidx213, align 2, !dbg !2808
  br label %if.end222, !dbg !2807

if.else214:                                       ; preds = %cond.end196
  %38 = load [27 x i16]*, [27 x i16]** %arrayidx60, align 8, !dbg !2809
  %arrayidx221 = getelementptr inbounds [27 x i16], [27 x i16]* %38, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2809
  store i16 %conv198, i16* %arrayidx221, align 2, !dbg !2810
  br label %if.end222

if.end222:                                        ; preds = %if.else214, %if.then207
  %39 = trunc i64 %indvars.iv to i32, !dbg !2811
  %40 = trunc i64 %indvars.iv5 to i32, !dbg !2811
  %call223 = tail call i32 @reg_class_subset_p(i32 %39, i32 %40) #8, !dbg !2811
  %tobool224 = icmp eq i32 %call223, 0, !dbg !2811
  br i1 %tobool224, label %if.else232, label %if.then225, !dbg !2813

if.then225:                                       ; preds = %if.end222
  %41 = load [27 x i16]*, [27 x i16]** %arrayidx63, align 8, !dbg !2814
  %arrayidx231 = getelementptr inbounds [27 x i16], [27 x i16]* %41, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2814
  store i16 0, i16* %arrayidx231, align 2, !dbg !2815
  br label %for.inc242, !dbg !2814

if.else232:                                       ; preds = %if.end222
  %42 = load [27 x i16]*, [27 x i16]** %arrayidx63, align 8, !dbg !2816
  %arrayidx239 = getelementptr inbounds [27 x i16], [27 x i16]* %42, i64 %indvars.iv5, i64 %indvars.iv, !dbg !2816
  store i16 %conv198, i16* %arrayidx239, align 2, !dbg !2817
  br label %for.inc242

for.inc242:                                       ; preds = %if.then86, %if.else232, %if.then225
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i32 undef, metadata !811, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2679
  br label %for.cond74, !dbg !2819, !llvm.loop !2820

for.cond246:                                      ; preds = %for.cond246.preheader, %for.body249
  %indvars.iv2 = phi i64 [ 0, %for.cond246.preheader ], [ %indvars.iv.next3, %for.body249 ], !dbg !2822
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !811, metadata !DIExpression()), !dbg !2679
  %exitcond4 = icmp eq i64 %indvars.iv2, 27, !dbg !2823
  br i1 %exitcond4, label %for.inc272.loopexit, label %for.body249, !dbg !2749

for.body249:                                      ; preds = %for.cond246
  %43 = load [27 x i16]*, [27 x i16]** %arrayidx57, align 8, !dbg !2825
  %arrayidx255 = getelementptr inbounds [27 x i16], [27 x i16]* %43, i64 %indvars.iv5, i64 %indvars.iv2, !dbg !2825
  store i16 -1, i16* %arrayidx255, align 2, !dbg !2827
  %44 = load [27 x i16]*, [27 x i16]** %arrayidx60, align 8, !dbg !2828
  %arrayidx261 = getelementptr inbounds [27 x i16], [27 x i16]* %44, i64 %indvars.iv5, i64 %indvars.iv2, !dbg !2828
  store i16 -1, i16* %arrayidx261, align 2, !dbg !2829
  %45 = load [27 x i16]*, [27 x i16]** %arrayidx63, align 8, !dbg !2830
  %arrayidx267 = getelementptr inbounds [27 x i16], [27 x i16]* %45, i64 %indvars.iv5, i64 %indvars.iv2, !dbg !2830
  store i16 -1, i16* %arrayidx267, align 2, !dbg !2831
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32 undef, metadata !811, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2679
  br label %for.cond246, !dbg !2833, !llvm.loop !2834

for.inc272.loopexit:                              ; preds = %for.cond246
  br label %for.inc272, !dbg !2836

for.inc272.loopexit1:                             ; preds = %for.cond74
  br label %for.inc272, !dbg !2836

for.inc272:                                       ; preds = %for.inc272.loopexit1, %for.inc272.loopexit
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 undef, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2679
  br label %for.cond64, !dbg !2837, !llvm.loop !2838

cleanup.cont.loopexit:                            ; preds = %for.cond64
  br label %cleanup.cont, !dbg !2840

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then41
  ret void, !dbg !2840
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i32 @ix86_register_move_cost(i32, i32, i32) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_class_subset_p(i32 %c1, i32 %c2) local_unnamed_addr #4 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata i32 %c1, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %c2, metadata !2846, metadata !DIExpression()), !dbg !2847
  %cmp = icmp eq i32 %c1, %c2, !dbg !2848
  %cmp1 = icmp eq i32 %c2, 26, !dbg !2849
  %or.cond = or i1 %cmp, %cmp1, !dbg !2850
  br i1 %or.cond, label %lor.end, label %lor.rhs, !dbg !2850

lor.rhs:                                          ; preds = %entry
  %idxprom = sext i32 %c1 to i64, !dbg !2851
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom, !dbg !2851
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2851
  %idxprom2 = sext i32 %c2 to i64, !dbg !2852
  %arrayidx3 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom2, !dbg !2852
  %1 = load i64, i64* %arrayidx3, align 8, !dbg !2852
  %call = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %0, i64 %1) #8, !dbg !2853
  %tobool = icmp ne i8 %call, 0, !dbg !2854
  %phitmp = zext i1 %tobool to i32, !dbg !2854
  br label %lor.end, !dbg !2854

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local void @save_register_info() local_unnamed_addr #4 !dbg !2856 {
entry:
  %call = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @saved_fixed_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 0), i64 53) #6, !dbg !2857
  %call1 = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @saved_call_used_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 0), i64 53) #6, !dbg !2858
  %call2 = tail call i8* @memcpy(i8* bitcast ([53 x i8*]* @saved_reg_names to i8*), i8* bitcast ([53 x i8*]* @reg_names to i8*), i64 424) #6, !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local void @init_reg_modes_target() local_unnamed_addr #4 !dbg !2861 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2863, metadata !DIExpression()), !dbg !2865
  br label %for.cond, !dbg !2866

for.cond:                                         ; preds = %for.inc51, %entry
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc51 ], [ 0, %entry ], !dbg !2868
  call void @llvm.dbg.value(metadata i64 %indvars.iv78, metadata !2863, metadata !DIExpression()), !dbg !2865
  %exitcond80 = icmp eq i64 %indvars.iv78, 53, !dbg !2869
  br i1 %exitcond80, label %for.cond54.preheader, label %for.cond1.preheader, !dbg !2871

for.cond1.preheader:                              ; preds = %for.cond
  %0 = and i64 %indvars.iv78, 2147483640, !dbg !2872
  %cmp4 = icmp eq i64 %0, 8, !dbg !2872
  %sub12 = add nsw i64 %indvars.iv78, -45, !dbg !2872
  %cmp13 = icmp ult i64 %sub12, 8, !dbg !2872
  %sub17 = add nsw i64 %indvars.iv78, -29, !dbg !2872
  %cmp18 = icmp ult i64 %sub17, 8, !dbg !2872
  br i1 %cmp4, label %for.cond1.preheader.split.us, label %for.cond1.preheader.for.cond1.preheader.split_crit_edge, !dbg !2875

for.cond1.preheader.for.cond1.preheader.split_crit_edge: ; preds = %for.cond1.preheader
  %sub7 = add nsw i64 %indvars.iv78, -21, !dbg !2872
  %cmp8 = icmp ult i64 %sub7, 8, !dbg !2872
  br i1 %cmp8, label %for.cond1.preheader.split.split.us, label %for.cond1.preheader.split.for.cond1.preheader.split.split_crit_edge, !dbg !2875

for.cond1.preheader.split.us:                     ; preds = %for.cond1.preheader
  br label %for.cond1.us, !dbg !2875

for.cond1.us:                                     ; preds = %lor.end.us, %for.cond1.preheader.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %lor.end.us ], [ 0, %for.cond1.preheader.split.us ], !dbg !2876
  call void @llvm.dbg.value(metadata i64 %indvars.iv75, metadata !2864, metadata !DIExpression()), !dbg !2865
  %exitcond77 = icmp eq i64 %indvars.iv75, 87, !dbg !2877
  br i1 %exitcond77, label %for.inc51.us-lcssa.us, label %for.body3.us, !dbg !2875

for.body3.us:                                     ; preds = %for.cond1.us
  %arrayidx.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %indvars.iv75, !dbg !2878
  %1 = load i8, i8* %arrayidx.us, align 1, !dbg !2878
  %cmp21.us = icmp eq i8 %1, 10, !dbg !2878
  br i1 %cmp21.us, label %lor.end.us, label %lor.rhs.us, !dbg !2878

lor.rhs.us:                                       ; preds = %for.body3.us
  %cmp26.us = icmp eq i8 %1, 11, !dbg !2878
  br label %lor.end.us, !dbg !2878

lor.end.us:                                       ; preds = %lor.rhs.us, %for.body3.us
  %2 = phi i1 [ true, %for.body3.us ], [ %cmp26.us, %lor.rhs.us ]
  %conv46.us = select i1 %2, i8 2, i8 1, !dbg !2878
  %arrayidx50.us = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv78, i64 %indvars.iv75, !dbg !2879
  store i8 %conv46.us, i8* %arrayidx50.us, align 1, !dbg !2880
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 undef, metadata !2864, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond1.us, !dbg !2882, !llvm.loop !2883

for.inc51.us-lcssa.us:                            ; preds = %for.cond1.us
  br label %for.inc51, !dbg !2885

for.cond1.preheader.split.for.cond1.preheader.split.split_crit_edge: ; preds = %for.cond1.preheader.for.cond1.preheader.split_crit_edge
  br i1 %cmp13, label %for.cond1.preheader.split.split.split.us, label %for.cond1.preheader.split.split.for.cond1.preheader.split.split.split_crit_edge, !dbg !2875

for.cond1.preheader.split.split.us:               ; preds = %for.cond1.preheader.for.cond1.preheader.split_crit_edge
  br label %for.cond1.us1, !dbg !2875

for.cond1.us1:                                    ; preds = %lor.end.us25, %for.cond1.preheader.split.split.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %lor.end.us25 ], [ 0, %for.cond1.preheader.split.split.us ], !dbg !2876
  call void @llvm.dbg.value(metadata i64 %indvars.iv72, metadata !2864, metadata !DIExpression()), !dbg !2865
  %exitcond74 = icmp eq i64 %indvars.iv72, 87, !dbg !2877
  br i1 %exitcond74, label %for.inc51.us-lcssa.us-lcssa.us, label %for.body3.us4, !dbg !2875

for.body3.us4:                                    ; preds = %for.cond1.us1
  %arrayidx.us19 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %indvars.iv72, !dbg !2878
  %3 = load i8, i8* %arrayidx.us19, align 1, !dbg !2878
  %cmp21.us20 = icmp eq i8 %3, 10, !dbg !2878
  br i1 %cmp21.us20, label %lor.end.us25, label %lor.rhs.us21, !dbg !2878

lor.rhs.us21:                                     ; preds = %for.body3.us4
  %cmp26.us24 = icmp eq i8 %3, 11, !dbg !2878
  br label %lor.end.us25, !dbg !2878

lor.end.us25:                                     ; preds = %lor.rhs.us21, %for.body3.us4
  %4 = phi i1 [ true, %for.body3.us4 ], [ %cmp26.us24, %lor.rhs.us21 ]
  %conv46.us29 = select i1 %4, i8 2, i8 1, !dbg !2878
  %arrayidx50.us31 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv78, i64 %indvars.iv72, !dbg !2879
  store i8 %conv46.us29, i8* %arrayidx50.us31, align 1, !dbg !2880
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 undef, metadata !2864, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond1.us1, !dbg !2882, !llvm.loop !2883

for.inc51.us-lcssa.us-lcssa.us:                   ; preds = %for.cond1.us1
  br label %for.inc51.us-lcssa, !dbg !2885

for.cond1.preheader.split.split.for.cond1.preheader.split.split.split_crit_edge: ; preds = %for.cond1.preheader.split.for.cond1.preheader.split.split_crit_edge
  br label %for.cond1, !dbg !2875

for.cond1.preheader.split.split.split.us:         ; preds = %for.cond1.preheader.split.for.cond1.preheader.split.split_crit_edge
  br label %for.cond1.us33, !dbg !2875

for.cond1.us33:                                   ; preds = %lor.end.us57, %for.cond1.preheader.split.split.split.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %lor.end.us57 ], [ 0, %for.cond1.preheader.split.split.split.us ], !dbg !2876
  call void @llvm.dbg.value(metadata i64 %indvars.iv69, metadata !2864, metadata !DIExpression()), !dbg !2865
  %exitcond71 = icmp eq i64 %indvars.iv69, 87, !dbg !2877
  br i1 %exitcond71, label %for.inc51.us-lcssa.us-lcssa.us-lcssa.us, label %for.body3.us36, !dbg !2875

for.body3.us36:                                   ; preds = %for.cond1.us33
  %arrayidx.us51 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %indvars.iv69, !dbg !2878
  %5 = load i8, i8* %arrayidx.us51, align 1, !dbg !2878
  %cmp21.us52 = icmp eq i8 %5, 10, !dbg !2878
  br i1 %cmp21.us52, label %lor.end.us57, label %lor.rhs.us53, !dbg !2878

lor.rhs.us53:                                     ; preds = %for.body3.us36
  %cmp26.us56 = icmp eq i8 %5, 11, !dbg !2878
  br label %lor.end.us57, !dbg !2878

lor.end.us57:                                     ; preds = %lor.rhs.us53, %for.body3.us36
  %6 = phi i1 [ true, %for.body3.us36 ], [ %cmp26.us56, %lor.rhs.us53 ]
  %conv46.us61 = select i1 %6, i8 2, i8 1, !dbg !2878
  %arrayidx50.us63 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv78, i64 %indvars.iv69, !dbg !2879
  store i8 %conv46.us61, i8* %arrayidx50.us63, align 1, !dbg !2880
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 undef, metadata !2864, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond1.us33, !dbg !2882, !llvm.loop !2883

for.inc51.us-lcssa.us-lcssa.us-lcssa.us:          ; preds = %for.cond1.us33
  br label %for.inc51.us-lcssa.us-lcssa, !dbg !2885

for.cond54.preheader:                             ; preds = %for.cond
  br label %for.cond54, !dbg !2886

for.cond1:                                        ; preds = %for.cond1.preheader.split.split.for.cond1.preheader.split.split.split_crit_edge, %cond.end44
  %indvars.iv66 = phi i64 [ 0, %for.cond1.preheader.split.split.for.cond1.preheader.split.split.split_crit_edge ], [ %indvars.iv.next67, %cond.end44 ], !dbg !2876
  call void @llvm.dbg.value(metadata i64 %indvars.iv66, metadata !2864, metadata !DIExpression()), !dbg !2865
  %exitcond68 = icmp eq i64 %indvars.iv66, 87, !dbg !2877
  br i1 %exitcond68, label %for.inc51.us-lcssa.us-lcssa.us-lcssa, label %for.body3, !dbg !2875

for.body3:                                        ; preds = %for.cond1
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !2878

cond.true:                                        ; preds = %for.body3
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %indvars.iv66, !dbg !2878
  %7 = load i8, i8* %arrayidx, align 1, !dbg !2878
  %cmp21 = icmp eq i8 %7, 10, !dbg !2878
  br i1 %cmp21, label %lor.end, label %lor.rhs, !dbg !2878

lor.rhs:                                          ; preds = %cond.true
  %cmp26 = icmp eq i8 %7, 11, !dbg !2878
  br label %lor.end, !dbg !2878

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %8 = phi i1 [ true, %cond.true ], [ %cmp26, %lor.rhs ]
  %cond = select i1 %8, i32 2, i32 1, !dbg !2878
  br label %cond.end44, !dbg !2878

cond.false:                                       ; preds = %for.body3
  %9 = trunc i64 %indvars.iv66 to i32, !dbg !2878
  switch i32 %9, label %cond.false35 [
    i32 40, label %cond.end44
    i32 53, label %cond.end
  ], !dbg !2878

cond.false35:                                     ; preds = %cond.false
  %arrayidx37 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %indvars.iv66, !dbg !2878
  %10 = load i8, i8* %arrayidx37, align 1, !dbg !2878
  %conv39 = zext i8 %10 to i32, !dbg !2878
  %sub40 = add nuw nsw i32 %conv39, 3, !dbg !2878
  %div = lshr i32 %sub40, 2, !dbg !2878
  br label %cond.end, !dbg !2878

cond.end:                                         ; preds = %cond.false, %cond.false35
  %cond41 = phi i32 [ %div, %cond.false35 ], [ 6, %cond.false ], !dbg !2878
  br label %cond.end44, !dbg !2878

cond.end44:                                       ; preds = %cond.end, %cond.false, %lor.end
  %cond45 = phi i32 [ %cond, %lor.end ], [ %cond41, %cond.end ], [ 3, %cond.false ], !dbg !2878
  %conv46 = trunc i32 %cond45 to i8, !dbg !2878
  %arrayidx50 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv78, i64 %indvars.iv66, !dbg !2879
  store i8 %conv46, i8* %arrayidx50, align 1, !dbg !2880
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 undef, metadata !2864, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond1, !dbg !2882, !llvm.loop !2883

for.inc51.us-lcssa.us-lcssa.us-lcssa:             ; preds = %for.cond1
  br label %for.inc51.us-lcssa.us-lcssa, !dbg !2885

for.inc51.us-lcssa.us-lcssa:                      ; preds = %for.inc51.us-lcssa.us-lcssa.us-lcssa.us, %for.inc51.us-lcssa.us-lcssa.us-lcssa
  br label %for.inc51.us-lcssa, !dbg !2885

for.inc51.us-lcssa:                               ; preds = %for.inc51.us-lcssa.us-lcssa.us, %for.inc51.us-lcssa.us-lcssa
  br label %for.inc51, !dbg !2885

for.inc51:                                        ; preds = %for.inc51.us-lcssa.us, %for.inc51.us-lcssa
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i32 undef, metadata !2863, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond, !dbg !2888, !llvm.loop !2889

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc75
  %indvars.iv = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next, %for.inc75 ], !dbg !2891
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2863, metadata !DIExpression()), !dbg !2865
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2892
  br i1 %exitcond, label %for.end77, label %for.body57, !dbg !2886

for.body57:                                       ; preds = %for.cond54
  %11 = trunc i64 %indvars.iv to i32, !dbg !2894
  %call = tail call i32 @choose_hard_reg_mode(i32 %11, i32 1, i8 zeroext 0) #8, !dbg !2894
  %arrayidx59 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i64 0, i64 %indvars.iv, !dbg !2896
  store i32 %call, i32* %arrayidx59, align 4, !dbg !2897
  %cmp62 = icmp eq i32 %call, 0, !dbg !2898
  br i1 %cmp62, label %if.then, label %for.inc75, !dbg !2900

if.then:                                          ; preds = %for.body57
  %cmp64 = icmp eq i64 %indvars.iv, 0, !dbg !2901
  br i1 %cmp64, label %cond.true66, label %cond.false67, !dbg !2902

cond.true66:                                      ; preds = %if.then
  br label %cond.end71, !dbg !2902

cond.false67:                                     ; preds = %if.then
  %12 = add nsw i64 %indvars.iv, -1, !dbg !2903
  %arrayidx70 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i64 0, i64 %12, !dbg !2904
  br label %cond.end71, !dbg !2902

cond.end71:                                       ; preds = %cond.false67, %cond.true66
  %cond72.in = phi i32* [ @word_mode, %cond.true66 ], [ %arrayidx70, %cond.false67 ]
  %cond72 = load i32, i32* %cond72.in, align 4, !dbg !2902
  store i32 %cond72, i32* %arrayidx59, align 4, !dbg !2905
  br label %for.inc75, !dbg !2906

for.inc75:                                        ; preds = %for.body57, %cond.end71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i32 undef, metadata !2863, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2865
  br label %for.cond54, !dbg !2908, !llvm.loop !2909

for.end77:                                        ; preds = %for.cond54
  ret void, !dbg !2911
}

; Function Attrs: nounwind uwtable
define dso_local i32 @choose_hard_reg_mode(i32 %regno, i32 %nregs, i8 zeroext %call_saved) local_unnamed_addr #4 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2916, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %nregs, metadata !2917, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 %call_saved, metadata !2918, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2922
  %idxprom = zext i32 %regno to i64, !dbg !2923
  br label %for.cond, !dbg !2927

for.cond:                                         ; preds = %for.inc, %entry
  %found_mode.0 = phi i32 [ 0, %entry ], [ %found_mode.1, %for.inc ], !dbg !2928
  %mode.0.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %entry ], [ %arrayidx11, %for.inc ]
  %mode.0.in = load i8, i8* %mode.0.in.in, align 1, !dbg !2929
  %mode.0 = zext i8 %mode.0.in to i32, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.0, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp = icmp eq i8 %mode.0.in, 0, !dbg !2930
  br i1 %cmp, label %for.end, label %for.body, !dbg !2931

for.body:                                         ; preds = %for.cond
  %idxprom2 = zext i8 %mode.0.in to i64, !dbg !2932
  %arrayidx3 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !2932
  %0 = load i8, i8* %arrayidx3, align 1, !dbg !2932
  %conv4 = zext i8 %0 to i32, !dbg !2933
  %cmp5 = icmp eq i32 %conv4, %nregs, !dbg !2934
  br i1 %cmp5, label %land.lhs.true, label %for.inc, !dbg !2935

land.lhs.true:                                    ; preds = %for.body
  %call = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %regno, i32 %mode.0) #6, !dbg !2936
  %tobool = icmp eq i8 %call, 0, !dbg !2936
  %spec.select = select i1 %tobool, i32 %found_mode.0, i32 %mode.0, !dbg !2937
  br label %for.inc, !dbg !2937

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %found_mode.1 = phi i32 [ %found_mode.0, %for.body ], [ %spec.select, %land.lhs.true ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.1, metadata !2920, metadata !DIExpression()), !dbg !2922
  %arrayidx11 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom2, !dbg !2938
  br label %for.cond, !dbg !2939, !llvm.loop !2940

for.end:                                          ; preds = %for.cond
  %found_mode.0.lcssa = phi i32 [ %found_mode.0, %for.cond ], !dbg !2928
  call void @llvm.dbg.value(metadata i32 %found_mode.0.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.0.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.0.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp13 = icmp eq i32 %found_mode.0.lcssa, 0, !dbg !2942
  br i1 %cmp13, label %if.end16, label %cleanup, !dbg !2944

if.end16:                                         ; preds = %for.end
  br label %for.cond18, !dbg !2945

for.cond18:                                       ; preds = %for.inc38, %if.end16
  %found_mode.2 = phi i32 [ 0, %if.end16 ], [ %found_mode.3, %for.inc38 ], !dbg !2928
  %mode.1.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 8), %if.end16 ], [ %arrayidx40, %for.inc38 ]
  %mode.1.in = load i8, i8* %mode.1.in.in, align 1, !dbg !2947
  %mode.1 = zext i8 %mode.1.in to i32, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %mode.1, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.2, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp19 = icmp eq i8 %mode.1.in, 0, !dbg !2948
  br i1 %cmp19, label %for.end42, label %for.body21, !dbg !2950

for.body21:                                       ; preds = %for.cond18
  %idxprom24 = zext i8 %mode.1.in to i64, !dbg !2951
  %arrayidx25 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom24, !dbg !2951
  %1 = load i8, i8* %arrayidx25, align 1, !dbg !2951
  %conv26 = zext i8 %1 to i32, !dbg !2953
  %cmp27 = icmp eq i32 %conv26, %nregs, !dbg !2954
  br i1 %cmp27, label %land.lhs.true29, label %for.inc38, !dbg !2955

land.lhs.true29:                                  ; preds = %for.body21
  %call30 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %regno, i32 %mode.1) #6, !dbg !2956
  %tobool32 = icmp eq i8 %call30, 0, !dbg !2956
  %spec.select1 = select i1 %tobool32, i32 %found_mode.2, i32 %mode.1, !dbg !2957
  br label %for.inc38, !dbg !2957

for.inc38:                                        ; preds = %land.lhs.true29, %for.body21
  %found_mode.3 = phi i32 [ %found_mode.2, %for.body21 ], [ %spec.select1, %land.lhs.true29 ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.3, metadata !2920, metadata !DIExpression()), !dbg !2922
  %arrayidx40 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom24, !dbg !2958
  br label %for.cond18, !dbg !2959, !llvm.loop !2960

for.end42:                                        ; preds = %for.cond18
  %found_mode.2.lcssa = phi i32 [ %found_mode.2, %for.cond18 ], !dbg !2928
  call void @llvm.dbg.value(metadata i32 %found_mode.2.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.2.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.2.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp43 = icmp eq i32 %found_mode.2.lcssa, 0, !dbg !2962
  br i1 %cmp43, label %if.end46, label %cleanup, !dbg !2964

if.end46:                                         ; preds = %for.end42
  br label %for.cond48, !dbg !2965

for.cond48:                                       ; preds = %for.inc68, %if.end46
  %found_mode.4 = phi i32 [ 0, %if.end46 ], [ %found_mode.5, %for.inc68 ], !dbg !2928
  %mode.2.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 17), %if.end46 ], [ %arrayidx70, %for.inc68 ]
  %mode.2.in = load i8, i8* %mode.2.in.in, align 1, !dbg !2967
  %mode.2 = zext i8 %mode.2.in to i32, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %mode.2, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.4, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp49 = icmp eq i8 %mode.2.in, 0, !dbg !2968
  br i1 %cmp49, label %for.end72, label %for.body51, !dbg !2970

for.body51:                                       ; preds = %for.cond48
  %idxprom54 = zext i8 %mode.2.in to i64, !dbg !2971
  %arrayidx55 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom54, !dbg !2971
  %2 = load i8, i8* %arrayidx55, align 1, !dbg !2971
  %conv56 = zext i8 %2 to i32, !dbg !2973
  %cmp57 = icmp eq i32 %conv56, %nregs, !dbg !2974
  br i1 %cmp57, label %land.lhs.true59, label %for.inc68, !dbg !2975

land.lhs.true59:                                  ; preds = %for.body51
  %call60 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %regno, i32 %mode.2) #6, !dbg !2976
  %tobool62 = icmp eq i8 %call60, 0, !dbg !2976
  %spec.select2 = select i1 %tobool62, i32 %found_mode.4, i32 %mode.2, !dbg !2977
  br label %for.inc68, !dbg !2977

for.inc68:                                        ; preds = %land.lhs.true59, %for.body51
  %found_mode.5 = phi i32 [ %found_mode.4, %for.body51 ], [ %spec.select2, %land.lhs.true59 ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.5, metadata !2920, metadata !DIExpression()), !dbg !2922
  %arrayidx70 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom54, !dbg !2978
  br label %for.cond48, !dbg !2979, !llvm.loop !2980

for.end72:                                        ; preds = %for.cond48
  %found_mode.4.lcssa = phi i32 [ %found_mode.4, %for.cond48 ], !dbg !2928
  call void @llvm.dbg.value(metadata i32 %found_mode.4.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.4.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.4.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp73 = icmp eq i32 %found_mode.4.lcssa, 0, !dbg !2982
  br i1 %cmp73, label %if.end76, label %cleanup, !dbg !2984

if.end76:                                         ; preds = %for.end72
  br label %for.cond78, !dbg !2985

for.cond78:                                       ; preds = %for.inc98, %if.end76
  %found_mode.6 = phi i32 [ 0, %if.end76 ], [ %found_mode.7, %for.inc98 ], !dbg !2928
  %mode.3.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 12), %if.end76 ], [ %arrayidx100, %for.inc98 ]
  %mode.3.in = load i8, i8* %mode.3.in.in, align 1, !dbg !2987
  %mode.3 = zext i8 %mode.3.in to i32, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %mode.3, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.6, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp79 = icmp eq i8 %mode.3.in, 0, !dbg !2988
  br i1 %cmp79, label %for.end102, label %for.body81, !dbg !2990

for.body81:                                       ; preds = %for.cond78
  %idxprom84 = zext i8 %mode.3.in to i64, !dbg !2991
  %arrayidx85 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom84, !dbg !2991
  %3 = load i8, i8* %arrayidx85, align 1, !dbg !2991
  %conv86 = zext i8 %3 to i32, !dbg !2993
  %cmp87 = icmp eq i32 %conv86, %nregs, !dbg !2994
  br i1 %cmp87, label %land.lhs.true89, label %for.inc98, !dbg !2995

land.lhs.true89:                                  ; preds = %for.body81
  %call90 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %regno, i32 %mode.3) #6, !dbg !2996
  %tobool92 = icmp eq i8 %call90, 0, !dbg !2996
  %spec.select3 = select i1 %tobool92, i32 %found_mode.6, i32 %mode.3, !dbg !2997
  br label %for.inc98, !dbg !2997

for.inc98:                                        ; preds = %land.lhs.true89, %for.body81
  %found_mode.7 = phi i32 [ %found_mode.6, %for.body81 ], [ %spec.select3, %land.lhs.true89 ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.7, metadata !2920, metadata !DIExpression()), !dbg !2922
  %arrayidx100 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom84, !dbg !2998
  br label %for.cond78, !dbg !2999, !llvm.loop !3000

for.end102:                                       ; preds = %for.cond78
  %found_mode.6.lcssa = phi i32 [ %found_mode.6, %for.cond78 ], !dbg !2928
  call void @llvm.dbg.value(metadata i32 %found_mode.6.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.6.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %found_mode.6.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2922
  %cmp103 = icmp eq i32 %found_mode.6.lcssa, 0, !dbg !3002
  br i1 %cmp103, label %for.cond107.preheader, label %cleanup, !dbg !3004

for.cond107.preheader:                            ; preds = %for.end102
  br label %for.cond107, !dbg !3005

for.cond107:                                      ; preds = %for.cond107.preheader, %for.inc127
  %indvars.iv = phi i64 [ 2, %for.cond107.preheader ], [ %indvars.iv.next, %for.inc127 ], !dbg !3007
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2919, metadata !DIExpression()), !dbg !2922
  %exitcond = icmp eq i64 %indvars.iv, 87, !dbg !3008
  br i1 %exitcond, label %cleanup.loopexit, label %for.body110, !dbg !3005

for.body110:                                      ; preds = %for.cond107
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2921, metadata !DIExpression()), !dbg !2922
  %arrayidx114 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %indvars.iv, !dbg !3010
  %4 = load i8, i8* %arrayidx114, align 1, !dbg !3010
  %conv115 = zext i8 %4 to i32, !dbg !3013
  %cmp116 = icmp eq i32 %conv115, %nregs, !dbg !3014
  br i1 %cmp116, label %land.lhs.true118, label %for.inc127, !dbg !3015

land.lhs.true118:                                 ; preds = %for.body110
  %5 = trunc i64 %indvars.iv to i32, !dbg !3016
  %call119 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %regno, i32 %5) #6, !dbg !3016
  %tobool121 = icmp eq i8 %call119, 0, !dbg !3016
  br i1 %tobool121, label %for.inc127, label %land.lhs.true122, !dbg !3017

land.lhs.true122:                                 ; preds = %land.lhs.true118
  %indvars.iv.lcssa6 = phi i64 [ %indvars.iv, %land.lhs.true118 ], !dbg !3007
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa6, metadata !2919, metadata !DIExpression()), !dbg !2922
  %6 = trunc i64 %indvars.iv.lcssa6 to i32, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %6, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %6, metadata !2919, metadata !DIExpression()), !dbg !2922
  br label %cleanup, !dbg !3018

for.inc127:                                       ; preds = %land.lhs.true118, %for.body110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3019
  call void @llvm.dbg.value(metadata i32 undef, metadata !2919, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2922
  br label %for.cond107, !dbg !3020, !llvm.loop !3021

cleanup.loopexit:                                 ; preds = %for.cond107
  br label %cleanup, !dbg !3023

cleanup:                                          ; preds = %cleanup.loopexit, %for.end102, %for.end72, %for.end42, %for.end, %land.lhs.true122
  %retval.0 = phi i32 [ %6, %land.lhs.true122 ], [ %found_mode.0.lcssa, %for.end ], [ %found_mode.2.lcssa, %for.end42 ], [ %found_mode.4.lcssa, %for.end72 ], [ %found_mode.6.lcssa, %for.end102 ], [ 0, %cleanup.loopexit ], !dbg !2922
  ret i32 %retval.0, !dbg !3023
}

; Function Attrs: nounwind uwtable
define dso_local void @init_regs() local_unnamed_addr #4 !dbg !3024 {
entry:
  tail call fastcc void @init_reg_sets_1() #8, !dbg !3025
  ret void, !dbg !3026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_reg_sets_1() unnamed_addr #4 !dbg !3027 {
entry:
  tail call fastcc void @restore_register_info() #8, !dbg !3060
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond, !dbg !3062

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body ], [ 0, %entry ], !dbg !3064
  call void @llvm.dbg.value(metadata i64 %indvars.iv56, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond58 = icmp eq i64 %indvars.iv56, 53, !dbg !3065
  br i1 %exitcond58, label %for.end, label %for.body, !dbg !3067

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i64 0, i64 %indvars.iv56, !dbg !3068
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3068
  %idxprom1 = sext i32 %0 to i64, !dbg !3069
  %arrayidx2 = getelementptr inbounds [53 x i32], [53 x i32]* @inv_reg_alloc_order, i64 0, i64 %idxprom1, !dbg !3069
  %1 = trunc i64 %indvars.iv56 to i32, !dbg !3070
  store i32 %1, i32* %arrayidx2, align 4, !dbg !3070
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond, !dbg !3072, !llvm.loop !3073

for.end:                                          ; preds = %for.cond
  tail call void @ix86_conditional_register_usage() #6, !dbg !3075
  %call = tail call i8* @memset(i8* bitcast ([27 x i32]* @reg_class_size to i8*), i32 0, i64 108) #6, !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond3, !dbg !3077

for.cond3:                                        ; preds = %for.inc17, %for.end
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc17 ], [ 0, %for.end ], !dbg !3079
  call void @llvm.dbg.value(metadata i64 %indvars.iv53, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond55 = icmp eq i64 %indvars.iv53, 27, !dbg !3080
  br i1 %exitcond55, label %for.end19, label %for.cond6.preheader, !dbg !3082

for.cond6.preheader:                              ; preds = %for.cond3
  %arrayidx10 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv53, !dbg !3083
  %2 = load i64, i64* %arrayidx10, align 8, !dbg !3083
  %arrayidx12 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %indvars.iv53, !dbg !3083
  br label %for.cond6, !dbg !3087

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc14
  %indvars.iv50 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next51, %for.inc14 ], !dbg !3088
  call void @llvm.dbg.value(metadata i64 %indvars.iv50, metadata !3030, metadata !DIExpression()), !dbg !3061
  %exitcond52 = icmp eq i64 %indvars.iv50, 53, !dbg !3089
  br i1 %exitcond52, label %for.inc17, label %for.body8, !dbg !3087

for.body8:                                        ; preds = %for.cond6
  %shl = shl i64 1, %indvars.iv50, !dbg !3090
  %and = and i64 %2, %shl, !dbg !3090
  %tobool = icmp eq i64 %and, 0, !dbg !3090
  br i1 %tobool, label %for.inc14, label %if.then, !dbg !3091

if.then:                                          ; preds = %for.body8
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !3092
  %inc13 = add i32 %3, 1, !dbg !3092
  store i32 %inc13, i32* %arrayidx12, align 4, !dbg !3092
  br label %for.inc14, !dbg !3093

for.inc14:                                        ; preds = %for.body8, %if.then
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !3094
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond6, !dbg !3095, !llvm.loop !3096

for.inc17:                                        ; preds = %for.cond6
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond3, !dbg !3099, !llvm.loop !3100

for.end19:                                        ; preds = %for.cond3
  %call20 = tail call i8* @memset(i8* bitcast ([27 x [27 x i32]]* @reg_class_subunion to i8*), i32 0, i64 2916) #6, !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond21, !dbg !3103

for.cond21:                                       ; preds = %for.inc60, %for.end19
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc60 ], [ 0, %for.end19 ], !dbg !3104
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond49 = icmp eq i64 %indvars.iv47, 27, !dbg !3105
  br i1 %exitcond49, label %for.end62, label %for.cond24.preheader, !dbg !3106

for.cond24.preheader:                             ; preds = %for.cond21
  %arrayidx28 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv47, !dbg !3107
  br label %for.cond24, !dbg !3108

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc57
  %indvars.iv44 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next45, %for.inc57 ], !dbg !3109
  call void @llvm.dbg.value(metadata i64 %indvars.iv44, metadata !3030, metadata !DIExpression()), !dbg !3061
  %exitcond46 = icmp eq i64 %indvars.iv44, 27, !dbg !3110
  br i1 %exitcond46, label %for.inc60, label %for.body26, !dbg !3108

for.body26:                                       ; preds = %for.cond24
  %4 = load i64, i64* %arrayidx28, align 8, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %4, metadata !3032, metadata !DIExpression()), !dbg !3107
  %arrayidx30 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv44, !dbg !3112
  %5 = load i64, i64* %arrayidx30, align 8, !dbg !3112
  %or = or i64 %4, %5, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %or, metadata !3032, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 0, metadata !3039, metadata !DIExpression()), !dbg !3107
  %arrayidx43 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subunion, i64 0, i64 %indvars.iv47, i64 %indvars.iv44, !dbg !3113
  br label %for.cond31, !dbg !3117

for.cond31:                                       ; preds = %for.inc54, %for.body26
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc54 ], [ 0, %for.body26 ], !dbg !3118
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !3039, metadata !DIExpression()), !dbg !3107
  %exitcond43 = icmp eq i64 %indvars.iv41, 27, !dbg !3119
  br i1 %exitcond43, label %for.inc57, label %for.body33, !dbg !3120

for.body33:                                       ; preds = %for.cond31
  %arrayidx35 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv41, !dbg !3121
  %6 = load i64, i64* %arrayidx35, align 8, !dbg !3121
  %call36 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %6, i64 %or) #8, !dbg !3122
  %tobool37 = icmp eq i8 %call36, 0, !dbg !3122
  br i1 %tobool37, label %for.inc54, label %land.lhs.true, !dbg !3123

land.lhs.true:                                    ; preds = %for.body33
  %7 = load i64, i64* %arrayidx35, align 8, !dbg !3124
  %8 = load i32, i32* %arrayidx43, align 4, !dbg !3125
  %idxprom44 = sext i32 %8 to i64, !dbg !3126
  %arrayidx45 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom44, !dbg !3126
  %9 = load i64, i64* %arrayidx45, align 8, !dbg !3126
  %call46 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %7, i64 %9) #8, !dbg !3127
  %tobool47 = icmp eq i8 %call46, 0, !dbg !3127
  br i1 %tobool47, label %if.then48, label %for.inc54, !dbg !3128

if.then48:                                        ; preds = %land.lhs.true
  %10 = trunc i64 %indvars.iv41 to i32, !dbg !3129
  store i32 %10, i32* %arrayidx43, align 4, !dbg !3129
  br label %for.inc54, !dbg !3130

for.inc54:                                        ; preds = %land.lhs.true, %for.body33, %if.then48
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !3131
  call void @llvm.dbg.value(metadata i32 undef, metadata !3039, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3107
  br label %for.cond31, !dbg !3132, !llvm.loop !3133

for.inc57:                                        ; preds = %for.cond31
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond24, !dbg !3136, !llvm.loop !3137

for.inc60:                                        ; preds = %for.cond24
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond21, !dbg !3140, !llvm.loop !3141

for.end62:                                        ; preds = %for.cond21
  %call63 = tail call i8* @memset(i8* bitcast ([27 x [27 x i32]]* @reg_class_superunion to i8*), i32 0, i64 2916) #6, !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond64, !dbg !3144

for.cond64:                                       ; preds = %for.inc99, %for.end62
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc99 ], [ 0, %for.end62 ], !dbg !3145
  call void @llvm.dbg.value(metadata i64 %indvars.iv38, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond40 = icmp eq i64 %indvars.iv38, 27, !dbg !3146
  br i1 %exitcond40, label %for.cond102.preheader, label %for.cond68.preheader, !dbg !3147

for.cond68.preheader:                             ; preds = %for.cond64
  %arrayidx75 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv38, !dbg !3148
  br label %for.cond68, !dbg !3149

for.cond102.preheader:                            ; preds = %for.cond64
  br label %for.cond102, !dbg !3150

for.cond68:                                       ; preds = %for.cond68.preheader, %for.end91
  %indvars.iv35 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next36, %for.end91 ], !dbg !3152
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !3030, metadata !DIExpression()), !dbg !3061
  %exitcond37 = icmp eq i64 %indvars.iv35, 27, !dbg !3153
  br i1 %exitcond37, label %for.inc99, label %for.body71, !dbg !3149

for.body71:                                       ; preds = %for.cond68
  %11 = load i64, i64* %arrayidx75, align 8, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %11, metadata !3040, metadata !DIExpression()), !dbg !3148
  %arrayidx77 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv35, !dbg !3155
  %12 = load i64, i64* %arrayidx77, align 8, !dbg !3155
  %or78 = or i64 %11, %12, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %or78, metadata !3040, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 0, metadata !3047, metadata !DIExpression()), !dbg !3148
  br label %for.cond79, !dbg !3156

for.cond79:                                       ; preds = %for.inc89, %for.body71
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc89 ], [ 0, %for.body71 ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !3047, metadata !DIExpression()), !dbg !3148
  %13 = trunc i64 %indvars.iv32 to i32, !dbg !3159
  %exitcond34 = icmp eq i64 %indvars.iv32, 27, !dbg !3160
  br i1 %exitcond34, label %for.end91, label %for.body82, !dbg !3159

for.body82:                                       ; preds = %for.cond79
  %arrayidx84 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv32, !dbg !3162
  %14 = load i64, i64* %arrayidx84, align 8, !dbg !3162
  %call85 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %or78, i64 %14) #8, !dbg !3164
  %tobool86 = icmp eq i8 %call85, 0, !dbg !3164
  br i1 %tobool86, label %for.inc89, label %for.end91, !dbg !3165

for.inc89:                                        ; preds = %for.body82
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !3166
  call void @llvm.dbg.value(metadata i32 undef, metadata !3047, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3148
  br label %for.cond79, !dbg !3167, !llvm.loop !3168

for.end91:                                        ; preds = %for.cond79, %for.body82
  %.lcssa = phi i32 [ %13, %for.cond79 ], [ %13, %for.body82 ], !dbg !3159
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3047, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3047, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3047, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3047, metadata !DIExpression()), !dbg !3148
  %arrayidx95 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_superunion, i64 0, i64 %indvars.iv38, i64 %indvars.iv35, !dbg !3170
  store i32 %.lcssa, i32* %arrayidx95, align 4, !dbg !3171
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond68, !dbg !3173, !llvm.loop !3174

for.inc99:                                        ; preds = %for.cond68
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond64, !dbg !3177, !llvm.loop !3178

for.cond102:                                      ; preds = %for.cond102.preheader, %for.inc117
  %indvars.iv29 = phi i64 [ 0, %for.cond102.preheader ], [ %indvars.iv.next30, %for.inc117 ], !dbg !3180
  call void @llvm.dbg.value(metadata i64 %indvars.iv29, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond31 = icmp eq i64 %indvars.iv29, 27, !dbg !3181
  br i1 %exitcond31, label %for.cond120.preheader, label %for.cond106.preheader, !dbg !3150

for.cond106.preheader:                            ; preds = %for.cond102
  br label %for.cond106, !dbg !3183

for.cond120.preheader:                            ; preds = %for.cond102
  br label %for.cond120, !dbg !3186

for.cond106:                                      ; preds = %for.cond106.preheader, %for.body109
  %indvars.iv26 = phi i64 [ 0, %for.cond106.preheader ], [ %indvars.iv.next27, %for.body109 ], !dbg !3187
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !3030, metadata !DIExpression()), !dbg !3061
  %exitcond28 = icmp eq i64 %indvars.iv26, 27, !dbg !3188
  br i1 %exitcond28, label %for.inc117, label %for.body109, !dbg !3183

for.body109:                                      ; preds = %for.cond106
  %arrayidx113 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subclasses, i64 0, i64 %indvars.iv29, i64 %indvars.iv26, !dbg !3190
  store i32 27, i32* %arrayidx113, align 4, !dbg !3191
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond106, !dbg !3193, !llvm.loop !3194

for.inc117:                                       ; preds = %for.cond106
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond102, !dbg !3197, !llvm.loop !3198

for.cond120:                                      ; preds = %for.cond120.preheader, %for.inc148
  %indvars.iv20 = phi i64 [ 0, %for.cond120.preheader ], [ %indvars.iv.next21, %for.inc148 ], !dbg !3200
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond25 = icmp eq i64 %indvars.iv20, 27, !dbg !3201
  br i1 %exitcond25, label %for.end150, label %for.body123, !dbg !3186

for.body123:                                      ; preds = %for.cond120
  %cmp124 = icmp eq i64 %indvars.iv20, 0, !dbg !3202
  br i1 %cmp124, label %for.inc148, label %if.end127, !dbg !3204

if.end127:                                        ; preds = %for.body123
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  %arrayidx133 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv20, !dbg !3205
  br label %for.cond128, !dbg !3206

for.cond128:                                      ; preds = %for.inc145, %if.end127
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc145 ], [ %indvars.iv20, %if.end127 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !3207
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  %exitcond24 = icmp eq i64 %indvars.iv22, 26, !dbg !3208
  br i1 %exitcond24, label %for.inc148.loopexit, label %for.body131, !dbg !3209

for.body131:                                      ; preds = %for.cond128
  %15 = load i64, i64* %arrayidx133, align 8, !dbg !3210
  %arrayidx135 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv.next23, !dbg !3211
  %16 = load i64, i64* %arrayidx135, align 8, !dbg !3211
  %call136 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %15, i64 %16) #8, !dbg !3212
  %tobool137 = icmp eq i8 %call136, 0, !dbg !3212
  br i1 %tobool137, label %for.inc145, label %if.then138, !dbg !3213

if.then138:                                       ; preds = %for.body131
  %arrayidx141 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subclasses, i64 0, i64 %indvars.iv.next23, i64 0, !dbg !3214
  call void @llvm.dbg.value(metadata i32* %arrayidx141, metadata !3048, metadata !DIExpression()), !dbg !3215
  br label %while.cond, !dbg !3216

while.cond:                                       ; preds = %while.body, %if.then138
  %p.0 = phi i32* [ %arrayidx141, %if.then138 ], [ %incdec.ptr, %while.body ], !dbg !3215
  call void @llvm.dbg.value(metadata i32* %p.0, metadata !3048, metadata !DIExpression()), !dbg !3215
  %17 = load i32, i32* %p.0, align 4, !dbg !3217
  %cmp142 = icmp eq i32 %17, 27, !dbg !3218
  br i1 %cmp142, label %while.end, label %while.body, !dbg !3216

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i32, i32* %p.0, i64 1, !dbg !3219
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !3048, metadata !DIExpression()), !dbg !3215
  br label %while.cond, !dbg !3216, !llvm.loop !3220

while.end:                                        ; preds = %while.cond
  %p.0.lcssa = phi i32* [ %p.0, %while.cond ], !dbg !3215
  call void @llvm.dbg.value(metadata i32* %p.0.lcssa, metadata !3048, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32* %p.0.lcssa, metadata !3048, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32* %p.0.lcssa, metadata !3048, metadata !DIExpression()), !dbg !3215
  %18 = trunc i64 %indvars.iv20 to i32, !dbg !3221
  store i32 %18, i32* %p.0.lcssa, align 4, !dbg !3221
  br label %for.inc145, !dbg !3222

for.inc145:                                       ; preds = %for.body131, %while.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond128, !dbg !3223, !llvm.loop !3224

for.inc148.loopexit:                              ; preds = %for.cond128
  br label %for.inc148, !dbg !3226

for.inc148:                                       ; preds = %for.inc148.loopexit, %for.body123
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond120, !dbg !3227, !llvm.loop !3228

for.end150:                                       ; preds = %for.cond120
  store i64 0, i64* @fixed_reg_set, align 8, !dbg !3230
  store i64 0, i64* @call_used_reg_set, align 8, !dbg !3231
  store i64 0, i64* @call_fixed_reg_set, align 8, !dbg !3232
  store i64 0, i64* @regs_invalidated_by_call, align 8, !dbg !3233
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_invalidated_by_call_regset, align 8, !dbg !3234
  %tobool151 = icmp eq %struct.bitmap_head_def* %19, null, !dbg !3234
  br i1 %tobool151, label %if.then152, label %if.else, !dbg !3236

if.then152:                                       ; preds = %for.end150
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @persistent_obstack) #6, !dbg !3237
  %call153 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @persistent_obstack) #6, !dbg !3239
  store %struct.bitmap_head_def* %call153, %struct.bitmap_head_def** @regs_invalidated_by_call_regset, align 8, !dbg !3240
  br label %if.end154, !dbg !3241

if.else:                                          ; preds = %for.end150
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %19) #6, !dbg !3242
  br label %if.end154

if.end154:                                        ; preds = %if.else, %if.then152
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond155, !dbg !3243

for.cond155:                                      ; preds = %for.inc247, %if.end154
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc247 ], [ 0, %if.end154 ], !dbg !3245
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond19 = icmp eq i64 %indvars.iv17, 53, !dbg !3246
  br i1 %exitcond19, label %for.end249, label %for.body158, !dbg !3248

for.body158:                                      ; preds = %for.cond155
  %arrayidx160 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv17, !dbg !3249
  %20 = load i8, i8* %arrayidx160, align 1, !dbg !3249
  %tobool161 = icmp eq i8 %20, 0, !dbg !3249
  br i1 %tobool161, label %cond.end, label %lor.lhs.false, !dbg !3249

lor.lhs.false:                                    ; preds = %for.body158
  %arrayidx163 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv17, !dbg !3249
  %21 = load i8, i8* %arrayidx163, align 1, !dbg !3249
  %tobool165 = icmp eq i8 %21, 0, !dbg !3249
  br i1 %tobool165, label %cond.true, label %cond.end, !dbg !3249

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !3249
  %.pre = load i8, i8* %arrayidx160, align 1, !dbg !3251
  br label %cond.end, !dbg !3249

cond.end:                                         ; preds = %lor.lhs.false, %for.body158, %cond.true
  %22 = phi i8 [ %20, %lor.lhs.false ], [ 0, %for.body158 ], [ %.pre, %cond.true ], !dbg !3251
  %tobool168 = icmp eq i8 %22, 0, !dbg !3251
  br i1 %tobool168, label %if.end173, label %if.then169, !dbg !3253

if.then169:                                       ; preds = %cond.end
  %shl171 = shl i64 1, %indvars.iv17, !dbg !3254
  %23 = load i64, i64* @fixed_reg_set, align 8, !dbg !3254
  %or172 = or i64 %23, %shl171, !dbg !3254
  store i64 %or172, i64* @fixed_reg_set, align 8, !dbg !3254
  br label %if.end173, !dbg !3254

if.end173:                                        ; preds = %cond.end, %if.then169
  %arrayidx175 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv17, !dbg !3255
  %24 = load i8, i8* %arrayidx175, align 1, !dbg !3255
  %tobool176 = icmp eq i8 %24, 0, !dbg !3255
  br i1 %tobool176, label %if.end181, label %if.then177, !dbg !3257

if.then177:                                       ; preds = %if.end173
  %shl179 = shl i64 1, %indvars.iv17, !dbg !3258
  %25 = load i64, i64* @call_used_reg_set, align 8, !dbg !3258
  %or180 = or i64 %25, %shl179, !dbg !3258
  store i64 %or180, i64* @call_used_reg_set, align 8, !dbg !3258
  br label %if.end181, !dbg !3258

if.end181:                                        ; preds = %if.end173, %if.then177
  %cmp182 = icmp eq i64 %indvars.iv17, 7, !dbg !3259
  br i1 %cmp182, label %for.inc247, label %if.else185, !dbg !3261

if.else185:                                       ; preds = %if.end181
  %arrayidx187 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %indvars.iv17, !dbg !3262
  %26 = load i8, i8* %arrayidx187, align 1, !dbg !3262
  %tobool188 = icmp eq i8 %26, 0, !dbg !3262
  br i1 %tobool188, label %if.else194, label %if.then189, !dbg !3264

if.then189:                                       ; preds = %if.else185
  %shl191 = shl i64 1, %indvars.iv17, !dbg !3265
  %27 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !3265
  %or192 = or i64 %27, %shl191, !dbg !3265
  store i64 %or192, i64* @regs_invalidated_by_call, align 8, !dbg !3265
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_invalidated_by_call_regset, align 8, !dbg !3267
  %29 = trunc i64 %indvars.iv17 to i32, !dbg !3267
  %call193 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %28, i32 %29) #6, !dbg !3267
  br label %for.inc247, !dbg !3268

if.else194:                                       ; preds = %if.else185
  %30 = trunc i64 %indvars.iv17 to i32, !dbg !3269
  switch i32 %30, label %if.else211 [
    i32 20, label %for.inc247
    i32 6, label %for.inc247
    i32 16, label %land.lhs.true205
  ], !dbg !3269

land.lhs.true205:                                 ; preds = %if.else194
  %31 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 16), align 16, !dbg !3270
  %tobool209 = icmp eq i8 %31, 0, !dbg !3270
  br i1 %tobool209, label %if.else211, label %for.inc247, !dbg !3274

if.else211:                                       ; preds = %land.lhs.true205, %if.else194
  %32 = load i32, i32* @flag_pic, align 4, !dbg !3275
  %tobool212 = icmp eq i32 %32, 0, !dbg !3275
  br i1 %tobool212, label %cond.end221, label %cond.false214, !dbg !3275

cond.false214:                                    ; preds = %if.else211
  %33 = load i32, i32* @reload_completed, align 4, !dbg !3275
  %tobool215 = icmp eq i32 %33, 0, !dbg !3275
  br i1 %tobool215, label %cond.end221, label %cond.true216, !dbg !3275

cond.true216:                                     ; preds = %cond.false214
  %34 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8, !dbg !3275
  %call217 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %34) #8, !dbg !3275
  br label %cond.end221, !dbg !3275

cond.end221:                                      ; preds = %cond.false214, %if.else211, %cond.true216
  %cond222 = phi i32 [ -1, %if.else211 ], [ %call217, %cond.true216 ], [ 3, %cond.false214 ], !dbg !3275
  %35 = zext i32 %cond222 to i64, !dbg !3277
  %cmp223 = icmp eq i64 %indvars.iv17, %35, !dbg !3277
  br i1 %cmp223, label %land.lhs.true225, label %if.else231, !dbg !3278

land.lhs.true225:                                 ; preds = %cond.end221
  %36 = load i8, i8* %arrayidx160, align 1, !dbg !3279
  %tobool229 = icmp eq i8 %36, 0, !dbg !3279
  br i1 %tobool229, label %if.else231, label %for.inc247, !dbg !3280

if.else231:                                       ; preds = %land.lhs.true225, %cond.end221
  %37 = load i8, i8* %arrayidx175, align 1, !dbg !3281
  %tobool234 = icmp eq i8 %37, 0, !dbg !3281
  br i1 %tobool234, label %for.inc247, label %if.then235, !dbg !3283

if.then235:                                       ; preds = %if.else231
  %shl237 = shl i64 1, %indvars.iv17, !dbg !3284
  %38 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !3284
  %or238 = or i64 %38, %shl237, !dbg !3284
  store i64 %or238, i64* @regs_invalidated_by_call, align 8, !dbg !3284
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_invalidated_by_call_regset, align 8, !dbg !3286
  %40 = trunc i64 %indvars.iv17 to i32, !dbg !3286
  %call239 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %39, i32 %40) #6, !dbg !3286
  br label %for.inc247, !dbg !3287

for.inc247:                                       ; preds = %land.lhs.true225, %if.else231, %land.lhs.true205, %if.end181, %if.else194, %if.then235, %if.else194, %if.then189
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !3288
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond155, !dbg !3289, !llvm.loop !3290

for.end249:                                       ; preds = %for.cond155
  %41 = load i64, i64* @fixed_reg_set, align 8, !dbg !3292
  store i64 %41, i64* @call_fixed_reg_set, align 8, !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3061
  br label %for.cond250, !dbg !3293

for.cond250:                                      ; preds = %for.inc272, %for.end249
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc272 ], [ 0, %for.end249 ]
  %42 = phi i64 [ %46, %for.inc272 ], [ %41, %for.end249 ]
  %43 = phi i64 [ %47, %for.inc272 ], [ %41, %for.end249 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv14, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond16 = icmp eq i64 %indvars.iv14, 53, !dbg !3295
  br i1 %exitcond16, label %for.end274, label %for.body253, !dbg !3297

for.body253:                                      ; preds = %for.cond250
  %arrayidx255 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %indvars.iv14, !dbg !3298
  %44 = load i8, i8* %arrayidx255, align 1, !dbg !3298
  %tobool256 = icmp eq i8 %44, 0, !dbg !3298
  br i1 %tobool256, label %for.inc272, label %if.then257, !dbg !3301

if.then257:                                       ; preds = %for.body253
  %arrayidx259 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv14, !dbg !3302
  store i8 1, i8* %arrayidx259, align 1, !dbg !3304
  %arrayidx261 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv14, !dbg !3305
  store i8 1, i8* %arrayidx261, align 1, !dbg !3306
  %shl263 = shl i64 1, %indvars.iv14, !dbg !3307
  %or264 = or i64 %43, %shl263, !dbg !3307
  store i64 %or264, i64* @fixed_reg_set, align 8, !dbg !3307
  %45 = load i64, i64* @call_used_reg_set, align 8, !dbg !3308
  %or267 = or i64 %45, %shl263, !dbg !3308
  store i64 %or267, i64* @call_used_reg_set, align 8, !dbg !3308
  %or270 = or i64 %42, %shl263, !dbg !3309
  store i64 %or270, i64* @call_fixed_reg_set, align 8, !dbg !3309
  br label %for.inc272, !dbg !3310

for.inc272:                                       ; preds = %for.body253, %if.then257
  %46 = phi i64 [ %42, %for.body253 ], [ %or270, %if.then257 ]
  %47 = phi i64 [ %43, %for.body253 ], [ %or264, %if.then257 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !3311
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond250, !dbg !3312, !llvm.loop !3313

for.end274:                                       ; preds = %for.cond250
  %call275 = tail call i8* @memset(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 0), i32 0, i64 87) #6, !dbg !3315
  %call276 = tail call i8* @memset(i8* getelementptr inbounds ([27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 0, i64 0), i32 0, i64 2349) #6, !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()), !dbg !3061
  br label %for.cond277, !dbg !3317

for.cond277:                                      ; preds = %for.inc353, %for.end274
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc353 ], [ 0, %for.end274 ], !dbg !3318
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !3031, metadata !DIExpression()), !dbg !3061
  %exitcond13 = icmp eq i64 %indvars.iv11, 87, !dbg !3319
  br i1 %exitcond13, label %for.cond356.preheader, label %for.cond281.preheader, !dbg !3320

for.cond281.preheader:                            ; preds = %for.cond277
  br label %for.cond281, !dbg !3321

for.cond356.preheader:                            ; preds = %for.cond277
  br label %for.cond356, !dbg !3323

for.cond281:                                      ; preds = %for.cond281.preheader, %for.inc297
  %indvars.iv2 = phi i64 [ 0, %for.cond281.preheader ], [ %indvars.iv.next3, %for.inc297 ], !dbg !3325
  %ok_regs.0 = phi i64 [ 0, %for.cond281.preheader ], [ %ok_regs.1, %for.inc297 ], !dbg !3325
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %ok_regs.0, metadata !3056, metadata !DIExpression()), !dbg !3326
  %exitcond4 = icmp eq i64 %indvars.iv2, 53, !dbg !3327
  br i1 %exitcond4, label %for.cond300.preheader, label %for.body284, !dbg !3321

for.cond300.preheader:                            ; preds = %for.cond281
  %ok_regs.0.lcssa = phi i64 [ %ok_regs.0, %for.cond281 ], !dbg !3325
  call void @llvm.dbg.value(metadata i64 %ok_regs.0.lcssa, metadata !3056, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %ok_regs.0.lcssa, metadata !3056, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %ok_regs.0.lcssa, metadata !3056, metadata !DIExpression()), !dbg !3326
  %cmp319 = icmp eq i64 %indvars.iv11, 40, !dbg !3329
  %arrayidx324 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %indvars.iv11, !dbg !3329
  %arrayidx308 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %indvars.iv11, !dbg !3329
  %arrayidx348 = getelementptr inbounds [87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 %indvars.iv11, !dbg !3333
  br i1 %cmp319, label %for.cond300.preheader.split.us, label %for.cond300.preheader.for.cond300.preheader.split_crit_edge, !dbg !3335

for.cond300.preheader.for.cond300.preheader.split_crit_edge: ; preds = %for.cond300.preheader
  br label %for.cond300, !dbg !3335

for.cond300.preheader.split.us:                   ; preds = %for.cond300.preheader
  br label %for.cond300.us, !dbg !3335

for.cond300.us:                                   ; preds = %for.inc350.us, %for.cond300.preheader.split.us
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc350.us ], [ 0, %for.cond300.preheader.split.us ], !dbg !3336
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond10 = icmp eq i64 %indvars.iv8, 27, !dbg !3337
  br i1 %exitcond10, label %for.inc353.us-lcssa.us, label %for.body303.us, !dbg !3335

for.body303.us:                                   ; preds = %for.cond300.us
  %48 = trunc i64 %indvars.iv8 to i32, !dbg !3338
  %call304.us = tail call i32 @reg_classes_intersect_p(i32 %48, i32 13) #8, !dbg !3338
  %tobool305.us = icmp eq i32 %call304.us, 0, !dbg !3338
  br i1 %tobool305.us, label %cond.true306.us, label %cond.false318.us, !dbg !3338

cond.false318.us:                                 ; preds = %for.body303.us
  br label %cond.end330.us, !dbg !3338

cond.true306.us:                                  ; preds = %for.body303.us
  %49 = load i8, i8* %arrayidx308, align 1, !dbg !3338
  %cmp310.us = icmp eq i8 %49, 10, !dbg !3338
  br i1 %cmp310.us, label %lor.end.us, label %lor.rhs.us, !dbg !3338

lor.rhs.us:                                       ; preds = %cond.true306.us
  %cmp315.us = icmp eq i8 %49, 11, !dbg !3338
  br label %lor.end.us, !dbg !3338

lor.end.us:                                       ; preds = %lor.rhs.us, %cond.true306.us
  %50 = phi i1 [ true, %cond.true306.us ], [ %cmp315.us, %lor.rhs.us ]
  %cond317.us = select i1 %50, i32 2, i32 1, !dbg !3338
  br label %cond.end330.us, !dbg !3338

cond.end330.us:                                   ; preds = %lor.end.us, %cond.false318.us
  %cond331.us = phi i32 [ %cond317.us, %lor.end.us ], [ 3, %cond.false318.us ], !dbg !3338
  %arrayidx333.us = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %indvars.iv8, !dbg !3339
  %51 = load i32, i32* %arrayidx333.us, align 4, !dbg !3339
  %cmp334.us = icmp ugt i32 %cond331.us, %51, !dbg !3340
  br i1 %cmp334.us, label %for.inc350.us, label %land.lhs.true336.us, !dbg !3341

land.lhs.true336.us:                              ; preds = %cond.end330.us
  %arrayidx338.us = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv8, !dbg !3342
  %52 = load i64, i64* %arrayidx338.us, align 8, !dbg !3342
  %call339.us = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 %ok_regs.0.lcssa, i64 %52) #8, !dbg !3343
  %tobool341.us = icmp eq i8 %call339.us, 0, !dbg !3343
  br i1 %tobool341.us, label %for.inc350.us, label %if.then342.us, !dbg !3344

if.then342.us:                                    ; preds = %land.lhs.true336.us
  %arrayidx346.us = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %indvars.iv8, i64 %indvars.iv11, !dbg !3345
  store i8 1, i8* %arrayidx346.us, align 1, !dbg !3346
  store i8 1, i8* %arrayidx348, align 1, !dbg !3347
  br label %for.inc350.us, !dbg !3348

for.inc350.us:                                    ; preds = %if.then342.us, %land.lhs.true336.us, %cond.end330.us
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !3349
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond300.us, !dbg !3350, !llvm.loop !3351

for.inc353.us-lcssa.us:                           ; preds = %for.cond300.us
  br label %for.inc353, !dbg !3353

for.body284:                                      ; preds = %for.cond281
  %arrayidx286 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv2, !dbg !3354
  %53 = load i8, i8* %arrayidx286, align 1, !dbg !3354
  %tobool287 = icmp eq i8 %53, 0, !dbg !3354
  br i1 %tobool287, label %land.lhs.true288, label %for.inc297, !dbg !3356

land.lhs.true288:                                 ; preds = %for.body284
  %54 = trunc i64 %indvars.iv2 to i32, !dbg !3357
  %55 = trunc i64 %indvars.iv11 to i32, !dbg !3357
  %call289 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %54, i32 %55) #6, !dbg !3357
  %tobool291 = icmp eq i8 %call289, 0, !dbg !3357
  br i1 %tobool291, label %for.inc297, label %if.then292, !dbg !3358

if.then292:                                       ; preds = %land.lhs.true288
  %shl294 = shl i64 1, %indvars.iv2, !dbg !3359
  %or295 = or i64 %ok_regs.0, %shl294, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %or295, metadata !3056, metadata !DIExpression()), !dbg !3326
  br label %for.inc297, !dbg !3359

for.inc297:                                       ; preds = %land.lhs.true288, %for.body284, %if.then292
  %ok_regs.1 = phi i64 [ %ok_regs.0, %for.body284 ], [ %or295, %if.then292 ], [ %ok_regs.0, %land.lhs.true288 ], !dbg !3326
  call void @llvm.dbg.value(metadata i64 %ok_regs.1, metadata !3056, metadata !DIExpression()), !dbg !3326
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3360
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond281, !dbg !3361, !llvm.loop !3362

for.cond300:                                      ; preds = %for.cond300.preheader.for.cond300.preheader.split_crit_edge, %for.inc350
  %indvars.iv5 = phi i64 [ 0, %for.cond300.preheader.for.cond300.preheader.split_crit_edge ], [ %indvars.iv.next6, %for.inc350 ], !dbg !3336
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond7 = icmp eq i64 %indvars.iv5, 27, !dbg !3337
  br i1 %exitcond7, label %for.inc353.us-lcssa, label %for.body303, !dbg !3335

for.body303:                                      ; preds = %for.cond300
  %56 = trunc i64 %indvars.iv5 to i32, !dbg !3338
  %call304 = tail call i32 @reg_classes_intersect_p(i32 %56, i32 13) #8, !dbg !3338
  %tobool305 = icmp eq i32 %call304, 0, !dbg !3338
  br i1 %tobool305, label %cond.true306, label %cond.false318, !dbg !3338

cond.true306:                                     ; preds = %for.body303
  %57 = load i8, i8* %arrayidx308, align 1, !dbg !3338
  %cmp310 = icmp eq i8 %57, 10, !dbg !3338
  br i1 %cmp310, label %lor.end, label %lor.rhs, !dbg !3338

lor.rhs:                                          ; preds = %cond.true306
  %cmp315 = icmp eq i8 %57, 11, !dbg !3338
  br label %lor.end, !dbg !3338

lor.end:                                          ; preds = %lor.rhs, %cond.true306
  %58 = phi i1 [ true, %cond.true306 ], [ %cmp315, %lor.rhs ]
  %cond317 = select i1 %58, i32 2, i32 1, !dbg !3338
  br label %cond.end330, !dbg !3338

cond.false318:                                    ; preds = %for.body303
  %59 = load i8, i8* %arrayidx324, align 1, !dbg !3338
  %conv326 = zext i8 %59 to i32, !dbg !3338
  %sub = add nuw nsw i32 %conv326, 3, !dbg !3338
  %div = lshr i32 %sub, 2, !dbg !3338
  br label %cond.end330, !dbg !3338

cond.end330:                                      ; preds = %cond.false318, %lor.end
  %cond331 = phi i32 [ %cond317, %lor.end ], [ %div, %cond.false318 ], !dbg !3338
  %arrayidx333 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %indvars.iv5, !dbg !3339
  %60 = load i32, i32* %arrayidx333, align 4, !dbg !3339
  %cmp334 = icmp ugt i32 %cond331, %60, !dbg !3340
  br i1 %cmp334, label %for.inc350, label %land.lhs.true336, !dbg !3341

land.lhs.true336:                                 ; preds = %cond.end330
  %arrayidx338 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %indvars.iv5, !dbg !3342
  %61 = load i64, i64* %arrayidx338, align 8, !dbg !3342
  %call339 = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 %ok_regs.0.lcssa, i64 %61) #8, !dbg !3343
  %tobool341 = icmp eq i8 %call339, 0, !dbg !3343
  br i1 %tobool341, label %for.inc350, label %if.then342, !dbg !3344

if.then342:                                       ; preds = %land.lhs.true336
  %arrayidx346 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %indvars.iv5, i64 %indvars.iv11, !dbg !3345
  store i8 1, i8* %arrayidx346, align 1, !dbg !3346
  store i8 1, i8* %arrayidx348, align 1, !dbg !3347
  br label %for.inc350, !dbg !3348

for.inc350:                                       ; preds = %land.lhs.true336, %cond.end330, %if.then342
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3349
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond300, !dbg !3350, !llvm.loop !3351

for.inc353.us-lcssa:                              ; preds = %for.cond300
  br label %for.inc353, !dbg !3353

for.inc353:                                       ; preds = %for.inc353.us-lcssa.us, %for.inc353.us-lcssa
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 undef, metadata !3031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond277, !dbg !3364, !llvm.loop !3365

for.cond356:                                      ; preds = %for.cond356.preheader, %for.inc388
  %indvars.iv = phi i64 [ 0, %for.cond356.preheader ], [ %indvars.iv.next, %for.inc388 ], !dbg !3367
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3029, metadata !DIExpression()), !dbg !3061
  %exitcond1 = icmp eq i64 %indvars.iv, 87, !dbg !3368
  br i1 %exitcond1, label %for.end390, label %for.body359, !dbg !3323

for.body359:                                      ; preds = %for.cond356
  %arrayidx361 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %indvars.iv, !dbg !3370
  %62 = load [27 x i16]*, [27 x i16]** %arrayidx361, align 8, !dbg !3370
  %tobool362 = icmp eq [27 x i16]* %62, null, !dbg !3370
  %63 = bitcast [27 x i16]* %62 to i8*, !dbg !3372
  br i1 %tobool362, label %for.inc388, label %for.cond364.preheader, !dbg !3372

for.cond364.preheader:                            ; preds = %for.body359
  br label %for.cond364, !dbg !3373

for.cond364:                                      ; preds = %for.cond364.preheader, %for.inc374
  %indvars.iv59 = phi i64 [ 0, %for.cond364.preheader ], [ %indvars.iv.next60, %for.inc374 ], !dbg !3376
  call void @llvm.dbg.value(metadata i64 %indvars.iv59, metadata !3030, metadata !DIExpression()), !dbg !3061
  %exitcond = icmp eq i64 %indvars.iv, %indvars.iv59, !dbg !3377
  %64 = trunc i64 %indvars.iv59 to i32, !dbg !3379
  br i1 %exitcond, label %for.end376, label %land.rhs, !dbg !3379

land.rhs:                                         ; preds = %for.cond364
  %arrayidx370 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %indvars.iv59, !dbg !3380
  %65 = load [27 x i16]*, [27 x i16]** %arrayidx370, align 8, !dbg !3380
  %cmp371 = icmp eq [27 x i16]* %62, %65, !dbg !3381
  br i1 %cmp371, label %for.end376, label %for.inc374, !dbg !3373

for.inc374:                                       ; preds = %land.rhs
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3030, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond364, !dbg !3383, !llvm.loop !3384

for.end376:                                       ; preds = %for.cond364, %land.rhs
  %j.6.lcssa = phi i32 [ %64, %for.cond364 ], [ %64, %land.rhs ], !dbg !3376
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %j.6.lcssa, metadata !3030, metadata !DIExpression()), !dbg !3061
  %66 = zext i32 %j.6.lcssa to i64, !dbg !3386
  %cmp377 = icmp eq i64 %indvars.iv, %66, !dbg !3386
  br i1 %cmp377, label %if.then379, label %for.inc388, !dbg !3388

if.then379:                                       ; preds = %for.end376
  tail call void @free(i8* nonnull %63) #6, !dbg !3389
  %arrayidx383 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_in_cost, i64 0, i64 %indvars.iv, !dbg !3391
  %67 = bitcast [27 x i16]** %arrayidx383 to i8**, !dbg !3391
  %68 = load i8*, i8** %67, align 8, !dbg !3391
  tail call void @free(i8* %68) #6, !dbg !3392
  %arrayidx385 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @may_move_out_cost, i64 0, i64 %indvars.iv, !dbg !3393
  %69 = bitcast [27 x i16]** %arrayidx385 to i8**, !dbg !3393
  %70 = load i8*, i8** %69, align 8, !dbg !3393
  tail call void @free(i8* %70) #6, !dbg !3394
  br label %for.inc388, !dbg !3395

for.inc388:                                       ; preds = %for.body359, %if.then379, %for.end376
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i32 undef, metadata !3029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  br label %for.cond356, !dbg !3397, !llvm.loop !3398

for.end390:                                       ; preds = %for.cond356
  %call391 = tail call i8* @memset(i8* bitcast ([87 x [27 x i16]*]* @move_cost to i8*), i32 0, i64 696) #6, !dbg !3400
  %call392 = tail call i8* @memset(i8* bitcast ([87 x [27 x i16]*]* @may_move_in_cost to i8*), i32 0, i64 696) #6, !dbg !3401
  %call393 = tail call i8* @memset(i8* bitcast ([87 x [27 x i16]*]* @may_move_out_cost to i8*), i32 0, i64 696) #6, !dbg !3402
  store i32 -1, i32* @last_mode_for_init_move_cost, align 4, !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local void @reinit_regs() local_unnamed_addr #4 !dbg !3405 {
entry:
  tail call void @init_regs() #8, !dbg !3406
  tail call void @ira_init() #6, !dbg !3407
  ret void, !dbg !3408
}

declare dso_local void @ira_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_fake_stack_mems() local_unnamed_addr #4 !dbg !3409 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()), !dbg !3412
  br label %for.cond, !dbg !3413

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3415
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3411, metadata !DIExpression()), !dbg !3412
  %exitcond = icmp eq i64 %indvars.iv, 87, !dbg !3416
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3418

for.body:                                         ; preds = %for.cond
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3419
  %1 = trunc i64 %indvars.iv to i32, !dbg !3420
  %call = tail call %struct.rtx_def* @gen_rtx_MEM(i32 %1, %struct.rtx_def* %0) #6, !dbg !3420
  %arrayidx = getelementptr inbounds [87 x %struct.rtx_def*], [87 x %struct.rtx_def*]* @top_of_stack, i64 0, i64 %indvars.iv, !dbg !3421
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx, align 8, !dbg !3422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3423
  call void @llvm.dbg.value(metadata i32 undef, metadata !3411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3412
  br label %for.cond, !dbg !3424, !llvm.loop !3425

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3427
}

declare dso_local %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @memory_move_secondary_cost(i32 %mode, i32 %rclass, i32 %in) local_unnamed_addr #4 !dbg !3428 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %rclass, metadata !3433, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %in, metadata !3434, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 0, metadata !3436, metadata !DIExpression()), !dbg !3438
  %idxprom = sext i32 %mode to i64, !dbg !3439
  %arrayidx = getelementptr inbounds [87 x %struct.rtx_def*], [87 x %struct.rtx_def*]* @top_of_stack, i64 0, i64 %idxprom, !dbg !3439
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3437, metadata !DIExpression()), !dbg !3438
  %tobool = icmp ne i32 %in, 0, !dbg !3440
  %conv = zext i1 %tobool to i8, !dbg !3440
  %call = tail call i32 @secondary_reload_class(i8 zeroext %conv, i32 %rclass, i32 %mode, %struct.rtx_def* %0) #6, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %call, metadata !3435, metadata !DIExpression()), !dbg !3438
  %cmp = icmp eq i32 %call, 0, !dbg !3442
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3444

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq i32 %in, 0, !dbg !3445
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3447

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ix86_register_move_cost(i32 %mode, i32 %call, i32 %rclass) #6, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3436, metadata !DIExpression()), !dbg !3438
  br label %if.end6, !dbg !3449

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @ix86_register_move_cost(i32 %mode, i32 %rclass, i32 %call) #6, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3436, metadata !DIExpression()), !dbg !3438
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %partial_cost.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ], !dbg !3451
  call void @llvm.dbg.value(metadata i32 %partial_cost.0, metadata !3436, metadata !DIExpression()), !dbg !3438
  %cmp7 = icmp eq i32 %call, %rclass, !dbg !3452
  br i1 %cmp7, label %cleanup, label %if.end10, !dbg !3454

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @memory_move_secondary_cost(i32 %mode, i32 %call, i32 %in) #8, !dbg !3455
  %add = add nsw i32 %call11, %partial_cost.0, !dbg !3456
  ret i32 %add, !dbg !3457

cleanup:                                          ; preds = %if.end6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %partial_cost.0, %if.end6 ], !dbg !3438
  ret i32 %retval.0, !dbg !3457
}

declare dso_local i32 @secondary_reload_class(i8 zeroext, i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @ix86_hard_regno_mode_ok(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @fix_register(i8* %name, i32 %fixed, i32 %call_used) local_unnamed_addr #4 !dbg !833 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !837, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 %fixed, metadata !838, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 %call_used, metadata !839, metadata !DIExpression()), !dbg !3458
  %call = tail call i32 @decode_reg_name(i8* %name) #6, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %call, metadata !840, metadata !DIExpression()), !dbg !3458
  %cmp = icmp sgt i32 %call, -1, !dbg !3461
  br i1 %cmp, label %if.then, label %if.else14, !dbg !3462

if.then:                                          ; preds = %entry
  %0 = and i32 %call, -2, !dbg !3463
  %switch = icmp eq i32 %0, 6, !dbg !3463
  br i1 %switch, label %land.lhs.true, label %if.else, !dbg !3463

land.lhs.true:                                    ; preds = %if.then
  %cmp3 = icmp eq i32 %fixed, 0, !dbg !3466
  %cmp5 = icmp eq i32 %call_used, 0, !dbg !3467
  %or.cond = or i1 %cmp3, %cmp5, !dbg !3468
  br i1 %or.cond, label %if.then6, label %if.else, !dbg !3468

if.then6:                                         ; preds = %land.lhs.true
  %idxprom = sext i32 %fixed to i64, !dbg !3469
  %idxprom7 = sext i32 %call_used to i64, !dbg !3469
  %arrayidx8 = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* @fix_register.what_option, i64 0, i64 %idxprom, i64 %idxprom7, !dbg !3469
  %1 = load i8*, i8** %arrayidx8, align 8, !dbg !3469
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i64 0, i64 0), i8* %name, i8* %1) #6, !dbg !3471
  br label %if.end16, !dbg !3472

if.else:                                          ; preds = %if.then, %land.lhs.true
  %conv = trunc i32 %fixed to i8, !dbg !3473
  %idxprom9 = sext i32 %call to i64, !dbg !3475
  %arrayidx10 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %idxprom9, !dbg !3475
  store i8 %conv, i8* %arrayidx10, align 1, !dbg !3476
  %conv11 = trunc i32 %call_used to i8, !dbg !3477
  %arrayidx13 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %idxprom9, !dbg !3478
  store i8 %conv11, i8* %arrayidx13, align 1, !dbg !3479
  br label %if.end16

if.else14:                                        ; preds = %entry
  %call15 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i64 0, i64 0), i8* %name) #6, !dbg !3480
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %if.else, %if.else14
  ret void, !dbg !3482
}

declare dso_local i32 @decode_reg_name(i8*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @globalize_reg(i32 %i) local_unnamed_addr #4 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !3487, metadata !DIExpression()), !dbg !3488
  %idxprom = sext i32 %i to i64, !dbg !3489
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %idxprom, !dbg !3489
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3489
  %cmp = icmp eq i8 %0, 0, !dbg !3491
  %.b = load i1, i1* @no_global_reg_vars, align 4, !dbg !3492
  %or.cond = and i1 %cmp, %.b, !dbg !3493
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3493

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.88, i64 0, i64 0)) #6, !dbg !3494
  br label %if.end, !dbg !3494

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %idxprom, !dbg !3495
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !3495
  %tobool4 = icmp eq i8 %1, 0, !dbg !3495
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3497

if.then5:                                         ; preds = %if.end
  %call = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.89, i64 0, i64 0)) #6, !dbg !3498
  br label %return, !dbg !3500

if.end6:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %idxprom, !dbg !3501
  %2 = load i8, i8* %arrayidx8, align 1, !dbg !3501
  %tobool10 = icmp eq i8 %2, 0, !dbg !3501
  br i1 %tobool10, label %if.end17, label %land.lhs.true11, !dbg !3503

land.lhs.true11:                                  ; preds = %if.end6
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3504
  %tobool14 = icmp eq i8 %3, 0, !dbg !3504
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !3505

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.90, i64 0, i64 0)) #6, !dbg !3506
  br label %if.end17, !dbg !3506

if.end17:                                         ; preds = %land.lhs.true11, %if.end6, %if.then15
  store i8 1, i8* %arrayidx3, align 1, !dbg !3507
  %cmp20 = icmp eq i32 %i, 7, !dbg !3508
  br i1 %cmp20, label %if.end24, label %if.then22, !dbg !3510

if.then22:                                        ; preds = %if.end17
  %sh_prom = zext i32 %i to i64, !dbg !3511
  %shl = shl i64 1, %sh_prom, !dbg !3511
  %4 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !3511
  %or = or i64 %4, %shl, !dbg !3511
  store i64 %or, i64* @regs_invalidated_by_call, align 8, !dbg !3511
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_invalidated_by_call_regset, align 8, !dbg !3513
  %call23 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %5, i32 %i) #6, !dbg !3513
  br label %if.end24, !dbg !3514

if.end24:                                         ; preds = %if.end17, %if.then22
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3515
  %tobool27 = icmp eq i8 %6, 0, !dbg !3515
  br i1 %tobool27, label %if.end29, label %return, !dbg !3517

if.end29:                                         ; preds = %if.end24
  store i8 1, i8* %arrayidx8, align 1, !dbg !3518
  store i8 1, i8* %arrayidx, align 1, !dbg !3519
  %sh_prom34 = zext i32 %i to i64, !dbg !3520
  %shl35 = shl i64 1, %sh_prom34, !dbg !3520
  %7 = load i64, i64* @fixed_reg_set, align 8, !dbg !3520
  %or36 = or i64 %7, %shl35, !dbg !3520
  store i64 %or36, i64* @fixed_reg_set, align 8, !dbg !3520
  %8 = load i64, i64* @call_used_reg_set, align 8, !dbg !3521
  %or39 = or i64 %8, %shl35, !dbg !3521
  store i64 %or39, i64* @call_used_reg_set, align 8, !dbg !3521
  %9 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !3522
  %or42 = or i64 %9, %shl35, !dbg !3522
  store i64 %or42, i64* @call_fixed_reg_set, align 8, !dbg !3522
  tail call void @reinit_regs() #8, !dbg !3523
  br label %return, !dbg !3524

return:                                           ; preds = %if.end24, %if.end29, %if.then5
  ret void, !dbg !3524
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_preferred_class(i32 %regno) local_unnamed_addr #4 !dbg !3525 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3529, metadata !DIExpression()), !dbg !3530
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3531
  %cmp = icmp eq %struct.reg_pref* %0, null, !dbg !3533
  br i1 %cmp, label %return, label %if.end, !dbg !3534

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %regno to i64, !dbg !3535
  %prefclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %0, i64 %idxprom, i32 0, !dbg !3536
  %1 = load i8, i8* %prefclass, align 1, !dbg !3536
  %conv = sext i8 %1 to i32, !dbg !3537
  br label %return, !dbg !3538

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 13, %entry ], !dbg !3530
  ret i32 %retval.0, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_alternate_class(i32 %regno) local_unnamed_addr #4 !dbg !3540 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3542, metadata !DIExpression()), !dbg !3543
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3544
  %cmp = icmp eq %struct.reg_pref* %0, null, !dbg !3546
  br i1 %cmp, label %return, label %if.end, !dbg !3547

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %regno to i64, !dbg !3548
  %altclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %0, i64 %idxprom, i32 1, !dbg !3549
  %1 = load i8, i8* %altclass, align 1, !dbg !3549
  %conv = sext i8 %1 to i32, !dbg !3550
  br label %return, !dbg !3551

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 26, %entry ], !dbg !3543
  ret i32 %retval.0, !dbg !3552
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_cover_class(i32 %regno) local_unnamed_addr #4 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3555, metadata !DIExpression()), !dbg !3556
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3557
  %cmp = icmp eq %struct.reg_pref* %0, null, !dbg !3559
  br i1 %cmp, label %return, label %if.end, !dbg !3560

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %regno to i64, !dbg !3561
  %coverclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %0, i64 %idxprom, i32 2, !dbg !3562
  %1 = load i8, i8* %coverclass, align 1, !dbg !3562
  %conv = sext i8 %1 to i32, !dbg !3563
  br label %return, !dbg !3564

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ], !dbg !3556
  ret i32 %retval.0, !dbg !3565
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @resize_reg_info() local_unnamed_addr #4 !dbg !3566 {
entry:
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3569
  %cmp = icmp eq %struct.reg_pref* %0, null, !dbg !3571
  br i1 %cmp, label %if.then, label %if.end, !dbg !3572

if.then:                                          ; preds = %entry
  tail call fastcc void @allocate_reg_info() #8, !dbg !3573
  br label %cleanup, !dbg !3575

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @reg_info_size, align 4, !dbg !3576
  %call = tail call i32 @max_reg_num() #6, !dbg !3578
  %cmp1 = icmp eq i32 %1, %call, !dbg !3579
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !3580

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* @reg_info_size, align 4, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %2, metadata !3568, metadata !DIExpression()), !dbg !3582
  %call4 = tail call i32 @max_reg_num() #6, !dbg !3583
  store i32 %call4, i32* @reg_info_size, align 4, !dbg !3584
  %3 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3585
  %tobool = icmp ne %struct.reg_pref* %3, null, !dbg !3585
  %4 = load i16*, i16** @reg_renumber, align 8, !dbg !3585
  %tobool5 = icmp ne i16* %4, null, !dbg !3585
  %or.cond = and i1 %tobool, %tobool5, !dbg !3585
  %5 = bitcast i16* %4 to i8*, !dbg !3585
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3585

cond.true:                                        ; preds = %if.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 971, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !3585
  %.pre = load i8*, i8** bitcast (i16** @reg_renumber to i8**), align 8, !dbg !3586
  %.pre1 = load i32, i32* @reg_info_size, align 4, !dbg !3586
  br label %cond.end, !dbg !3585

cond.end:                                         ; preds = %if.end3, %cond.true
  %6 = phi i32 [ %call4, %if.end3 ], [ %.pre1, %cond.true ], !dbg !3586
  %7 = phi i8* [ %5, %if.end3 ], [ %.pre, %cond.true ], !dbg !3586
  %conv = sext i32 %6 to i64, !dbg !3586
  %mul = shl nsw i64 %conv, 1, !dbg !3586
  %call6 = tail call i8* @xrealloc(i8* %7, i64 %mul) #6, !dbg !3586
  store i8* %call6, i8** bitcast (i16** @reg_renumber to i8**), align 8, !dbg !3587
  %8 = load i8*, i8** bitcast (%struct.reg_pref** @reg_pref to i8**), align 8, !dbg !3588
  %9 = load i32, i32* @reg_info_size, align 4, !dbg !3588
  %conv7 = sext i32 %9 to i64, !dbg !3588
  %mul8 = mul nsw i64 %conv7, 3, !dbg !3588
  %call9 = tail call i8* @xrealloc(i8* %8, i64 %mul8) #6, !dbg !3588
  store i8* %call9, i8** bitcast (%struct.reg_pref** @reg_pref to i8**), align 8, !dbg !3589
  %.cast = bitcast i8* %call9 to %struct.reg_pref*, !dbg !3590
  %idx.ext = sext i32 %2 to i64, !dbg !3591
  %10 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %.cast, i64 %idx.ext, i32 0, !dbg !3590
  %11 = load i32, i32* @reg_info_size, align 4, !dbg !3592
  %sub = sub nsw i32 %11, %2, !dbg !3593
  %conv10 = sext i32 %sub to i64, !dbg !3594
  %mul11 = mul nsw i64 %conv10, 3, !dbg !3595
  %call12 = tail call i8* @memset(i8* %10, i32 -1, i64 %mul11) #6, !dbg !3596
  %12 = load i16*, i16** @reg_renumber, align 8, !dbg !3597
  %add.ptr14 = getelementptr inbounds i16, i16* %12, i64 %idx.ext, !dbg !3598
  %13 = bitcast i16* %add.ptr14 to i8*, !dbg !3597
  %14 = load i32, i32* @reg_info_size, align 4, !dbg !3599
  %sub15 = sub nsw i32 %14, %2, !dbg !3600
  %conv16 = sext i32 %sub15 to i64, !dbg !3601
  %mul17 = shl nsw i64 %conv16, 1, !dbg !3602
  %call18 = tail call i8* @memset(i8* %13, i32 -1, i64 %mul17) #6, !dbg !3603
  br label %cleanup, !dbg !3604

cleanup:                                          ; preds = %if.end, %cond.end, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 1, %cond.end ], [ 0, %if.end ], !dbg !3582
  ret i8 %retval.0, !dbg !3605
}

; Function Attrs: nounwind uwtable
define internal fastcc void @allocate_reg_info() unnamed_addr #4 !dbg !3606 {
entry:
  %call = tail call i32 @max_reg_num() #6, !dbg !3607
  store i32 %call, i32* @reg_info_size, align 4, !dbg !3608
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3609
  %tobool = icmp ne %struct.reg_pref* %0, null, !dbg !3609
  %1 = load i16*, i16** @reg_renumber, align 8, !dbg !3609
  %tobool1 = icmp ne i16* %1, null, !dbg !3609
  %or.cond = or i1 %tobool, %tobool1, !dbg !3609
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !3609

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 948, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !3609
  %.pre = load i32, i32* @reg_info_size, align 4, !dbg !3610
  br label %cond.end, !dbg !3609

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %call, %entry ], [ %.pre, %cond.true ], !dbg !3610
  %conv = sext i32 %2 to i64, !dbg !3610
  %mul = shl nsw i64 %conv, 1, !dbg !3610
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3610
  store i8* %call2, i8** bitcast (i16** @reg_renumber to i8**), align 8, !dbg !3611
  %3 = load i32, i32* @reg_info_size, align 4, !dbg !3612
  %conv3 = sext i32 %3 to i64, !dbg !3612
  %call4 = tail call i8* @xcalloc(i64 %conv3, i64 3) #6, !dbg !3612
  store i8* %call4, i8** bitcast (%struct.reg_pref** @reg_pref to i8**), align 8, !dbg !3613
  %4 = load i8*, i8** bitcast (i16** @reg_renumber to i8**), align 8, !dbg !3614
  %5 = load i32, i32* @reg_info_size, align 4, !dbg !3615
  %conv5 = sext i32 %5 to i64, !dbg !3615
  %mul6 = shl nsw i64 %conv5, 1, !dbg !3616
  %call7 = tail call i8* @memset(i8* %4, i32 -1, i64 %mul6) #6, !dbg !3617
  ret void, !dbg !3618
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_reg_info() local_unnamed_addr #4 !dbg !3619 {
entry:
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3620
  %tobool = icmp eq %struct.reg_pref* %0, null, !dbg !3620
  br i1 %tobool, label %if.end, label %if.then, !dbg !3622

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %0, i64 0, i32 0, !dbg !3622
  tail call void @free(i8* nonnull %1) #6, !dbg !3623
  store %struct.reg_pref* null, %struct.reg_pref** @reg_pref, align 8, !dbg !3625
  br label %if.end, !dbg !3626

if.end:                                           ; preds = %entry, %if.then
  %2 = load i16*, i16** @reg_renumber, align 8, !dbg !3627
  %tobool1 = icmp eq i16* %2, null, !dbg !3627
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3629

if.then2:                                         ; preds = %if.end
  %3 = bitcast i16* %2 to i8*, !dbg !3629
  tail call void @free(i8* nonnull %3) #6, !dbg !3630
  store i16* null, i16** @reg_renumber, align 8, !dbg !3632
  br label %if.end3, !dbg !3633

if.end3:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !3634
}

declare dso_local void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reginfo_init() #4 !dbg !3635 {
entry:
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3636
  %tobool = icmp eq %struct.df* %0, null, !dbg !3636
  br i1 %tobool, label %if.end, label %if.then, !dbg !3638

if.then:                                          ; preds = %entry
  tail call void @df_compute_regs_ever_live(i8 zeroext 1) #6, !dbg !3639
  br label %if.end, !dbg !3639

if.end:                                           ; preds = %entry, %if.then
  store %struct.reg_pref* null, %struct.reg_pref** @reg_pref, align 8, !dbg !3640
  store i1 true, i1* @no_global_reg_vars, align 4, !dbg !3641
  ret i32 1, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_reg_classes(i32 %regno, i32 %prefclass, i32 %altclass, i32 %coverclass) local_unnamed_addr #4 !dbg !3643 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %prefclass, metadata !3648, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %altclass, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %coverclass, metadata !3650, metadata !DIExpression()), !dbg !3651
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3652
  %cmp = icmp eq %struct.reg_pref* %0, null, !dbg !3654
  br i1 %cmp, label %return, label %if.end, !dbg !3655

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @reg_info_size, align 4, !dbg !3656
  %call = tail call i32 @max_reg_num() #6, !dbg !3656
  %cmp1 = icmp eq i32 %1, %call, !dbg !3656
  br i1 %cmp1, label %cond.end, label %cond.true, !dbg !3656

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 1043, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !3656
  br label %cond.end, !dbg !3656

cond.end:                                         ; preds = %if.end, %cond.true
  %conv = trunc i32 %prefclass to i8, !dbg !3657
  %2 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3658
  %idxprom = sext i32 %regno to i64, !dbg !3658
  %prefclass2 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %2, i64 %idxprom, i32 0, !dbg !3659
  store i8 %conv, i8* %prefclass2, align 1, !dbg !3660
  %conv3 = trunc i32 %altclass to i8, !dbg !3661
  %3 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3662
  %altclass6 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %3, i64 %idxprom, i32 1, !dbg !3663
  store i8 %conv3, i8* %altclass6, align 1, !dbg !3664
  %conv7 = trunc i32 %coverclass to i8, !dbg !3665
  %4 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8, !dbg !3666
  %coverclass10 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %4, i64 %idxprom, i32 2, !dbg !3667
  store i8 %conv7, i8* %coverclass10, align 1, !dbg !3668
  br label %return, !dbg !3669

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local void @reg_scan(%struct.rtx_def* %f, i32 %nregs) local_unnamed_addr #4 !dbg !3670 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %f, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 %nregs, metadata !3675, metadata !DIExpression()), !dbg !3677
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3678
  %tobool = icmp eq i8 %0, 0, !dbg !3678
  br i1 %tobool, label %do.end, label %if.then, !dbg !3681

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 40) #6, !dbg !3678
  br label %do.end, !dbg !3678

do.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata %struct.rtx_def* %f, metadata !3676, metadata !DIExpression()), !dbg !3677
  br label %for.cond, !dbg !3682

for.cond:                                         ; preds = %for.inc, %do.end
  %insn.0 = phi %struct.rtx_def* [ %f, %do.end ], [ %7, %for.inc ], !dbg !3684
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3676, metadata !DIExpression()), !dbg !3677
  %tobool1 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3685
  br i1 %tobool1, label %do.body30, label %for.body, !dbg !3685

for.body:                                         ; preds = %for.cond
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3686
  %bf.load = load i32, i32* %1, align 8, !dbg !3686
  %bf.clear = and i32 %bf.load, 65535, !dbg !3686
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3686
  br i1 %cmp, label %if.then13, label %lor.lhs.false, !dbg !3686

lor.lhs.false:                                    ; preds = %for.body
  %cmp4 = icmp eq i32 %bf.clear, 7, !dbg !3686
  br i1 %cmp4, label %if.then13, label %lor.lhs.false5, !dbg !3686

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %bf.clear, 9, !dbg !3686
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !3686

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %cmp12 = icmp eq i32 %bf.clear, 10, !dbg !3686
  br i1 %cmp12, label %if.then13, label %for.inc, !dbg !3689

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %for.body
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3690
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3690
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3690
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3690
  tail call fastcc void @reg_scan_mark_refs(%struct.rtx_def* %3, %struct.rtx_def* nonnull %insn.0) #8, !dbg !3692
  %4 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 2, !dbg !3693
  %rt_rtx17 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3693
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx17, align 8, !dbg !3693
  %tobool18 = icmp eq %struct.rtx_def* %5, null, !dbg !3693
  br i1 %tobool18, label %for.inc, label %if.then19, !dbg !3695

if.then19:                                        ; preds = %if.then13
  tail call fastcc void @reg_scan_mark_refs(%struct.rtx_def* nonnull %5, %struct.rtx_def* nonnull %insn.0) #8, !dbg !3696
  br label %for.inc, !dbg !3696

for.inc:                                          ; preds = %if.then13, %lor.lhs.false9, %if.then19
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3697
  %rt_rtx29 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !3697
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx29, align 8, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3676, metadata !DIExpression()), !dbg !3677
  br label %for.cond, !dbg !3698, !llvm.loop !3699

do.body30:                                        ; preds = %for.cond
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !3701
  %tobool31 = icmp eq i8 %8, 0, !dbg !3701
  br i1 %tobool31, label %do.end35, label %if.then32, !dbg !3704

if.then32:                                        ; preds = %do.body30
  tail call void @timevar_pop_1(i32 40) #6, !dbg !3701
  br label %do.end35, !dbg !3701

do.end35:                                         ; preds = %do.body30, %if.then32
  ret void, !dbg !3705
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reg_scan_mark_refs(%struct.rtx_def* %x, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3706 {
entry:
  br label %tailrecurse, !dbg !3729

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %x.tr = phi %struct.rtx_def* [ %x, %entry ], [ %x.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !3710, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3711, metadata !DIExpression()), !dbg !3731
  %tobool = icmp eq %struct.rtx_def* %x.tr, null, !dbg !3732
  br i1 %tobool, label %cleanup.cont.loopexit4, label %if.end, !dbg !3734

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !3735
  %bf.load = load i32, i32* %0, align 8, !dbg !3735
  %trunc = trunc i32 %bf.load to i16, !dbg !3736
  switch i16 %trunc, label %sw.default.loopexit [
    i16 35, label %cleanup.cont.loopexit4
    i16 30, label %cleanup.cont.loopexit4
    i16 32, label %cleanup.cont.loopexit4
    i16 31, label %cleanup.cont.loopexit4
    i16 33, label %cleanup.cont.loopexit4
    i16 46, label %cleanup.cont.loopexit4
    i16 36, label %cleanup.cont.loopexit4
    i16 45, label %cleanup.cont.loopexit4
    i16 44, label %cleanup.cont.loopexit4
    i16 20, label %cleanup.cont.loopexit4
    i16 21, label %cleanup.cont.loopexit4
    i16 37, label %cleanup.cont.loopexit4
    i16 3, label %sw.bb1
    i16 4, label %sw.bb20
    i16 25, label %sw.bb32
    i16 23, label %sw.bb49
  ], !dbg !3736

sw.bb1:                                           ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3737
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3737
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3737
  %tobool2 = icmp eq %struct.rtx_def* %1, null, !dbg !3737
  br i1 %tobool2, label %if.end8, label %if.then3, !dbg !3739

if.then3:                                         ; preds = %sw.bb1
  tail call fastcc void @reg_scan_mark_refs(%struct.rtx_def* nonnull %1, %struct.rtx_def* %insn) #8, !dbg !3740
  br label %if.end8, !dbg !3740

if.end8:                                          ; preds = %sw.bb1, %if.then3
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3741
  %rt_rtx12 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3741
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx12, align 8, !dbg !3741
  %tobool13 = icmp eq %struct.rtx_def* %3, null, !dbg !3741
  br i1 %tobool13, label %cleanup.cont.loopexit4, label %if.then14, !dbg !3742

if.then14:                                        ; preds = %if.end8
  br label %tailrecurse.backedge, !dbg !3729

tailrecurse.backedge:                             ; preds = %if.then14, %if.then26, %if.then39
  %x.tr.be = phi %struct.rtx_def* [ %3, %if.then14 ], [ %5, %if.then26 ], [ %x.tr.be.pre, %if.then39 ], !dbg !3743
  br label %tailrecurse, !dbg !3731

sw.bb20:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3744
  %rt_rtx24 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3744
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx24, align 8, !dbg !3744
  %tobool25 = icmp eq %struct.rtx_def* %5, null, !dbg !3744
  br i1 %tobool25, label %cleanup.cont.loopexit4, label %if.then26, !dbg !3746

if.then26:                                        ; preds = %sw.bb20
  br label %tailrecurse.backedge, !dbg !3747

sw.bb32:                                          ; preds = %if.end
  %arrayidx35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3748
  %6 = bitcast %union.rtunion_def* %arrayidx35 to i32**, !dbg !3748
  %7 = load i32*, i32** %6, align 8, !dbg !3748
  %bf.load37 = load i32, i32* %7, align 8, !dbg !3748
  %bf.clear38 = and i32 %bf.load37, 65535, !dbg !3748
  %cmp = icmp eq i32 %bf.clear38, 43, !dbg !3748
  br i1 %cmp, label %if.then39, label %cleanup.cont.loopexit4, !dbg !3750

if.then39:                                        ; preds = %sw.bb32
  %arrayidx46 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !3751
  %x.tr.be.in.phi.trans.insert = bitcast i32* %arrayidx46 to %struct.rtx_def**, !dbg !3743
  %x.tr.be.pre = load %struct.rtx_def*, %struct.rtx_def** %x.tr.be.in.phi.trans.insert, align 8, !dbg !3743
  br label %tailrecurse.backedge, !dbg !3752

sw.bb49:                                          ; preds = %if.end
  %x.tr.lcssa21 = phi %struct.rtx_def* [ %x.tr, %if.end ]
  %bf.load.lcssa19 = phi i32 [ %bf.load, %if.end ], !dbg !3735
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa21, metadata !3710, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa21, metadata !3710, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa21, metadata !3710, metadata !DIExpression()), !dbg !3731
  br label %for.cond, !dbg !3753

for.cond:                                         ; preds = %for.inc, %sw.bb49
  %x.pn = phi %struct.rtx_def* [ %x.tr.lcssa21, %sw.bb49 ], [ %dest.0, %for.inc ]
  %dest.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.pn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3755
  %dest.0.in = bitcast %union.rtunion_def* %dest.0.in.in to %struct.rtx_def**, !dbg !3755
  %dest.0 = load %struct.rtx_def*, %struct.rtx_def** %dest.0.in, align 8, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.0, metadata !3713, metadata !DIExpression()), !dbg !3731
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0, i64 0, i32 0, !dbg !3756
  %bf.load54 = load i32, i32* %8, align 8, !dbg !3756
  %bf.clear55 = and i32 %bf.load54, 65535, !dbg !3756
  %cmp56 = icmp eq i32 %bf.clear55, 39, !dbg !3758
  br i1 %cmp56, label %for.inc, label %lor.lhs.false, !dbg !3759

lor.lhs.false:                                    ; preds = %for.cond
  %cmp59 = icmp eq i32 %bf.clear55, 40, !dbg !3760
  %cmp62 = icmp eq i32 %bf.clear55, 99, !dbg !3761
  %or.cond = or i1 %cmp59, %cmp62, !dbg !3762
  br i1 %or.cond, label %for.inc, label %for.end, !dbg !3762

for.inc:                                          ; preds = %for.cond, %lor.lhs.false
  br label %for.cond, !dbg !3763, !llvm.loop !3764

for.end:                                          ; preds = %lor.lhs.false
  %dest.0.lcssa = phi %struct.rtx_def* [ %dest.0, %lor.lhs.false ], !dbg !3755
  %.lcssa = phi i32* [ %8, %lor.lhs.false ], !dbg !3756
  %bf.clear.le = and i32 %bf.load.lcssa19, 65535, !dbg !3735
  %arrayidx69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa21, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3767
  %9 = bitcast %union.rtunion_def* %arrayidx69 to i32**, !dbg !3767
  %10 = load i32*, i32** %9, align 8, !dbg !3767
  %bf.load71 = load i32, i32* %10, align 8, !dbg !3767
  %bf.clear72 = and i32 %bf.load71, 65535, !dbg !3767
  %cmp73 = icmp eq i32 %bf.clear72, 37, !dbg !3767
  br i1 %cmp73, label %land.lhs.true, label %if.end328, !dbg !3769

land.lhs.true:                                    ; preds = %for.end
  %11 = bitcast i32* %10 to %struct.rtx_def*, !dbg !3769
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %11) #8, !dbg !3770
  %cmp78 = icmp ugt i32 %call, 52, !dbg !3771
  br i1 %cmp78, label %land.lhs.true79, label %if.end328, !dbg !3772

land.lhs.true79:                                  ; preds = %land.lhs.true
  %rt_rtx77 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**, !dbg !3770
  %12 = load %struct.df*, %struct.df** @df, align 8, !dbg !3773
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %12, i64 0, i32 5, !dbg !3773
  %13 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !3773
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx77, align 8, !dbg !3773
  %call84 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %14) #8, !dbg !3773
  %idxprom = zext i32 %call84 to i64, !dbg !3773
  %arrayidx85 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %13, i64 %idxprom, !dbg !3773
  %15 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx85, align 8, !dbg !3773
  %n_refs = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %15, i64 0, i32 1, !dbg !3773
  %16 = load i32, i32* %n_refs, align 8, !dbg !3773
  %cmp86 = icmp eq i32 %16, 1, !dbg !3774
  br i1 %cmp86, label %land.lhs.true87, label %if.end328, !dbg !3775

land.lhs.true87:                                  ; preds = %land.lhs.true79
  %17 = load i32*, i32** %9, align 8, !dbg !3776
  %bf.load92 = load i32, i32* %17, align 8, !dbg !3776
  %bf.clear93 = and i32 %bf.load92, 134217728, !dbg !3776
  %tobool94 = icmp eq i32 %bf.clear93, 0, !dbg !3776
  br i1 %tobool94, label %land.lhs.true95, label %if.end328, !dbg !3777

land.lhs.true95:                                  ; preds = %land.lhs.true87
  %bf.clear102 = and i32 %bf.load92, 1073741824, !dbg !3778
  %tobool103 = icmp eq i32 %bf.clear102, 0, !dbg !3778
  br i1 %tobool103, label %land.lhs.true104, label %if.end328, !dbg !3779

land.lhs.true104:                                 ; preds = %land.lhs.true95
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa21, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3780
  %19 = bitcast %union.rtunion_def* %18 to i32**, !dbg !3780
  %20 = load i32*, i32** %19, align 8, !dbg !3780
  %bf.load109 = load i32, i32* %20, align 8, !dbg !3780
  %bf.clear110 = and i32 %bf.load109, 65535, !dbg !3780
  %cmp111 = icmp eq i32 %bf.clear110, 37, !dbg !3780
  br i1 %cmp111, label %land.lhs.true112, label %lor.lhs.false121, !dbg !3781

land.lhs.true112:                                 ; preds = %land.lhs.true104
  %bf.clear119 = and i32 %bf.load109, 1073741824, !dbg !3782
  %tobool120 = icmp eq i32 %bf.clear119, 0, !dbg !3782
  br i1 %tobool120, label %lor.lhs.false121, label %if.then321, !dbg !3783

lor.lhs.false121:                                 ; preds = %land.lhs.true112, %land.lhs.true104
  %cmp128 = icmp eq i32 %bf.clear110, 49, !dbg !3784
  br i1 %cmp128, label %land.lhs.true137, label %lor.lhs.false129, !dbg !3785

lor.lhs.false129:                                 ; preds = %lor.lhs.false121
  %cmp136 = icmp eq i32 %bf.clear110, 122, !dbg !3786
  br i1 %cmp136, label %land.lhs.true137, label %lor.lhs.false174, !dbg !3787

land.lhs.true137:                                 ; preds = %lor.lhs.false129, %lor.lhs.false121
  %21 = getelementptr inbounds i32, i32* %20, i64 4, !dbg !3788
  %22 = bitcast i32* %21 to i32**, !dbg !3788
  %23 = load i32*, i32** %22, align 8, !dbg !3788
  %bf.load146 = load i32, i32* %23, align 8, !dbg !3788
  %bf.clear147 = and i32 %bf.load146, 65535, !dbg !3788
  %cmp148 = icmp eq i32 %bf.clear147, 30, !dbg !3788
  br i1 %cmp148, label %land.lhs.true149, label %lor.lhs.false174, !dbg !3789

land.lhs.true149:                                 ; preds = %land.lhs.true137
  %arrayidx156 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !3790
  %24 = bitcast i32* %arrayidx156 to i32**, !dbg !3790
  %25 = load i32*, i32** %24, align 8, !dbg !3790
  %bf.load158 = load i32, i32* %25, align 8, !dbg !3790
  %bf.clear159 = and i32 %bf.load158, 65535, !dbg !3790
  %cmp160 = icmp eq i32 %bf.clear159, 37, !dbg !3790
  br i1 %cmp160, label %land.lhs.true161, label %lor.lhs.false174, !dbg !3791

land.lhs.true161:                                 ; preds = %land.lhs.true149
  %bf.clear172 = and i32 %bf.load158, 1073741824, !dbg !3792
  %tobool173 = icmp eq i32 %bf.clear172, 0, !dbg !3792
  br i1 %tobool173, label %lor.lhs.false174, label %if.then321, !dbg !3793

lor.lhs.false174:                                 ; preds = %land.lhs.true161, %land.lhs.true149, %land.lhs.true137, %lor.lhs.false129
  %cmp181 = icmp eq i32 %bf.clear110, 35, !dbg !3794
  br i1 %cmp181, label %if.then321, label %lor.lhs.false182, !dbg !3795

lor.lhs.false182:                                 ; preds = %lor.lhs.false174
  %cmp189 = icmp eq i32 %bf.clear110, 45, !dbg !3796
  br i1 %cmp189, label %if.then321, label %lor.lhs.false190, !dbg !3797

lor.lhs.false190:                                 ; preds = %lor.lhs.false182
  %cmp197 = icmp eq i32 %bf.clear110, 44, !dbg !3798
  br i1 %cmp197, label %if.then321, label %lor.lhs.false198, !dbg !3799

lor.lhs.false198:                                 ; preds = %lor.lhs.false190
  %cmp205 = icmp eq i32 %bf.clear110, 121, !dbg !3800
  br i1 %cmp205, label %land.lhs.true206, label %lor.lhs.false242, !dbg !3801

land.lhs.true206:                                 ; preds = %lor.lhs.false198
  %arrayidx213 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !3802
  %26 = bitcast i32* %arrayidx213 to i32**, !dbg !3802
  %27 = load i32*, i32** %26, align 8, !dbg !3802
  %bf.load215 = load i32, i32* %27, align 8, !dbg !3802
  %bf.clear216 = and i32 %bf.load215, 65535, !dbg !3802
  %cmp217 = icmp eq i32 %bf.clear216, 35, !dbg !3803
  br i1 %cmp217, label %if.then321, label %lor.lhs.false218, !dbg !3804

lor.lhs.false218:                                 ; preds = %land.lhs.true206
  %cmp229 = icmp eq i32 %bf.clear216, 45, !dbg !3805
  br i1 %cmp229, label %if.then321, label %lor.lhs.false230, !dbg !3806

lor.lhs.false230:                                 ; preds = %lor.lhs.false218
  %cmp241 = icmp eq i32 %bf.clear216, 44, !dbg !3807
  br i1 %cmp241, label %if.then321, label %lor.lhs.false242, !dbg !3808

lor.lhs.false242:                                 ; preds = %lor.lhs.false230, %lor.lhs.false198
  br i1 %cmp128, label %land.lhs.true258, label %lor.lhs.false250, !dbg !3809

lor.lhs.false250:                                 ; preds = %lor.lhs.false242
  %cmp257 = icmp eq i32 %bf.clear110, 122, !dbg !3810
  br i1 %cmp257, label %land.lhs.true258, label %lor.lhs.false294, !dbg !3811

land.lhs.true258:                                 ; preds = %lor.lhs.false250, %lor.lhs.false242
  %28 = getelementptr inbounds i32, i32* %20, i64 4, !dbg !3812
  %29 = bitcast i32* %28 to i32**, !dbg !3812
  %30 = load i32*, i32** %29, align 8, !dbg !3812
  %bf.load267 = load i32, i32* %30, align 8, !dbg !3812
  %bf.clear268 = and i32 %bf.load267, 65535, !dbg !3812
  %cmp269 = icmp eq i32 %bf.clear268, 35, !dbg !3813
  br i1 %cmp269, label %if.then321, label %lor.lhs.false270, !dbg !3814

lor.lhs.false270:                                 ; preds = %land.lhs.true258
  %cmp281 = icmp eq i32 %bf.clear268, 45, !dbg !3815
  br i1 %cmp281, label %if.then321, label %lor.lhs.false282, !dbg !3816

lor.lhs.false282:                                 ; preds = %lor.lhs.false270
  %cmp293 = icmp eq i32 %bf.clear268, 44, !dbg !3817
  br i1 %cmp293, label %if.then321, label %lor.lhs.false294, !dbg !3818

lor.lhs.false294:                                 ; preds = %lor.lhs.false282, %lor.lhs.false250
  %call295 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 4, %struct.rtx_def* null) #6, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call295, metadata !3714, metadata !DIExpression()), !dbg !3731
  %cmp296 = icmp eq %struct.rtx_def* %call295, null, !dbg !3820
  br i1 %cmp296, label %if.end328, label %land.lhs.true297, !dbg !3821

land.lhs.true297:                                 ; preds = %lor.lhs.false294
  %arrayidx300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call295, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3822
  %31 = bitcast %union.rtunion_def* %arrayidx300 to i32**, !dbg !3822
  %32 = load i32*, i32** %31, align 8, !dbg !3822
  %bf.load302 = load i32, i32* %32, align 8, !dbg !3822
  %bf.clear303 = and i32 %bf.load302, 65535, !dbg !3822
  %cmp304 = icmp eq i32 %bf.clear303, 35, !dbg !3823
  br i1 %cmp304, label %if.then321, label %lor.lhs.false305, !dbg !3824

lor.lhs.false305:                                 ; preds = %land.lhs.true297
  %cmp312 = icmp eq i32 %bf.clear303, 45, !dbg !3825
  br i1 %cmp312, label %if.then321, label %lor.lhs.false313, !dbg !3826

lor.lhs.false313:                                 ; preds = %lor.lhs.false305
  %cmp320 = icmp eq i32 %bf.clear303, 44, !dbg !3827
  br i1 %cmp320, label %if.then321, label %if.end328, !dbg !3828

if.then321:                                       ; preds = %land.lhs.true112, %land.lhs.true161, %lor.lhs.false313, %lor.lhs.false305, %land.lhs.true297, %lor.lhs.false282, %lor.lhs.false270, %land.lhs.true258, %lor.lhs.false230, %lor.lhs.false218, %land.lhs.true206, %lor.lhs.false190, %lor.lhs.false182, %lor.lhs.false174
  %33 = load i32*, i32** %9, align 8, !dbg !3829
  %bf.load326 = load i32, i32* %33, align 8, !dbg !3830
  %bf.set = or i32 %bf.load326, 1073741824, !dbg !3830
  store i32 %bf.set, i32* %33, align 8, !dbg !3830
  br label %if.end328, !dbg !3829

if.end328:                                        ; preds = %lor.lhs.false294, %land.lhs.true95, %land.lhs.true87, %if.then321, %lor.lhs.false313, %land.lhs.true79, %land.lhs.true, %for.end
  %bf.load329 = load i32, i32* %.lcssa, align 8, !dbg !3831
  %bf.clear330 = and i32 %bf.load329, 65535, !dbg !3831
  %cmp331 = icmp eq i32 %bf.clear330, 37, !dbg !3831
  br i1 %cmp331, label %land.lhs.true332, label %sw.default, !dbg !3832

land.lhs.true332:                                 ; preds = %if.end328
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0.lcssa, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3833
  %rt_reg = bitcast %union.rtunion_def* %34 to %struct.reg_attrs**, !dbg !3833
  %35 = load %struct.reg_attrs*, %struct.reg_attrs** %rt_reg, align 8, !dbg !3833
  %tobool336 = icmp eq %struct.reg_attrs* %35, null, !dbg !3833
  br i1 %tobool336, label %if.then337, label %sw.default, !dbg !3834

if.then337:                                       ; preds = %land.lhs.true332
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa21, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3835
  br label %while.cond, !dbg !3836

while.cond:                                       ; preds = %while.body, %if.then337
  %src.0.in.in = phi %union.rtunion_def* [ %36, %if.then337 ], [ %arrayidx362, %while.body ]
  %src.0.in = bitcast %union.rtunion_def* %src.0.in.in to %struct.rtx_def**, !dbg !3837
  %src.0 = load %struct.rtx_def*, %struct.rtx_def** %src.0.in, align 8, !dbg !3837
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src.0, metadata !3715, metadata !DIExpression()), !dbg !3837
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src.0, i64 0, i32 0, !dbg !3838
  %bf.load342 = load i32, i32* %37, align 8, !dbg !3838
  %bf.clear343 = and i32 %bf.load342, 65535, !dbg !3838
  %cmp344 = icmp eq i32 %bf.clear343, 98, !dbg !3839
  br i1 %cmp344, label %while.body, label %lor.lhs.false345, !dbg !3840

lor.lhs.false345:                                 ; preds = %while.cond
  %cmp348 = icmp eq i32 %bf.clear343, 99, !dbg !3841
  br i1 %cmp348, label %while.body, label %lor.lhs.false349, !dbg !3842

lor.lhs.false349:                                 ; preds = %lor.lhs.false345
  %cmp352 = icmp eq i32 %bf.clear343, 100, !dbg !3843
  br i1 %cmp352, label %while.body, label %lor.rhs353, !dbg !3844

lor.rhs353:                                       ; preds = %lor.lhs.false349
  %cmp356 = icmp eq i32 %bf.clear343, 39, !dbg !3845
  br i1 %cmp356, label %land.rhs, label %while.end, !dbg !3846

land.rhs:                                         ; preds = %lor.rhs353
  %call357 = tail call i32 @subreg_lowpart_p(%struct.rtx_def* %src.0) #6, !dbg !3847
  %tobool358 = icmp eq i32 %call357, 0, !dbg !3846
  br i1 %tobool358, label %while.end, label %while.body, !dbg !3836

while.body:                                       ; preds = %land.rhs, %while.cond, %lor.lhs.false345, %lor.lhs.false349
  %arrayidx362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3848
  br label %while.cond, !dbg !3836, !llvm.loop !3849

while.end:                                        ; preds = %land.rhs, %lor.rhs353
  %src.0.lcssa = phi %struct.rtx_def* [ %src.0, %land.rhs ], [ %src.0, %lor.rhs353 ], !dbg !3837
  tail call void @set_reg_attrs_from_value(%struct.rtx_def* %dest.0.lcssa, %struct.rtx_def* %src.0.lcssa) #6, !dbg !3850
  br label %sw.default, !dbg !3851

sw.default.loopexit:                              ; preds = %if.end
  %x.tr.lcssa20 = phi %struct.rtx_def* [ %x.tr, %if.end ]
  %bf.load.lcssa = phi i32 [ %bf.load, %if.end ], !dbg !3735
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa20, metadata !3710, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa20, metadata !3710, metadata !DIExpression()), !dbg !3731
  %bf.clear.le10 = and i32 %bf.load.lcssa, 65535, !dbg !3735
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa20, metadata !3710, metadata !DIExpression()), !dbg !3731
  br label %sw.default, !dbg !3852

sw.default:                                       ; preds = %sw.default.loopexit, %land.lhs.true332, %if.end328, %while.end
  %x.tr22 = phi %struct.rtx_def* [ %x.tr.lcssa20, %sw.default.loopexit ], [ %x.tr.lcssa21, %land.lhs.true332 ], [ %x.tr.lcssa21, %if.end328 ], [ %x.tr.lcssa21, %while.end ]
  %bf.clear6 = phi i32 [ %bf.clear.le10, %sw.default.loopexit ], [ %bf.clear.le, %land.lhs.true332 ], [ %bf.clear.le, %if.end328 ], [ %bf.clear.le, %while.end ]
  %idxprom365 = zext i32 %bf.clear6 to i64, !dbg !3852
  %arrayidx366 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom365, !dbg !3852
  %38 = load i8*, i8** %arrayidx366, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %38, metadata !3719, metadata !DIExpression()), !dbg !3853
  %arrayidx368 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom365, !dbg !3854
  %39 = load i8, i8* %arrayidx368, align 1, !dbg !3854
  call void @llvm.dbg.value(metadata i8 %39, metadata !3721, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3853
  %u390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr22, i64 0, i32 1, !dbg !3855
  %fld391 = bitcast %union.u* %u390 to [1 x %union.rtunion_def]*, !dbg !3855
  %40 = zext i8 %39 to i64, !dbg !3856
  br label %for.cond369, !dbg !3856

for.cond369:                                      ; preds = %for.inc418, %sw.default
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc418 ], [ %40, %sw.default ]
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, -1, !dbg !3857
  call void @llvm.dbg.value(metadata i32 undef, metadata !3721, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3853
  %cmp370 = icmp sgt i64 %indvars.iv17, 0, !dbg !3858
  br i1 %cmp370, label %for.body372, label %cleanup.cont.loopexit, !dbg !3859

for.body372:                                      ; preds = %for.cond369
  %arrayidx374 = getelementptr inbounds i8, i8* %38, i64 %indvars.iv.next18, !dbg !3860
  %41 = load i8, i8* %arrayidx374, align 1, !dbg !3860
  %cmp376 = icmp eq i8 %41, 101, !dbg !3861
  br i1 %cmp376, label %if.then378, label %if.else, !dbg !3862

if.then378:                                       ; preds = %for.body372
  %arrayidx382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld391, i64 0, i64 %indvars.iv.next18, !dbg !3863
  %rt_rtx383 = bitcast %union.rtunion_def* %arrayidx382 to %struct.rtx_def**, !dbg !3863
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx383, align 8, !dbg !3863
  tail call fastcc void @reg_scan_mark_refs(%struct.rtx_def* %42, %struct.rtx_def* %insn) #8, !dbg !3864
  br label %for.inc418, !dbg !3864

if.else:                                          ; preds = %for.body372
  %cmp387 = icmp eq i8 %41, 69, !dbg !3865
  br i1 %cmp387, label %land.lhs.true389, label %for.inc418, !dbg !3866

land.lhs.true389:                                 ; preds = %if.else
  %arrayidx393 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld391, i64 0, i64 %indvars.iv.next18, !dbg !3867
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx393 to %struct.rtvec_def**, !dbg !3867
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3867
  %cmp394 = icmp eq %struct.rtvec_def* %43, null, !dbg !3868
  br i1 %cmp394, label %for.inc418, label %if.then396, !dbg !3869

if.then396:                                       ; preds = %land.lhs.true389
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i64 0, i32 0, !dbg !3870
  %44 = load i32, i32* %num_elem, align 8, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %44, metadata !3722, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3872
  %45 = sext i32 %44 to i64, !dbg !3873
  br label %for.cond403, !dbg !3873

for.cond403:                                      ; preds = %for.body406, %if.then396
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body406 ], [ %45, %if.then396 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3874
  call void @llvm.dbg.value(metadata i32 undef, metadata !3722, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3872
  %cmp404 = icmp sgt i64 %indvars.iv, 0, !dbg !3875
  br i1 %cmp404, label %for.body406, label %for.inc418.loopexit, !dbg !3877

for.body406:                                      ; preds = %for.cond403
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3878
  %arrayidx413 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %46, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3878
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx413, align 8, !dbg !3878
  tail call fastcc void @reg_scan_mark_refs(%struct.rtx_def* %47, %struct.rtx_def* %insn) #8, !dbg !3879
  call void @llvm.dbg.value(metadata i32 undef, metadata !3722, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3872
  br label %for.cond403, !dbg !3880, !llvm.loop !3881

for.inc418.loopexit:                              ; preds = %for.cond403
  br label %for.inc418, !dbg !3883

for.inc418:                                       ; preds = %for.inc418.loopexit, %land.lhs.true389, %if.then378, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3721, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3853
  br label %for.cond369, !dbg !3883, !llvm.loop !3884

cleanup.cont.loopexit:                            ; preds = %for.cond369
  br label %cleanup.cont, !dbg !3886

cleanup.cont.loopexit4:                           ; preds = %sw.bb32, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %tailrecurse, %sw.bb20, %if.end8
  br label %cleanup.cont, !dbg !3886

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit4, %cleanup.cont.loopexit
  ret void, !dbg !3886
}

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @hard_reg_set_subset_p(i64 %x, i64 %y) unnamed_addr #0 !dbg !3887 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !3892, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %y, metadata !3893, metadata !DIExpression()), !dbg !3894
  %neg = xor i64 %y, -1, !dbg !3895
  %and = and i64 %neg, %x, !dbg !3896
  %cmp = icmp eq i64 %and, 0, !dbg !3897
  %conv1 = zext i1 %cmp to i8, !dbg !3898
  ret i8 %conv1, !dbg !3899
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_classes_intersect_p(i32 %c1, i32 %c2) local_unnamed_addr #4 !dbg !3900 {
entry:
  call void @llvm.dbg.value(metadata i32 %c1, metadata !3902, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 %c2, metadata !3903, metadata !DIExpression()), !dbg !3904
  %cmp = icmp eq i32 %c1, %c2, !dbg !3905
  %cmp1 = icmp eq i32 %c1, 26, !dbg !3906
  %or.cond = or i1 %cmp, %cmp1, !dbg !3907
  %cmp3 = icmp eq i32 %c2, 26, !dbg !3908
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !3907
  br i1 %or.cond1, label %lor.end, label %lor.rhs, !dbg !3907

lor.rhs:                                          ; preds = %entry
  %idxprom = sext i32 %c1 to i64, !dbg !3909
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom, !dbg !3909
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3909
  %idxprom4 = sext i32 %c2 to i64, !dbg !3910
  %arrayidx5 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom4, !dbg !3910
  %1 = load i64, i64* %arrayidx5, align 8, !dbg !3910
  %call = tail call fastcc zeroext i8 @hard_reg_set_intersect_p(i64 %0, i64 %1) #8, !dbg !3911
  %tobool = icmp ne i8 %call, 0, !dbg !3912
  %phitmp = zext i1 %tobool to i32, !dbg !3912
  br label %lor.end, !dbg !3912

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !3913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @hard_reg_set_intersect_p(i64 %x, i64 %y) unnamed_addr #0 !dbg !3914 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !3916, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i64 %y, metadata !3917, metadata !DIExpression()), !dbg !3918
  %and = and i64 %x, %y, !dbg !3919
  %cmp = icmp ne i64 %and, 0, !dbg !3920
  %conv1 = zext i1 %cmp to i8, !dbg !3921
  ret i8 %conv1, !dbg !3922
}

; Function Attrs: nounwind uwtable
define dso_local void @init_subregs_of_mode() local_unnamed_addr #4 !dbg !3923 {
entry:
  %0 = load %struct.htab*, %struct.htab** @subregs_of_mode, align 8, !dbg !3927
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3927
  br i1 %tobool, label %if.else, label %if.then, !dbg !3929

if.then:                                          ; preds = %entry
  tail call void @htab_empty(%struct.htab* nonnull %0) #6, !dbg !3930
  br label %if.end, !dbg !3930

if.else:                                          ; preds = %entry
  %call = tail call %struct.htab* @htab_create(i64 100, i32 (i8*)* nonnull @som_hash, i32 (i8*, i8*)* nonnull @som_eq, void (i8*)* nonnull @free) #6, !dbg !3931
  store %struct.htab* %call, %struct.htab** @subregs_of_mode, align 8, !dbg !3932
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3933
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3933
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3933
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3933
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3933
  br label %for.cond, !dbg !3933

for.cond:                                         ; preds = %for.inc31, %if.end
  %4 = phi %struct.control_flow_graph* [ %2, %if.end ], [ %.pre1, %for.inc31 ], !dbg !3935
  %.pn = phi %struct.basic_block_def* [ %3, %if.end ], [ %bb.0, %for.inc31 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3937
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3937
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3925, metadata !DIExpression()), !dbg !3938
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3935
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3935
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %5, !dbg !3935
  br i1 %cmp, label %for.end33, label %for.body, !dbg !3933

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3939
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3939
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3939
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !3939
  br label %for.cond3, !dbg !3939

for.cond3:                                        ; preds = %for.inc, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx30, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3941
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3926, metadata !DIExpression()), !dbg !3938
  %tobool4 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3942
  br i1 %tobool4, label %for.inc31, label %land.rhs, !dbg !3942

land.rhs:                                         ; preds = %for.cond3
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3942
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !3942
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3942
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3942
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3942
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3942
  %cmp7 = icmp eq %struct.rtx_def* %insn.0, %10, !dbg !3942
  br i1 %cmp7, label %for.inc31, label %for.body8, !dbg !3939

for.body8:                                        ; preds = %land.rhs
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3944
  %bf.load = load i32, i32* %11, align 8, !dbg !3944
  %bf.clear = and i32 %bf.load, 65535, !dbg !3944
  %cmp9 = icmp eq i32 %bf.clear, 8, !dbg !3944
  br i1 %cmp9, label %if.then21, label %lor.lhs.false, !dbg !3944

lor.lhs.false:                                    ; preds = %for.body8
  %cmp12 = icmp eq i32 %bf.clear, 7, !dbg !3944
  br i1 %cmp12, label %if.then21, label %lor.lhs.false13, !dbg !3944

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %cmp16 = icmp eq i32 %bf.clear, 9, !dbg !3944
  br i1 %cmp16, label %if.then21, label %lor.lhs.false17, !dbg !3944

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cmp20 = icmp eq i32 %bf.clear, 10, !dbg !3944
  br i1 %cmp20, label %if.then21, label %for.inc, !dbg !3946

if.then21:                                        ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false, %for.body8
  %u22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3947
  %12 = getelementptr inbounds %union.u, %union.u* %u22, i64 1, i32 0, i32 0, i64 0, !dbg !3947
  %rt_rtx25 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !3947
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx25, align 8, !dbg !3947
  tail call fastcc void @find_subregs_of_mode(%struct.rtx_def* %13) #8, !dbg !3948
  br label %for.inc, !dbg !3948

for.inc:                                          ; preds = %lor.lhs.false17, %if.then21
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3942
  %rt_rtx30 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**, !dbg !3942
  br label %for.cond3, !dbg !3942, !llvm.loop !3949

for.inc31:                                        ; preds = %land.rhs, %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3935
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3951
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3935
  br label %for.cond, !dbg !3935, !llvm.loop !3952

for.end33:                                        ; preds = %for.cond
  ret void, !dbg !3954
}

declare dso_local void @htab_empty(%struct.htab*) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @som_hash(i8* %x) #4 !dbg !3955 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !3957, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %x, metadata !3958, metadata !DIExpression()), !dbg !3960
  %block = bitcast i8* %x to i32*, !dbg !3961
  %0 = load i32, i32* %block, align 4, !dbg !3961
  ret i32 %0, !dbg !3962
}

; Function Attrs: nounwind uwtable
define internal i32 @som_eq(i8* %x, i8* %y) #4 !dbg !3963 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !3965, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i8* %y, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i8* %x, metadata !3967, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i8* %y, metadata !3968, metadata !DIExpression()), !dbg !3969
  %block = bitcast i8* %x to i32*, !dbg !3970
  %0 = load i32, i32* %block, align 4, !dbg !3970
  %block1 = bitcast i8* %y to i32*, !dbg !3971
  %1 = load i32, i32* %block1, align 4, !dbg !3971
  %cmp = icmp eq i32 %0, %1, !dbg !3972
  %conv = zext i1 %cmp to i32, !dbg !3972
  ret i32 %conv, !dbg !3973
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_subregs_of_mode(%struct.rtx_def* %x) unnamed_addr #4 !dbg !3974 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3978, metadata !DIExpression()), !dbg !3989
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3990
  %bf.load = load i32, i32* %0, align 8, !dbg !3990
  %bf.clear = and i32 %bf.load, 65535, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3979, metadata !DIExpression()), !dbg !3989
  %idxprom = zext i32 %bf.clear to i64, !dbg !3991
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3991
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !3991
  call void @llvm.dbg.value(metadata i8* %1, metadata !3980, metadata !DIExpression()), !dbg !3989
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3992
  br i1 %cmp, label %if.then, label %if.end, !dbg !3994

if.then:                                          ; preds = %entry
  tail call fastcc void @record_subregs_of_mode(%struct.rtx_def* %x) #8, !dbg !3995
  br label %if.end, !dbg !3995

if.end:                                           ; preds = %if.then, %entry
  %arrayidx2 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3996
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !3996
  call void @llvm.dbg.value(metadata i8 %2, metadata !3981, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3989
  %u19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !3997
  %fld20 = bitcast %union.u* %u19 to [1 x %union.rtunion_def]*, !dbg !3997
  %3 = zext i8 %2 to i64, !dbg !3999
  br label %for.cond, !dbg !3999

for.cond:                                         ; preds = %for.inc37, %if.end
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc37 ], [ %3, %if.end ]
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -1, !dbg !4000
  call void @llvm.dbg.value(metadata i32 undef, metadata !3981, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3989
  %cmp3 = icmp sgt i64 %indvars.iv1, 0, !dbg !4001
  br i1 %cmp3, label %for.body, label %for.end39, !dbg !4002

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next2, !dbg !4003
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4003
  %cmp8 = icmp eq i8 %4, 101, !dbg !4004
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !4005

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i64 0, i64 %indvars.iv.next2, !dbg !4006
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**, !dbg !4006
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4006
  tail call fastcc void @find_subregs_of_mode(%struct.rtx_def* %5) #8, !dbg !4007
  br label %for.inc37, !dbg !4007

if.else:                                          ; preds = %for.body
  %cmp16 = icmp eq i8 %4, 69, !dbg !4008
  br i1 %cmp16, label %if.then18, label %for.inc37, !dbg !4009

if.then18:                                        ; preds = %if.else
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i64 0, i64 %indvars.iv.next2, !dbg !4010
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**, !dbg !4010
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4010
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 0, !dbg !4010
  %7 = load i32, i32* %num_elem, align 8, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %7, metadata !3982, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4011
  %8 = sext i32 %7 to i64, !dbg !4012
  br label %for.cond24, !dbg !4012

for.cond24:                                       ; preds = %for.body27, %if.then18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ %8, %if.then18 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3997
  call void @llvm.dbg.value(metadata i32 undef, metadata !3982, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4011
  %cmp25 = icmp sgt i64 %indvars.iv, 0, !dbg !4013
  br i1 %cmp25, label %for.body27, label %for.inc37.loopexit, !dbg !4015

for.body27:                                       ; preds = %for.cond24
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4016
  %arrayidx34 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 1, i64 %indvars.iv.next, !dbg !4016
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8, !dbg !4016
  tail call fastcc void @find_subregs_of_mode(%struct.rtx_def* %10) #8, !dbg !4017
  call void @llvm.dbg.value(metadata i32 undef, metadata !3982, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4011
  br label %for.cond24, !dbg !4018, !llvm.loop !4019

for.inc37.loopexit:                               ; preds = %for.cond24
  br label %for.inc37, !dbg !4021

for.inc37:                                        ; preds = %for.inc37.loopexit, %if.then10, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3981, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3989
  br label %for.cond, !dbg !4021, !llvm.loop !4022

for.end39:                                        ; preds = %for.cond
  ret void, !dbg !4024
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @invalid_mode_change_p(i32 %regno, i32 %rclass, i32 %from) local_unnamed_addr #4 !dbg !4025 {
entry:
  %dummy = alloca %struct.subregs_of_mode_node, align 4
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4029, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 %rclass, metadata !4030, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 %from, metadata !4031, metadata !DIExpression()), !dbg !4036
  %0 = bitcast %struct.subregs_of_mode_node* %dummy to i8*, !dbg !4037
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %0) #7, !dbg !4037
  %1 = load %struct.htab*, %struct.htab** @subregs_of_mode, align 8, !dbg !4038
  %tobool = icmp eq %struct.htab* %1, null, !dbg !4038
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4038

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 1353, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !4038
  %.pre = load %struct.htab*, %struct.htab** @subregs_of_mode, align 8, !dbg !4039
  br label %cond.end, !dbg !4038

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi %struct.htab* [ %1, %entry ], [ %.pre, %cond.true ], !dbg !4039
  %and = and i32 %regno, -8, !dbg !4040
  %block = getelementptr inbounds %struct.subregs_of_mode_node, %struct.subregs_of_mode_node* %dummy, i64 0, i32 0, !dbg !4041
  store i32 %and, i32* %block, align 4, !dbg !4042
  %call = call i8* @htab_find_with_hash(%struct.htab* %2, i8* nonnull %0, i32 %and) #6, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %call, metadata !4033, metadata !DIExpression()), !dbg !4036
  %cmp = icmp eq i8* %call, null, !dbg !4044
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4046

if.end:                                           ; preds = %cond.end
  %and2 = and i32 %regno, 7, !dbg !4047
  %shl = shl i32 1, %and2, !dbg !4048
  call void @llvm.dbg.value(metadata i32 0, metadata !4034, metadata !DIExpression()), !dbg !4036
  %modes = getelementptr inbounds i8, i8* %call, i64 4, !dbg !4049
  br label %for.cond, !dbg !4053

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !4054
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4034, metadata !DIExpression()), !dbg !4036
  %exitcond = icmp eq i64 %indvars.iv, 87, !dbg !4055
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !4056

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %modes, i64 %indvars.iv, !dbg !4057
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4057
  %conv5 = zext i8 %3 to i32, !dbg !4057
  %and7 = and i32 %shl, %conv5, !dbg !4058
  %tobool8 = icmp eq i32 %and7, 0, !dbg !4058
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !4059

if.then9:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32, !dbg !4060
  %call10 = call zeroext i8 @ix86_cannot_change_mode_class(i32 %from, i32 %4, i32 %rclass) #6, !dbg !4060
  %tobool11 = icmp eq i8 %call10, 0, !dbg !4060
  br i1 %tobool11, label %for.inc, label %cleanup.loopexit, !dbg !4062

for.inc:                                          ; preds = %if.then9, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4063
  call void @llvm.dbg.value(metadata i32 undef, metadata !4034, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4036
  br label %for.cond, !dbg !4064, !llvm.loop !4065

cleanup.loopexit:                                 ; preds = %for.cond, %if.then9
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %if.then9 ]
  br label %cleanup, !dbg !4067

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end
  %retval.0 = phi i8 [ 0, %cond.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !4036
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %0) #7, !dbg !4067
  ret i8 %retval.0, !dbg !4067
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @ix86_cannot_change_mode_class(i32, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @finish_subregs_of_mode() local_unnamed_addr #4 !dbg !4068 {
entry:
  %0 = load %struct.htab*, %struct.htab** @subregs_of_mode, align 8, !dbg !4069
  tail call void @htab_delete(%struct.htab* %0) #6, !dbg !4070
  store %struct.htab* null, %struct.htab** @subregs_of_mode, align 8, !dbg !4071
  ret void, !dbg !4072
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_rtx_def(i8*) #1

declare dso_local void @gt_pch_nx_rtx_def(i8*) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @restore_register_info() unnamed_addr #4 !dbg !4073 {
entry:
  %call = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @saved_fixed_regs, i64 0, i64 0), i64 53) #6, !dbg !4074
  %call1 = tail call i8* @memcpy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @saved_call_used_regs, i64 0, i64 0), i64 53) #6, !dbg !4075
  %call2 = tail call i8* @memcpy(i8* bitcast ([53 x i8*]* @reg_names to i8*), i8* bitcast ([53 x i8*]* @saved_reg_names to i8*), i64 424) #6, !dbg !4076
  ret void, !dbg !4077
}

declare dso_local void @ix86_conditional_register_usage() local_unnamed_addr #1

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !4078 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4085, metadata !DIExpression()), !dbg !4086
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4087
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4087
  %0 = load i32, i32* %rt_uint, align 8, !dbg !4087
  ret i32 %0, !dbg !4088
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local void @df_compute_regs_ever_live(i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @subreg_lowpart_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @set_reg_attrs_from_value(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @record_subregs_of_mode(%struct.rtx_def* %subreg) unnamed_addr #4 !dbg !4089 {
entry:
  %dummy = alloca %struct.subregs_of_mode_node, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def* %subreg, metadata !4091, metadata !DIExpression()), !dbg !4097
  %0 = bitcast %struct.subregs_of_mode_node* %dummy to i8*, !dbg !4098
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %0) #7, !dbg !4098
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %subreg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4099
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4099
  %2 = load i32*, i32** %1, align 8, !dbg !4099
  %bf.load = load i32, i32* %2, align 8, !dbg !4099
  %bf.clear = and i32 %bf.load, 65535, !dbg !4099
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4099
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4101

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %2 to %struct.rtx_def*, !dbg !4101
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %3) #8, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %call, metadata !4095, metadata !DIExpression()), !dbg !4097
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %subreg, i64 0, i32 0, !dbg !4103
  %bf.load5 = load i32, i32* %4, align 8, !dbg !4103
  %bf.lshr = lshr i32 %bf.load5, 16, !dbg !4103
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !4103
  call void @llvm.dbg.value(metadata i32 %bf.clear6, metadata !4094, metadata !DIExpression()), !dbg !4097
  %cmp7 = icmp ult i32 %call, 53, !dbg !4104
  br i1 %cmp7, label %cleanup, label %if.end9, !dbg !4106

if.end9:                                          ; preds = %if.end
  %and = and i32 %call, -8, !dbg !4107
  %block = getelementptr inbounds %struct.subregs_of_mode_node, %struct.subregs_of_mode_node* %dummy, i64 0, i32 0, !dbg !4108
  store i32 %and, i32* %block, align 4, !dbg !4109
  %5 = load %struct.htab*, %struct.htab** @subregs_of_mode, align 8, !dbg !4110
  %call11 = call i8** @htab_find_slot_with_hash(%struct.htab* %5, i8* nonnull %0, i32 %and, i32 1) #6, !dbg !4111
  call void @llvm.dbg.value(metadata i8** %call11, metadata !4096, metadata !DIExpression()), !dbg !4097
  %6 = bitcast i8** %call11 to %struct.subregs_of_mode_node**, !dbg !4112
  %7 = load %struct.subregs_of_mode_node*, %struct.subregs_of_mode_node** %6, align 8, !dbg !4112
  call void @llvm.dbg.value(metadata %struct.subregs_of_mode_node* %7, metadata !4093, metadata !DIExpression()), !dbg !4097
  %cmp12 = icmp eq %struct.subregs_of_mode_node* %7, null, !dbg !4113
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !4115

if.then13:                                        ; preds = %if.end9
  %call14 = call i8* @xcalloc(i64 1, i64 92) #6, !dbg !4116
  %8 = bitcast i8* %call14 to %struct.subregs_of_mode_node*, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.subregs_of_mode_node* %8, metadata !4093, metadata !DIExpression()), !dbg !4097
  %block16 = bitcast i8* %call14 to i32*, !dbg !4118
  store i32 %and, i32* %block16, align 4, !dbg !4119
  store i8* %call14, i8** %call11, align 8, !dbg !4120
  br label %if.end17, !dbg !4121

if.end17:                                         ; preds = %if.then13, %if.end9
  %node.0 = phi %struct.subregs_of_mode_node* [ %8, %if.then13 ], [ %7, %if.end9 ], !dbg !4097
  call void @llvm.dbg.value(metadata %struct.subregs_of_mode_node* %node.0, metadata !4093, metadata !DIExpression()), !dbg !4097
  %and18 = and i32 %call, 7, !dbg !4122
  %shl = shl i32 1, %and18, !dbg !4123
  %idxprom = zext i32 %bf.clear6 to i64, !dbg !4124
  %arrayidx19 = getelementptr inbounds %struct.subregs_of_mode_node, %struct.subregs_of_mode_node* %node.0, i64 0, i32 1, i64 %idxprom, !dbg !4124
  %9 = load i8, i8* %arrayidx19, align 1, !dbg !4125
  %10 = trunc i32 %shl to i8, !dbg !4125
  %conv20 = or i8 %9, %10, !dbg !4125
  store i8 %conv20, i8* %arrayidx19, align 1, !dbg !4125
  br label %cleanup, !dbg !4126

cleanup:                                          ; preds = %if.end, %entry, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %0) #7, !dbg !4126
  ret void, !dbg !4126
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2044, !2045, !2046}
!llvm.ident = !{!2047}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reg_alloc_order", scope: !2, file: !3, line: 135, type: !975, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !755, globals: !793, nameTableKind: None)
!3 = !DIFile(filename: "reginfo.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !165, !187, !193, !198, !202, !221, !228, !235, !429, !436, !612}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !135, line: 1188, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!137 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!156 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!157 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!158 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!159 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!160 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!161 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!162 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!163 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!164 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !166, line: 36, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!168 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!172 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!174 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!175 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!176 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!177 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!178 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!179 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!180 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!181 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!182 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!183 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!184 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!185 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!186 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !188, line: 363, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!191 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !188, line: 355, baseType: !7, size: 32, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!196 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!197 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !135, line: 474, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201}
!200 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!201 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !203, line: 280, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!205 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!207 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !203, line: 1817, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !203, line: 1805, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234}
!230 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !203, line: 39, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!237 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!242 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!243 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!244 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!245 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!246 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!247 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!248 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!249 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!251 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!252 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!253 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!254 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!255 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!256 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!257 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!258 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!259 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!260 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!261 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!262 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!263 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!264 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!265 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!266 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!267 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!268 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!269 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!270 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!271 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!272 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!273 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!274 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!275 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!276 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!277 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!278 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!280 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!281 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!282 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!283 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!284 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!285 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!286 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!287 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!288 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!289 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!290 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!291 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!292 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!293 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!294 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!295 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!296 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!297 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!298 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!299 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!300 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!301 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!302 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!303 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!304 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!305 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!306 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!307 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!308 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!309 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!310 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!311 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!312 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!313 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!314 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!315 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!316 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!317 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!318 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!319 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!320 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!321 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!322 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!323 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!324 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!325 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!326 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!327 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!328 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!329 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!330 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!331 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!332 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!333 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!334 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!335 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!336 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!337 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!338 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!339 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!340 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!341 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!342 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!343 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!344 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!345 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!346 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!347 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!348 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!349 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!350 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!351 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!352 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!353 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!354 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!355 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!356 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!357 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!358 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!359 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!360 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!361 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!362 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!363 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!364 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!365 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!366 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!367 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!368 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!369 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!370 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!371 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!372 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!373 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!374 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!375 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!376 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!377 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!378 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!379 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!380 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!381 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!382 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!383 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!384 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!385 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!386 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!387 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!388 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!389 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!390 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!391 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!392 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!397 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!398 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!401 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!402 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!403 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!404 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!405 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!406 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!407 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!408 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!409 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!413 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!414 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!415 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!416 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!417 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!418 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!419 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!420 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!421 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!422 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!423 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!424 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!425 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!426 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!427 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!428 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !430, line: 104, baseType: !7, size: 32, elements: !431)
!430 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!431 = !{!432, !433, !434, !435}
!432 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!433 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!434 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!435 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !437, line: 74, baseType: !7, size: 32, elements: !438)
!437 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!439 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!579 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!580 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!581 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!582 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!583 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!584 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!585 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!586 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!587 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!588 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!589 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!590 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!591 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!592 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!593 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!594 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!595 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!596 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!597 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!598 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!599 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!600 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!601 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!602 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!603 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!604 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!605 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!606 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!607 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!608 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!609 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!610 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!611 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !613, line: 45, baseType: !7, size: 32, elements: !614)
!613 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!615 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!616 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!617 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!618 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!619 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!620 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!621 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!622 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!623 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!624 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!625 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!626 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!627 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!628 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!629 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!630 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!631 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!632 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!633 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!634 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!635 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!636 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!637 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!638 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!639 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!640 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!641 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!642 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!643 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!644 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!645 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!646 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!647 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!648 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!649 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!650 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!651 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!652 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!653 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!654 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!655 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!656 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!657 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!658 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!659 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!660 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!661 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!662 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!663 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!664 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!665 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!666 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!667 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!668 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!669 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!670 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!671 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!672 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!673 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!674 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!675 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!676 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!677 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!678 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!679 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!680 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!681 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!682 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!683 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!684 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!685 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!686 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!687 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!688 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!689 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!690 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!691 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!692 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!693 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!694 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!695 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!696 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!697 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!698 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!699 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!700 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!701 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!702 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!703 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!704 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!705 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!706 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!707 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!708 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!709 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!710 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!711 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!712 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!713 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!714 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!715 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!716 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!717 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!718 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!719 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!720 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!721 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!722 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!723 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!724 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!725 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!726 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!727 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!728 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!729 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!730 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!731 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!732 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!733 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!734 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!735 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!736 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!737 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!738 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!739 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!740 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!741 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!742 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!743 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!744 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!745 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!746 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!747 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!748 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!749 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!750 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!751 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!752 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!753 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!754 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!755 = !{!756, !757, !758, !759, !762, !763, !765, !7, !134, !768, !767, !165, !5, !772, !775, !777, !612, !783, !791}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!758 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !766, line: 42, baseType: !767)
!766 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!767 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_table", file: !770, line: 269, baseType: !771)
!770 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 432, elements: !773)
!772 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!773 = !{!774}
!774 = !DISubrange(count: 27)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_pref", file: !3, line: 883, size: 24, elements: !779)
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prefclass", scope: !778, file: !3, line: 887, baseType: !761, size: 8)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "altclass", scope: !778, file: !3, line: 896, baseType: !761, size: 8, offset: 8)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "coverclass", scope: !778, file: !3, line: 900, baseType: !761, size: 8, offset: 16)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subregs_of_mode_node", file: !3, line: 1243, size: 736, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !784, file: !3, line: 1245, baseType: !7, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !784, file: !3, line: 1246, baseType: !788, size: 696, offset: 32)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 696, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 87)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!793 = !{!0, !794, !799, !802, !831, !845, !873, !893, !895, !898, !900, !902, !904, !906, !908, !910, !973, !976, !979, !982, !985, !987, !989, !992, !994, !998, !1001, !1003, !1005, !1007, !2013, !2017, !2019, !2021, !2023, !2025, !2027, !2029, !2034, !2037, !2039, !2041}
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reg_names", scope: !2, file: !3, line: 169, type: !796, isLocal: false, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 3392, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 53)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "reg_class_names", scope: !2, file: !3, line: 172, type: !801, isLocal: false, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 1728, elements: !773)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "last_move_cost", scope: !804, file: !3, line: 264, type: !829, isLocal: true, isDefinition: true)
!804 = distinct !DISubprogram(name: "init_move_cost", scope: !3, file: !3, line: 262, type: !805, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !5}
!807 = !{!808, !809, !810, !811, !812, !819, !826, !828}
!808 = !DILocalVariable(name: "m", arg: 1, scope: !804, file: !3, line: 262, type: !5)
!809 = !DILocalVariable(name: "all_match", scope: !804, file: !3, line: 265, type: !757)
!810 = !DILocalVariable(name: "i", scope: !804, file: !3, line: 266, type: !7)
!811 = !DILocalVariable(name: "j", scope: !804, file: !3, line: 266, type: !7)
!812 = !DILocalVariable(name: "cost", scope: !813, file: !3, line: 273, type: !758)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 272, column: 2)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 271, column: 7)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 271, column: 7)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 270, column: 9)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 269, column: 3)
!818 = distinct !DILexicalBlock(scope: !804, file: !3, line: 269, column: 3)
!819 = !DILocalVariable(name: "cost", scope: !820, file: !3, line: 303, type: !758)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 302, column: 2)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 301, column: 7)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 301, column: 7)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 300, column: 9)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 299, column: 3)
!825 = distinct !DILexicalBlock(scope: !804, file: !3, line: 299, column: 3)
!826 = !DILocalVariable(name: "p1", scope: !820, file: !3, line: 304, type: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!828 = !DILocalVariable(name: "p2", scope: !820, file: !3, line: 304, type: !827)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 11664, elements: !830)
!830 = !{!774, !774}
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "what_option", scope: !833, file: !3, line: 815, type: !841, isLocal: true, isDefinition: true)
!833 = distinct !DISubprogram(name: "fix_register", scope: !3, file: !3, line: 797, type: !834, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !763, !758, !758}
!836 = !{!837, !838, !839, !840}
!837 = !DILocalVariable(name: "name", arg: 1, scope: !833, file: !3, line: 797, type: !763)
!838 = !DILocalVariable(name: "fixed", arg: 2, scope: !833, file: !3, line: 797, type: !758)
!839 = !DILocalVariable(name: "call_used", arg: 3, scope: !833, file: !3, line: 797, type: !758)
!840 = !DILocalVariable(name: "i", scope: !833, file: !3, line: 799, type: !758)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 256, elements: !843)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!843 = !{!844, !844}
!844 = !DISubrange(count: 2)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "pass_reginfo_init", scope: !2, file: !3, line: 1013, type: !847, isLocal: false, isDefinition: true)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !430, line: 162, size: 640, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !847, file: !430, line: 164, baseType: !850, size: 640)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !430, line: 114, size: 640, elements: !851)
!851 = !{!852, !853, !854, !858, !862, !864, !865, !866, !868, !869, !870, !871, !872}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !430, line: 117, baseType: !429, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !430, line: 121, baseType: !763, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !850, file: !430, line: 125, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!757}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !850, file: !430, line: 130, baseType: !859, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!7}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !850, file: !430, line: 133, baseType: !863, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !430, line: 136, baseType: !863, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !850, file: !430, line: 139, baseType: !758, size: 32, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !850, file: !430, line: 143, baseType: !867, size: 32, offset: 416)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !437, line: 80, baseType: !436)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !850, file: !430, line: 146, baseType: !7, size: 32, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !850, file: !430, line: 147, baseType: !7, size: 32, offset: 480)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !850, file: !430, line: 148, baseType: !7, size: 32, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !850, file: !430, line: 151, baseType: !7, size: 32, offset: 544)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !850, file: !430, line: 152, baseType: !7, size: 32, offset: 576)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_reginfo_h", scope: !2, file: !875, line: 24, type: !876, isLocal: false, isDefinition: true)
!875 = !DIFile(filename: "./gt-reginfo.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 640, elements: !892)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !879, line: 69, size: 320, elements: !880)
!879 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!880 = !{!881, !882, !885, !886, !891}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !878, file: !879, line: 70, baseType: !762, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !878, file: !879, line: 71, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !884, line: 46, baseType: !767)
!884 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !878, file: !879, line: 72, baseType: !883, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !878, file: !879, line: 73, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !879, line: 65, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !762}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !878, file: !879, line: 74, baseType: !887, size: 64, offset: 256)
!892 = !{!844}
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "max_regno", scope: !2, file: !3, line: 59, type: !758, isLocal: false, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "fixed_regs", scope: !2, file: !3, line: 68, type: !897, isLocal: false, isDefinition: true)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 424, elements: !797)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(name: "fixed_reg_set", scope: !2, file: !3, line: 71, type: !765, isLocal: false, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(name: "call_used_regs", scope: !2, file: !3, line: 81, type: !897, isLocal: false, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "call_used_reg_set", scope: !2, file: !3, line: 84, type: !765, isLocal: false, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(name: "call_fixed_reg_set", scope: !2, file: !3, line: 109, type: !765, isLocal: false, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(name: "global_regs", scope: !2, file: !3, line: 115, type: !897, isLocal: false, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "regs_invalidated_by_call", scope: !2, file: !3, line: 123, type: !765, isLocal: false, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "regs_invalidated_by_call_regset", scope: !2, file: !3, line: 127, type: !912, isLocal: false, isDefinition: true)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset", file: !188, line: 37, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !914, line: 47, baseType: !915)
!914 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !917, line: 75, size: 256, elements: !918)
!917 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!918 = !{!919, !931, !932, !933}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !916, file: !917, line: 76, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !917, line: 68, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !917, line: 63, size: 320, elements: !923)
!923 = !{!924, !926, !927, !928}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !917, line: 64, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !922, file: !917, line: 65, baseType: !925, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !922, file: !917, line: 66, baseType: !7, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !922, file: !917, line: 67, baseType: !929, size: 128, offset: 192)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 128, elements: !892)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !917, line: 29, baseType: !767)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !916, file: !917, line: 77, baseType: !920, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !916, file: !917, line: 78, baseType: !7, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !916, file: !917, line: 79, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !917, line: 49, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !917, line: 45, size: 832, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !936, file: !917, line: 46, baseType: !925, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !936, file: !917, line: 47, baseType: !915, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !936, file: !917, line: 48, baseType: !941, size: 704, offset: 128)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !942, line: 164, size: 704, elements: !943)
!942 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!943 = !{!944, !946, !956, !957, !958, !959, !960, !961, !965, !969, !970, !971, !972}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !941, file: !942, line: 166, baseType: !945, size: 64)
!945 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !941, file: !942, line: 167, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !942, line: 157, size: 192, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !948, file: !942, line: 159, baseType: !760, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !948, file: !942, line: 160, baseType: !947, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !948, file: !942, line: 161, baseType: !953, size: 32, offset: 128)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 32, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 4)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !941, file: !942, line: 168, baseType: !760, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !941, file: !942, line: 169, baseType: !760, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !941, file: !942, line: 170, baseType: !760, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !941, file: !942, line: 171, baseType: !945, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !941, file: !942, line: 172, baseType: !758, size: 32, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !941, file: !942, line: 176, baseType: !962, size: 64, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!947, !762, !945}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !941, file: !942, line: 177, baseType: !966, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !762, !947}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !941, file: !942, line: 178, baseType: !762, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !941, file: !942, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !941, file: !942, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !941, file: !942, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(name: "inv_reg_alloc_order", scope: !2, file: !3, line: 138, type: !975, isLocal: false, isDefinition: true)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 1696, elements: !797)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(name: "reg_class_contents", scope: !2, file: !3, line: 142, type: !978, isLocal: false, isDefinition: true)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 1728, elements: !773)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(name: "reg_class_size", scope: !2, file: !3, line: 155, type: !981, isLocal: false, isDefinition: true)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 864, elements: !773)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(name: "reg_class_subclasses", scope: !2, file: !3, line: 158, type: !984, isLocal: false, isDefinition: true)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 23328, elements: !830)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(name: "reg_class_subunion", scope: !2, file: !3, line: 162, type: !984, isLocal: false, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(name: "reg_class_superunion", scope: !2, file: !3, line: 166, type: !984, isLocal: false, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(name: "reg_raw_mode", scope: !2, file: !3, line: 178, type: !991, isLocal: false, isDefinition: true)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1696, elements: !797)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(name: "have_regs_of_mode", scope: !2, file: !3, line: 181, type: !788, isLocal: false, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(name: "contains_reg_of_mode", scope: !2, file: !3, line: 184, type: !996, isLocal: false, isDefinition: true)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 18792, elements: !997)
!997 = !{!774, !790}
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(name: "move_cost", scope: !2, file: !3, line: 188, type: !1000, isLocal: false, isDefinition: true)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 5568, elements: !789)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(name: "may_move_in_cost", scope: !2, file: !3, line: 192, type: !1000, isLocal: false, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(name: "may_move_out_cost", scope: !2, file: !3, line: 196, type: !1000, isLocal: false, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(name: "last_mode_for_init_move_cost", scope: !2, file: !3, line: 199, type: !758, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(name: "top_of_stack", scope: !2, file: !3, line: 202, type: !1009, isLocal: true, isDefinition: true)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 5568, elements: !789)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !914, line: 50, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !613, line: 240, size: 384, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1012, file: !613, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1012, file: !613, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1012, file: !613, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1012, file: !613, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1012, file: !613, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1012, file: !613, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1012, file: !613, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1012, file: !613, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1012, file: !613, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1012, file: !613, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1012, file: !613, line: 321, baseType: !1025, size: 320, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !613, line: 315, size: 320, elements: !1026)
!1026 = !{!1027, !1948, !1950, !2011, !2012}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1025, file: !613, line: 316, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 64, elements: !1044)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !613, line: 183, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !613, line: 166, size: 64, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1046, !1047, !1059, !1062, !1063, !1926, !1927, !1938, !1945}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1030, file: !613, line: 168, baseType: !758, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1030, file: !613, line: 169, baseType: !7, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1030, file: !613, line: 170, baseType: !763, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1030, file: !613, line: 171, baseType: !1010, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1030, file: !613, line: 172, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !914, line: 53, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !613, line: 359, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1039, file: !613, line: 360, baseType: !758, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1039, file: !613, line: 361, baseType: !1043, size: 64, offset: 64)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 64, elements: !1044)
!1044 = !{!1045}
!1045 = !DISubrange(count: 1)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1030, file: !613, line: 173, baseType: !5, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1030, file: !613, line: 174, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !613, line: 133, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 115, size: 32, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1049, file: !613, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1049, file: !613, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1049, file: !613, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1049, file: !613, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1049, file: !613, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1049, file: !613, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1049, file: !613, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1049, file: !613, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1030, file: !613, line: 175, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !613, line: 175, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1030, file: !613, line: 176, baseType: !915, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1030, file: !613, line: 177, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !914, line: 56, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !203, line: 3371, size: 1792, elements: !1067)
!1067 = !{!1068, !1101, !1107, !1118, !1137, !1148, !1153, !1160, !1166, !1179, !1191, !1229, !1234, !1262, !1270, !1271, !1276, !1285, !1291, !1296, !1300, !1304, !1550, !1599, !1605, !1612, !1619, !1645, !1670, !1687, !1699, !1721, !1736, !1908}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1066, file: !203, line: 3372, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !203, line: 360, size: 64, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1069, file: !203, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1069, file: !203, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1069, file: !203, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1069, file: !203, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1069, file: !203, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1069, file: !203, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1069, file: !203, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1069, file: !203, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1069, file: !203, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1069, file: !203, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1069, file: !203, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1069, file: !203, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1069, file: !203, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1069, file: !203, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1069, file: !203, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1069, file: !203, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1069, file: !203, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1069, file: !203, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1069, file: !203, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1069, file: !203, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1069, file: !203, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1069, file: !203, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1069, file: !203, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1069, file: !203, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1069, file: !203, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1069, file: !203, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1069, file: !203, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1069, file: !203, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1069, file: !203, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1069, file: !203, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1066, file: !203, line: 3373, baseType: !1102, size: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !203, line: 402, size: 192, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1102, file: !203, line: 403, baseType: !1069, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1102, file: !203, line: 404, baseType: !1064, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1102, file: !203, line: 405, baseType: !1064, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1066, file: !203, line: 3374, baseType: !1108, size: 320)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !203, line: 1384, size: 320, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1108, file: !203, line: 1385, baseType: !1102, size: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1108, file: !203, line: 1386, baseType: !1112, size: 128, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1113, line: 58, baseType: !1114)
!1113 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1113, line: 54, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1114, file: !1113, line: 56, baseType: !767, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1114, file: !1113, line: 57, baseType: !945, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1066, file: !203, line: 3375, baseType: !1119, size: 256)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !203, line: 1397, size: 256, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1119, file: !203, line: 1398, baseType: !1102, size: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1119, file: !203, line: 1399, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1125, line: 52, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1124, file: !1125, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1124, file: !1125, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1124, file: !1125, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1124, file: !1125, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1124, file: !1125, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1124, file: !1125, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1124, file: !1125, line: 62, baseType: !1134, size: 192, offset: 64)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 192, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 3)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1066, file: !203, line: 3376, baseType: !1138, size: 256)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !203, line: 1408, size: 256, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !203, line: 1409, baseType: !1102, size: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1138, file: !203, line: 1410, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1144, line: 27, size: 192, elements: !1145)
!1144 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1143, file: !1144, line: 29, baseType: !1112, size: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1143, file: !1144, line: 30, baseType: !5, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1066, file: !203, line: 3377, baseType: !1149, size: 256)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !203, line: 1437, size: 256, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1149, file: !203, line: 1438, baseType: !1102, size: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1149, file: !203, line: 1439, baseType: !1064, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1066, file: !203, line: 3378, baseType: !1154, size: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !203, line: 1418, size: 256, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !203, line: 1419, baseType: !1102, size: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1154, file: !203, line: 1420, baseType: !758, size: 32, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1154, file: !203, line: 1421, baseType: !1159, size: 8, offset: 224)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 8, elements: !1044)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1066, file: !203, line: 3379, baseType: !1161, size: 320)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !203, line: 1428, size: 320, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1161, file: !203, line: 1429, baseType: !1102, size: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1161, file: !203, line: 1430, baseType: !1064, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1161, file: !203, line: 1431, baseType: !1064, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1066, file: !203, line: 3380, baseType: !1167, size: 320)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !203, line: 1460, size: 320, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !203, line: 1461, baseType: !1102, size: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1167, file: !203, line: 1462, baseType: !1171, size: 128, offset: 192)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1172, line: 31, size: 128, elements: !1173)
!1172 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1173 = !{!1174, !1177, !1178}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1171, file: !1172, line: 32, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1171, file: !1172, line: 33, baseType: !7, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1171, file: !1172, line: 34, baseType: !7, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1066, file: !203, line: 3381, baseType: !1180, size: 384)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !203, line: 2507, size: 384, elements: !1181)
!1181 = !{!1182, !1183, !1188, !1189, !1190}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1180, file: !203, line: 2508, baseType: !1102, size: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1180, file: !203, line: 2509, baseType: !1184, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1185, line: 58, baseType: !1186)
!1185 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1187, line: 44, baseType: !7)
!1187 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1180, file: !203, line: 2510, baseType: !7, size: 32, offset: 224)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !203, line: 2511, baseType: !1064, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1180, file: !203, line: 2512, baseType: !1064, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1066, file: !203, line: 3382, baseType: !1192, size: 896)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !203, line: 2652, size: 896, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1192, file: !203, line: 2653, baseType: !1180, size: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1192, file: !203, line: 2654, baseType: !1064, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1192, file: !203, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1192, file: !203, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1192, file: !203, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1192, file: !203, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1192, file: !203, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1192, file: !203, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1192, file: !203, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1192, file: !203, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1192, file: !203, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1192, file: !203, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1192, file: !203, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1192, file: !203, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1192, file: !203, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1192, file: !203, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1192, file: !203, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1192, file: !203, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1192, file: !203, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1192, file: !203, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1192, file: !203, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1192, file: !203, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1192, file: !203, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1192, file: !203, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1192, file: !203, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1192, file: !203, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1192, file: !203, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1192, file: !203, line: 2703, baseType: !7, size: 32, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1192, file: !203, line: 2705, baseType: !1064, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1192, file: !203, line: 2706, baseType: !1064, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1192, file: !203, line: 2707, baseType: !1064, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1192, file: !203, line: 2708, baseType: !1064, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1192, file: !203, line: 2711, baseType: !1227, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !203, line: 2711, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1066, file: !203, line: 3383, baseType: !1230, size: 960)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !203, line: 2756, size: 960, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1230, file: !203, line: 2757, baseType: !1192, size: 896)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1230, file: !203, line: 2758, baseType: !1010, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1066, file: !203, line: 3384, baseType: !1235, size: 1472)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !203, line: 3114, size: 1472, elements: !1236)
!1236 = !{!1237, !1258, !1259, !1260, !1261}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1235, file: !203, line: 3115, baseType: !1238, size: 1216)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !203, line: 2984, size: 1216, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1238, file: !203, line: 2985, baseType: !1230, size: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1238, file: !203, line: 2986, baseType: !1064, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1238, file: !203, line: 2987, baseType: !1064, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1238, file: !203, line: 2988, baseType: !1064, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1238, file: !203, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1238, file: !203, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1238, file: !203, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1238, file: !203, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1238, file: !203, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1238, file: !203, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1238, file: !203, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1238, file: !203, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1238, file: !203, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1238, file: !203, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1238, file: !203, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1238, file: !203, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1238, file: !203, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1238, file: !203, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1235, file: !203, line: 3117, baseType: !1064, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1235, file: !203, line: 3119, baseType: !1064, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1235, file: !203, line: 3121, baseType: !1064, size: 64, offset: 1344)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1235, file: !203, line: 3123, baseType: !1064, size: 64, offset: 1408)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1066, file: !203, line: 3385, baseType: !1263, size: 1088)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !203, line: 2874, size: 1088, elements: !1264)
!1264 = !{!1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1263, file: !203, line: 2875, baseType: !1230, size: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1263, file: !203, line: 2876, baseType: !1010, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1263, file: !203, line: 2877, baseType: !1268, size: 64, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !203, line: 2856, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1066, file: !203, line: 3386, baseType: !1238, size: 1216)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1066, file: !203, line: 3387, baseType: !1272, size: 1280)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !203, line: 3093, size: 1280, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1272, file: !203, line: 3094, baseType: !1238, size: 1216)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1272, file: !203, line: 3095, baseType: !1268, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1066, file: !203, line: 3388, baseType: !1277, size: 1216)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !203, line: 2824, size: 1216, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1277, file: !203, line: 2825, baseType: !1192, size: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1277, file: !203, line: 2827, baseType: !1064, size: 64, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1277, file: !203, line: 2828, baseType: !1064, size: 64, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1277, file: !203, line: 2829, baseType: !1064, size: 64, offset: 1024)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1277, file: !203, line: 2830, baseType: !1064, size: 64, offset: 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1277, file: !203, line: 2831, baseType: !1064, size: 64, offset: 1152)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1066, file: !203, line: 3389, baseType: !1286, size: 1024)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !203, line: 2850, size: 1024, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1286, file: !203, line: 2851, baseType: !1230, size: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1286, file: !203, line: 2852, baseType: !758, size: 32, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1286, file: !203, line: 2853, baseType: !758, size: 32, offset: 992)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1066, file: !203, line: 3390, baseType: !1292, size: 1024)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !203, line: 2857, size: 1024, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1292, file: !203, line: 2858, baseType: !1230, size: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1292, file: !203, line: 2859, baseType: !1268, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1066, file: !203, line: 3391, baseType: !1297, size: 960)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !203, line: 2862, size: 960, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1297, file: !203, line: 2863, baseType: !1230, size: 960)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1066, file: !203, line: 3392, baseType: !1301, size: 1472)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !203, line: 3304, size: 1472, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !203, line: 3305, baseType: !1235, size: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1066, file: !203, line: 3393, baseType: !1305, size: 1792)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !203, line: 3248, size: 1792, elements: !1306)
!1306 = !{!1307, !1308, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1305, file: !203, line: 3249, baseType: !1235, size: 1472)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1305, file: !203, line: 3251, baseType: !1309, size: 64, offset: 1472)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1311, line: 463, size: 1152, elements: !1312)
!1311 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1312 = !{!1313, !1316, !1420, !1421, !1424, !1427, !1474, !1475, !1476, !1477, !1478, !1502, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1310, file: !1311, line: 464, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1311, line: 464, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1310, file: !1311, line: 467, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !188, line: 374, size: 640, elements: !1319)
!1319 = !{!1320, !1395, !1396, !1409, !1410, !1411, !1412, !1413, !1414, !1416, !1418, !1419}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1318, file: !188, line: 377, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !914, line: 111, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !188, line: 217, size: 832, elements: !1324)
!1324 = !{!1325, !1360, !1361, !1362, !1365, !1369, !1370, !1371, !1389, !1390, !1391, !1392, !1393, !1394}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1323, file: !188, line: 219, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !188, line: 151, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !188, line: 151, size: 128, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1328, file: !188, line: 151, baseType: !1331, size: 128)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !188, line: 150, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !188, line: 150, size: 128, elements: !1333)
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1332, file: !188, line: 150, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1332, file: !188, line: 150, baseType: !7, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1332, file: !188, line: 150, baseType: !1337, size: 64, offset: 64)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 64, elements: !1044)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !914, line: 108, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !188, line: 122, size: 512, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1340, file: !188, line: 124, baseType: !1322, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1340, file: !188, line: 125, baseType: !1322, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1340, file: !188, line: 131, baseType: !1345, size: 64, offset: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !188, line: 128, size: 64, elements: !1346)
!1346 = !{!1347, !1351}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1345, file: !188, line: 129, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !914, line: 66, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !914, line: 65, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1345, file: !188, line: 130, baseType: !1010, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1340, file: !188, line: 134, baseType: !762, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1340, file: !188, line: 137, baseType: !1064, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1340, file: !188, line: 138, baseType: !1184, size: 32, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1340, file: !188, line: 142, baseType: !7, size: 32, offset: 352)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !188, line: 144, baseType: !758, size: 32, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1340, file: !188, line: 145, baseType: !758, size: 32, offset: 416)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1340, file: !188, line: 146, baseType: !1359, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !188, line: 119, baseType: !945)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1323, file: !188, line: 220, baseType: !1326, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1323, file: !188, line: 223, baseType: !762, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1323, file: !188, line: 226, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !188, line: 185, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1323, file: !188, line: 229, baseType: !1366, size: 128, offset: 256)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 128, elements: !892)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !188, line: 229, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1323, file: !188, line: 232, baseType: !1322, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1323, file: !188, line: 233, baseType: !1322, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1323, file: !188, line: 238, baseType: !1372, size: 64, offset: 512)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !188, line: 235, size: 64, elements: !1373)
!1373 = !{!1374, !1380}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1372, file: !188, line: 236, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !188, line: 273, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1376, file: !188, line: 275, baseType: !1348, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1376, file: !188, line: 278, baseType: !1348, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1372, file: !188, line: 237, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !188, line: 259, size: 320, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1382, file: !188, line: 261, baseType: !1010, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1382, file: !188, line: 262, baseType: !1010, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1382, file: !188, line: 266, baseType: !1010, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1382, file: !188, line: 267, baseType: !1010, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1382, file: !188, line: 270, baseType: !758, size: 32, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1323, file: !188, line: 241, baseType: !1359, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1323, file: !188, line: 244, baseType: !758, size: 32, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1323, file: !188, line: 247, baseType: !758, size: 32, offset: 672)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1323, file: !188, line: 250, baseType: !758, size: 32, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1323, file: !188, line: 253, baseType: !758, size: 32, offset: 736)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !188, line: 256, baseType: !758, size: 32, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1318, file: !188, line: 378, baseType: !1321, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1318, file: !188, line: 381, baseType: !1397, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !188, line: 282, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !188, line: 282, size: 128, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1399, file: !188, line: 282, baseType: !1402, size: 128)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !188, line: 281, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !188, line: 281, size: 128, elements: !1404)
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1403, file: !188, line: 281, baseType: !7, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1403, file: !188, line: 281, baseType: !7, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1403, file: !188, line: 281, baseType: !1408, size: 64, offset: 64)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 64, elements: !1044)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1318, file: !188, line: 384, baseType: !758, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1318, file: !188, line: 387, baseType: !758, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1318, file: !188, line: 390, baseType: !758, size: 32, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1318, file: !188, line: 394, baseType: !1397, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1318, file: !188, line: 396, baseType: !187, size: 32, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1318, file: !188, line: 399, baseType: !1415, size: 64, offset: 416)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !892)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1318, file: !188, line: 402, baseType: !1417, size: 64, offset: 480)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !892)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1318, file: !188, line: 406, baseType: !758, size: 32, offset: 544)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1318, file: !188, line: 409, baseType: !758, size: 32, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1310, file: !1311, line: 470, baseType: !1349, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1310, file: !1311, line: 473, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1311, line: 166, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1310, file: !1311, line: 476, baseType: !1425, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1311, line: 476, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1310, file: !1311, line: 479, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1429, line: 144, baseType: !1430)
!1429 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1429, line: 100, size: 896, elements: !1432)
!1432 = !{!1433, !1441, !1446, !1448, !1450, !1451, !1452, !1453, !1454, !1455, !1460, !1462, !1463, !1468, !1473}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1431, file: !1429, line: 102, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1429, line: 52, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1429, line: 47, baseType: !7)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1431, file: !1429, line: 105, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1429, line: 59, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!758, !1439, !1439}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1431, file: !1429, line: 108, baseType: !1447, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1429, line: 63, baseType: !888)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1431, file: !1429, line: 111, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1431, file: !1429, line: 114, baseType: !883, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1431, file: !1429, line: 117, baseType: !883, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1431, file: !1429, line: 120, baseType: !883, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1431, file: !1429, line: 124, baseType: !7, size: 32, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1431, file: !1429, line: 128, baseType: !7, size: 32, offset: 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1431, file: !1429, line: 131, baseType: !1456, size: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1429, line: 75, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!762, !883, !883}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1431, file: !1429, line: 132, baseType: !1461, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1429, line: 78, baseType: !888)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1431, file: !1429, line: 135, baseType: !762, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1431, file: !1429, line: 136, baseType: !1464, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1429, line: 82, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!762, !762, !883, !883}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1431, file: !1429, line: 137, baseType: !1469, size: 64, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1429, line: 83, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !762, !762}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1431, file: !1429, line: 141, baseType: !7, size: 32, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1310, file: !1311, line: 484, baseType: !1064, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1310, file: !1311, line: 488, baseType: !1064, size: 64, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1310, file: !1311, line: 493, baseType: !1064, size: 64, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1310, file: !1311, line: 496, baseType: !1064, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1310, file: !1311, line: 501, baseType: !1479, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !135, line: 2355, size: 576, elements: !1481)
!1481 = !{!1482, !1485, !1486, !1487, !1488, !1490, !1491, !1496, !1497, !1498, !1499, !1500, !1501}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1480, file: !135, line: 2356, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !135, line: 2356, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1480, file: !135, line: 2357, baseType: !763, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1480, file: !135, line: 2358, baseType: !758, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1480, file: !135, line: 2359, baseType: !758, size: 32, offset: 160)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1480, file: !135, line: 2360, baseType: !1489, size: 128, offset: 192)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !954)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1480, file: !135, line: 2364, baseType: !758, size: 32, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1480, file: !135, line: 2367, baseType: !1492, size: 128, offset: 384)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !135, line: 2349, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1492, file: !135, line: 2351, baseType: !1010, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1492, file: !135, line: 2352, baseType: !945, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1480, file: !135, line: 2371, baseType: !198, size: 32, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1480, file: !135, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1480, file: !135, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1480, file: !135, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1480, file: !135, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1480, file: !135, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1310, file: !1311, line: 504, baseType: !1503, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1311, line: 504, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1310, file: !1311, line: 507, baseType: !1428, size: 64, offset: 768)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1310, file: !1311, line: 510, baseType: !758, size: 32, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1310, file: !1311, line: 513, baseType: !758, size: 32, offset: 864)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1310, file: !1311, line: 516, baseType: !1184, size: 32, offset: 896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1310, file: !1311, line: 519, baseType: !1184, size: 32, offset: 928)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1310, file: !1311, line: 522, baseType: !7, size: 32, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1310, file: !1311, line: 523, baseType: !7, size: 32, offset: 992)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1310, file: !1311, line: 528, baseType: !763, size: 64, offset: 1024)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1310, file: !1311, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1310, file: !1311, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1310, file: !1311, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1310, file: !1311, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1310, file: !1311, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1310, file: !1311, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1310, file: !1311, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1310, file: !1311, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1310, file: !1311, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1310, file: !1311, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1310, file: !1311, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1310, file: !1311, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1310, file: !1311, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1310, file: !1311, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1310, file: !1311, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1310, file: !1311, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1305, file: !203, line: 3254, baseType: !1064, size: 64, offset: 1536)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1305, file: !203, line: 3257, baseType: !1064, size: 64, offset: 1600)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1305, file: !203, line: 3258, baseType: !1064, size: 64, offset: 1664)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1305, file: !203, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1305, file: !203, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1305, file: !203, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1305, file: !203, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1305, file: !203, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1305, file: !203, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1305, file: !203, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1305, file: !203, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1305, file: !203, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1305, file: !203, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1305, file: !203, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1305, file: !203, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1305, file: !203, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1305, file: !203, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1305, file: !203, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1305, file: !203, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1305, file: !203, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1305, file: !203, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !203, line: 3394, baseType: !1551, size: 1344)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !203, line: 2279, size: 1344, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1578, !1579, !1580, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1551, file: !203, line: 2280, baseType: !1102, size: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1551, file: !203, line: 2281, baseType: !1064, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1551, file: !203, line: 2282, baseType: !1064, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1551, file: !203, line: 2283, baseType: !1064, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1551, file: !203, line: 2284, baseType: !1064, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !203, line: 2285, baseType: !7, size: 32, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1551, file: !203, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1551, file: !203, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1551, file: !203, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1551, file: !203, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1551, file: !203, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1551, file: !203, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1551, file: !203, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1551, file: !203, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1551, file: !203, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1551, file: !203, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1551, file: !203, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1551, file: !203, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1551, file: !203, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1551, file: !203, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1551, file: !203, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1551, file: !203, line: 2305, baseType: !7, size: 32, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1551, file: !203, line: 2306, baseType: !1576, size: 32, offset: 544)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1577, line: 31, baseType: !758)
!1577 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1551, file: !203, line: 2307, baseType: !1064, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1551, file: !203, line: 2308, baseType: !1064, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1551, file: !203, line: 2314, baseType: !1581, size: 64, offset: 704)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !203, line: 2309, size: 64, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1581, file: !203, line: 2310, baseType: !758, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1581, file: !203, line: 2311, baseType: !763, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1581, file: !203, line: 2312, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !203, line: 2277, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !203, line: 2315, baseType: !1064, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1551, file: !203, line: 2316, baseType: !1064, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1551, file: !203, line: 2317, baseType: !1064, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1551, file: !203, line: 2318, baseType: !1064, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1551, file: !203, line: 2319, baseType: !1064, size: 64, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1551, file: !203, line: 2320, baseType: !1064, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1551, file: !203, line: 2321, baseType: !1064, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1551, file: !203, line: 2322, baseType: !1064, size: 64, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1551, file: !203, line: 2324, baseType: !1597, size: 64, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !203, line: 2324, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1066, file: !203, line: 3395, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !203, line: 1469, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1600, file: !203, line: 1470, baseType: !1102, size: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1600, file: !203, line: 1471, baseType: !1064, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1600, file: !203, line: 1472, baseType: !1064, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1066, file: !203, line: 3396, baseType: !1606, size: 320)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !203, line: 1482, size: 320, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1606, file: !203, line: 1483, baseType: !1102, size: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1606, file: !203, line: 1484, baseType: !758, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1606, file: !203, line: 1485, baseType: !1611, size: 64, offset: 256)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 64, elements: !1044)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1066, file: !203, line: 3397, baseType: !1613, size: 384)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !203, line: 1829, size: 384, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1613, file: !203, line: 1830, baseType: !1102, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1613, file: !203, line: 1831, baseType: !1184, size: 32, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1613, file: !203, line: 1832, baseType: !1064, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1613, file: !203, line: 1835, baseType: !1611, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1066, file: !203, line: 3398, baseType: !1620, size: 704)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !203, line: 1898, size: 704, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1628, !1629, !1632}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1620, file: !203, line: 1899, baseType: !1102, size: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1620, file: !203, line: 1902, baseType: !1064, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1620, file: !203, line: 1905, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !914, line: 58, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !914, line: 57, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1620, file: !203, line: 1908, baseType: !7, size: 32, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1620, file: !203, line: 1911, baseType: !1630, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !203, line: 1876, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1620, file: !203, line: 1914, baseType: !1633, size: 256, offset: 448)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !203, line: 1883, size: 256, elements: !1634)
!1634 = !{!1635, !1637, !1638, !1643}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1633, file: !203, line: 1884, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1633, file: !203, line: 1885, baseType: !1636, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1633, file: !203, line: 1891, baseType: !1639, size: 64, offset: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !203, line: 1891, size: 64, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1639, file: !203, line: 1891, baseType: !1625, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1639, file: !203, line: 1891, baseType: !1064, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1633, file: !203, line: 1892, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1066, file: !203, line: 3399, baseType: !1646, size: 704)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !203, line: 2008, size: 704, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1665, !1666, !1667, !1668, !1669}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1646, file: !203, line: 2009, baseType: !1102, size: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1646, file: !203, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1646, file: !203, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1646, file: !203, line: 2014, baseType: !1184, size: 32, offset: 224)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1646, file: !203, line: 2016, baseType: !1064, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1646, file: !203, line: 2017, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !203, line: 183, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !203, line: 183, size: 128, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1656, file: !203, line: 183, baseType: !1659, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !203, line: 182, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !203, line: 182, size: 128, elements: !1661)
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1660, file: !203, line: 182, baseType: !7, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1660, file: !203, line: 182, baseType: !7, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1660, file: !203, line: 182, baseType: !1611, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1646, file: !203, line: 2019, baseType: !1064, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1646, file: !203, line: 2020, baseType: !1064, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1646, file: !203, line: 2021, baseType: !1064, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1646, file: !203, line: 2022, baseType: !1064, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1646, file: !203, line: 2023, baseType: !1064, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1066, file: !203, line: 3400, baseType: !1671, size: 832)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !203, line: 2430, size: 832, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1671, file: !203, line: 2431, baseType: !1102, size: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1671, file: !203, line: 2433, baseType: !1064, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1671, file: !203, line: 2434, baseType: !1064, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1671, file: !203, line: 2435, baseType: !1064, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1671, file: !203, line: 2436, baseType: !1064, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1671, file: !203, line: 2437, baseType: !1654, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1671, file: !203, line: 2438, baseType: !1064, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1671, file: !203, line: 2440, baseType: !1064, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1671, file: !203, line: 2441, baseType: !1064, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1671, file: !203, line: 2443, baseType: !1683, size: 128, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !203, line: 182, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !203, line: 182, size: 128, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1684, file: !203, line: 182, baseType: !1659, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1066, file: !203, line: 3401, baseType: !1688, size: 320)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !203, line: 3327, size: 320, elements: !1689)
!1689 = !{!1690, !1691, !1698}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1688, file: !203, line: 3329, baseType: !1102, size: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1688, file: !203, line: 3330, baseType: !1692, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !203, line: 3320, size: 192, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1693, file: !203, line: 3322, baseType: !1692, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1693, file: !203, line: 3323, baseType: !1692, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1693, file: !203, line: 3324, baseType: !1064, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1688, file: !203, line: 3331, baseType: !1692, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1066, file: !203, line: 3402, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !203, line: 1540, size: 256, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1700, file: !203, line: 1541, baseType: !1102, size: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1700, file: !203, line: 1542, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !203, line: 1538, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !203, line: 1538, size: 192, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1706, file: !203, line: 1538, baseType: !1709, size: 192)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !203, line: 1537, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !203, line: 1537, size: 192, elements: !1711)
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1710, file: !203, line: 1537, baseType: !7, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1710, file: !203, line: 1537, baseType: !7, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1710, file: !203, line: 1537, baseType: !1715, size: 128, offset: 64)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, size: 128, elements: !1044)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !203, line: 1535, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !203, line: 1532, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1717, file: !203, line: 1533, baseType: !1064, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1717, file: !203, line: 1534, baseType: !1064, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1066, file: !203, line: 3403, baseType: !1722, size: 512)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !203, line: 1938, size: 512, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1733, !1734, !1735}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1722, file: !203, line: 1939, baseType: !1102, size: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1722, file: !203, line: 1940, baseType: !1184, size: 32, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1722, file: !203, line: 1941, baseType: !202, size: 32, offset: 224)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1722, file: !203, line: 1946, baseType: !1728, size: 32, offset: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !203, line: 1942, size: 32, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1728, file: !203, line: 1943, baseType: !221, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1728, file: !203, line: 1944, baseType: !228, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1728, file: !203, line: 1945, baseType: !235, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1722, file: !203, line: 1950, baseType: !1348, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1722, file: !203, line: 1951, baseType: !1348, size: 64, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1722, file: !203, line: 1953, baseType: !1611, size: 64, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1066, file: !203, line: 3404, baseType: !1737, size: 1664)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !203, line: 3337, size: 1664, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1737, file: !203, line: 3338, baseType: !1102, size: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1737, file: !203, line: 3341, baseType: !1741, size: 1472, offset: 192)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1742, line: 410, size: 1472, elements: !1743)
!1742 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1741, file: !1742, line: 412, baseType: !758, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1741, file: !1742, line: 413, baseType: !758, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1741, file: !1742, line: 414, baseType: !758, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1741, file: !1742, line: 415, baseType: !758, size: 32, offset: 96)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1741, file: !1742, line: 416, baseType: !758, size: 32, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1741, file: !1742, line: 417, baseType: !758, size: 32, offset: 160)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1741, file: !1742, line: 418, baseType: !757, size: 8, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1741, file: !1742, line: 419, baseType: !757, size: 8, offset: 200)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1741, file: !1742, line: 420, baseType: !1753, size: 8, offset: 208)
!1753 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1741, file: !1742, line: 421, baseType: !1753, size: 8, offset: 216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1741, file: !1742, line: 422, baseType: !1753, size: 8, offset: 224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1741, file: !1742, line: 423, baseType: !1753, size: 8, offset: 232)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1741, file: !1742, line: 424, baseType: !1753, size: 8, offset: 240)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1741, file: !1742, line: 425, baseType: !1753, size: 8, offset: 248)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1741, file: !1742, line: 426, baseType: !1753, size: 8, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1741, file: !1742, line: 427, baseType: !1753, size: 8, offset: 264)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1741, file: !1742, line: 428, baseType: !1753, size: 8, offset: 272)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1741, file: !1742, line: 429, baseType: !1753, size: 8, offset: 280)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1741, file: !1742, line: 430, baseType: !1753, size: 8, offset: 288)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1741, file: !1742, line: 431, baseType: !1753, size: 8, offset: 296)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1741, file: !1742, line: 432, baseType: !1753, size: 8, offset: 304)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1741, file: !1742, line: 433, baseType: !1753, size: 8, offset: 312)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1741, file: !1742, line: 434, baseType: !1753, size: 8, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1741, file: !1742, line: 435, baseType: !1753, size: 8, offset: 328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1741, file: !1742, line: 436, baseType: !1753, size: 8, offset: 336)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1741, file: !1742, line: 437, baseType: !1753, size: 8, offset: 344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1741, file: !1742, line: 438, baseType: !1753, size: 8, offset: 352)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1741, file: !1742, line: 439, baseType: !1753, size: 8, offset: 360)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1741, file: !1742, line: 440, baseType: !1753, size: 8, offset: 368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1741, file: !1742, line: 441, baseType: !1753, size: 8, offset: 376)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1741, file: !1742, line: 442, baseType: !1753, size: 8, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1741, file: !1742, line: 443, baseType: !1753, size: 8, offset: 392)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1741, file: !1742, line: 444, baseType: !1753, size: 8, offset: 400)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1741, file: !1742, line: 445, baseType: !1753, size: 8, offset: 408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1741, file: !1742, line: 446, baseType: !1753, size: 8, offset: 416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1741, file: !1742, line: 447, baseType: !1753, size: 8, offset: 424)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1741, file: !1742, line: 448, baseType: !1753, size: 8, offset: 432)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1741, file: !1742, line: 449, baseType: !1753, size: 8, offset: 440)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1741, file: !1742, line: 450, baseType: !1753, size: 8, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1741, file: !1742, line: 451, baseType: !1753, size: 8, offset: 456)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1741, file: !1742, line: 452, baseType: !1753, size: 8, offset: 464)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1741, file: !1742, line: 453, baseType: !1753, size: 8, offset: 472)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1741, file: !1742, line: 454, baseType: !1753, size: 8, offset: 480)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1741, file: !1742, line: 455, baseType: !1753, size: 8, offset: 488)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1741, file: !1742, line: 456, baseType: !1753, size: 8, offset: 496)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1741, file: !1742, line: 457, baseType: !1753, size: 8, offset: 504)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1741, file: !1742, line: 458, baseType: !1753, size: 8, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1741, file: !1742, line: 459, baseType: !1753, size: 8, offset: 520)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1741, file: !1742, line: 460, baseType: !1753, size: 8, offset: 528)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1741, file: !1742, line: 461, baseType: !1753, size: 8, offset: 536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1741, file: !1742, line: 462, baseType: !1753, size: 8, offset: 544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1741, file: !1742, line: 463, baseType: !1753, size: 8, offset: 552)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1741, file: !1742, line: 464, baseType: !1753, size: 8, offset: 560)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1741, file: !1742, line: 465, baseType: !1753, size: 8, offset: 568)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1741, file: !1742, line: 466, baseType: !1753, size: 8, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1741, file: !1742, line: 467, baseType: !1753, size: 8, offset: 584)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1741, file: !1742, line: 468, baseType: !1753, size: 8, offset: 592)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1741, file: !1742, line: 469, baseType: !1753, size: 8, offset: 600)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1741, file: !1742, line: 470, baseType: !1753, size: 8, offset: 608)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1741, file: !1742, line: 471, baseType: !1753, size: 8, offset: 616)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1741, file: !1742, line: 472, baseType: !1753, size: 8, offset: 624)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1741, file: !1742, line: 473, baseType: !1753, size: 8, offset: 632)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1741, file: !1742, line: 474, baseType: !1753, size: 8, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1741, file: !1742, line: 475, baseType: !1753, size: 8, offset: 648)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1741, file: !1742, line: 476, baseType: !1753, size: 8, offset: 656)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1741, file: !1742, line: 477, baseType: !1753, size: 8, offset: 664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1741, file: !1742, line: 478, baseType: !1753, size: 8, offset: 672)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1741, file: !1742, line: 479, baseType: !1753, size: 8, offset: 680)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1741, file: !1742, line: 480, baseType: !1753, size: 8, offset: 688)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1741, file: !1742, line: 481, baseType: !1753, size: 8, offset: 696)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1741, file: !1742, line: 482, baseType: !1753, size: 8, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1741, file: !1742, line: 483, baseType: !1753, size: 8, offset: 712)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1741, file: !1742, line: 484, baseType: !1753, size: 8, offset: 720)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1741, file: !1742, line: 485, baseType: !1753, size: 8, offset: 728)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1741, file: !1742, line: 486, baseType: !1753, size: 8, offset: 736)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1741, file: !1742, line: 487, baseType: !1753, size: 8, offset: 744)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1741, file: !1742, line: 488, baseType: !1753, size: 8, offset: 752)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1741, file: !1742, line: 489, baseType: !1753, size: 8, offset: 760)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1741, file: !1742, line: 490, baseType: !1753, size: 8, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1741, file: !1742, line: 491, baseType: !1753, size: 8, offset: 776)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1741, file: !1742, line: 492, baseType: !1753, size: 8, offset: 784)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1741, file: !1742, line: 493, baseType: !1753, size: 8, offset: 792)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1741, file: !1742, line: 494, baseType: !1753, size: 8, offset: 800)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1741, file: !1742, line: 495, baseType: !1753, size: 8, offset: 808)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1741, file: !1742, line: 496, baseType: !1753, size: 8, offset: 816)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1741, file: !1742, line: 497, baseType: !1753, size: 8, offset: 824)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1741, file: !1742, line: 498, baseType: !1753, size: 8, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1741, file: !1742, line: 499, baseType: !1753, size: 8, offset: 840)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1741, file: !1742, line: 500, baseType: !1753, size: 8, offset: 848)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1741, file: !1742, line: 501, baseType: !1753, size: 8, offset: 856)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1741, file: !1742, line: 502, baseType: !1753, size: 8, offset: 864)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1741, file: !1742, line: 503, baseType: !1753, size: 8, offset: 872)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1741, file: !1742, line: 504, baseType: !1753, size: 8, offset: 880)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1741, file: !1742, line: 505, baseType: !1753, size: 8, offset: 888)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1741, file: !1742, line: 506, baseType: !1753, size: 8, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1741, file: !1742, line: 507, baseType: !1753, size: 8, offset: 904)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1741, file: !1742, line: 508, baseType: !1753, size: 8, offset: 912)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1741, file: !1742, line: 509, baseType: !1753, size: 8, offset: 920)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1741, file: !1742, line: 510, baseType: !1753, size: 8, offset: 928)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1741, file: !1742, line: 511, baseType: !1753, size: 8, offset: 936)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1741, file: !1742, line: 512, baseType: !1753, size: 8, offset: 944)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1741, file: !1742, line: 513, baseType: !1753, size: 8, offset: 952)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1741, file: !1742, line: 514, baseType: !1753, size: 8, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1741, file: !1742, line: 515, baseType: !1753, size: 8, offset: 968)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1741, file: !1742, line: 516, baseType: !1753, size: 8, offset: 976)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1741, file: !1742, line: 517, baseType: !1753, size: 8, offset: 984)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1741, file: !1742, line: 518, baseType: !1753, size: 8, offset: 992)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1741, file: !1742, line: 519, baseType: !1753, size: 8, offset: 1000)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1741, file: !1742, line: 520, baseType: !1753, size: 8, offset: 1008)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1741, file: !1742, line: 521, baseType: !1753, size: 8, offset: 1016)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1741, file: !1742, line: 522, baseType: !1753, size: 8, offset: 1024)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1741, file: !1742, line: 523, baseType: !1753, size: 8, offset: 1032)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1741, file: !1742, line: 524, baseType: !1753, size: 8, offset: 1040)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1741, file: !1742, line: 525, baseType: !1753, size: 8, offset: 1048)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1741, file: !1742, line: 526, baseType: !1753, size: 8, offset: 1056)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1741, file: !1742, line: 527, baseType: !1753, size: 8, offset: 1064)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1741, file: !1742, line: 528, baseType: !1753, size: 8, offset: 1072)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1741, file: !1742, line: 529, baseType: !1753, size: 8, offset: 1080)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1741, file: !1742, line: 530, baseType: !1753, size: 8, offset: 1088)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1741, file: !1742, line: 531, baseType: !1753, size: 8, offset: 1096)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1741, file: !1742, line: 532, baseType: !1753, size: 8, offset: 1104)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1741, file: !1742, line: 533, baseType: !1753, size: 8, offset: 1112)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1741, file: !1742, line: 534, baseType: !1753, size: 8, offset: 1120)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1741, file: !1742, line: 535, baseType: !1753, size: 8, offset: 1128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1741, file: !1742, line: 536, baseType: !1753, size: 8, offset: 1136)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1741, file: !1742, line: 537, baseType: !1753, size: 8, offset: 1144)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1741, file: !1742, line: 538, baseType: !1753, size: 8, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1741, file: !1742, line: 539, baseType: !1753, size: 8, offset: 1160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1741, file: !1742, line: 540, baseType: !1753, size: 8, offset: 1168)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1741, file: !1742, line: 541, baseType: !1753, size: 8, offset: 1176)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1741, file: !1742, line: 542, baseType: !1753, size: 8, offset: 1184)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1741, file: !1742, line: 543, baseType: !1753, size: 8, offset: 1192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1741, file: !1742, line: 544, baseType: !1753, size: 8, offset: 1200)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1741, file: !1742, line: 545, baseType: !1753, size: 8, offset: 1208)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1741, file: !1742, line: 546, baseType: !1753, size: 8, offset: 1216)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1741, file: !1742, line: 547, baseType: !1753, size: 8, offset: 1224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1741, file: !1742, line: 548, baseType: !1753, size: 8, offset: 1232)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1741, file: !1742, line: 549, baseType: !1753, size: 8, offset: 1240)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1741, file: !1742, line: 550, baseType: !1753, size: 8, offset: 1248)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1741, file: !1742, line: 551, baseType: !1753, size: 8, offset: 1256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1741, file: !1742, line: 552, baseType: !1753, size: 8, offset: 1264)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1741, file: !1742, line: 553, baseType: !1753, size: 8, offset: 1272)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1741, file: !1742, line: 554, baseType: !1753, size: 8, offset: 1280)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1741, file: !1742, line: 555, baseType: !1753, size: 8, offset: 1288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1741, file: !1742, line: 556, baseType: !1753, size: 8, offset: 1296)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1741, file: !1742, line: 557, baseType: !1753, size: 8, offset: 1304)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1741, file: !1742, line: 558, baseType: !1753, size: 8, offset: 1312)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1741, file: !1742, line: 559, baseType: !1753, size: 8, offset: 1320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1741, file: !1742, line: 560, baseType: !1753, size: 8, offset: 1328)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1741, file: !1742, line: 561, baseType: !1753, size: 8, offset: 1336)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1741, file: !1742, line: 562, baseType: !1753, size: 8, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1741, file: !1742, line: 563, baseType: !1753, size: 8, offset: 1352)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1741, file: !1742, line: 564, baseType: !1753, size: 8, offset: 1360)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1741, file: !1742, line: 565, baseType: !1753, size: 8, offset: 1368)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1741, file: !1742, line: 566, baseType: !1753, size: 8, offset: 1376)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1741, file: !1742, line: 567, baseType: !1753, size: 8, offset: 1384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1741, file: !1742, line: 568, baseType: !1753, size: 8, offset: 1392)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1741, file: !1742, line: 569, baseType: !1753, size: 8, offset: 1400)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1741, file: !1742, line: 570, baseType: !1753, size: 8, offset: 1408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1741, file: !1742, line: 571, baseType: !1753, size: 8, offset: 1416)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1741, file: !1742, line: 572, baseType: !1753, size: 8, offset: 1424)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1741, file: !1742, line: 573, baseType: !1753, size: 8, offset: 1432)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1741, file: !1742, line: 574, baseType: !1753, size: 8, offset: 1440)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1066, file: !203, line: 3405, baseType: !1909, size: 384)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !203, line: 3352, size: 384, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1909, file: !203, line: 3353, baseType: !1102, size: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1909, file: !203, line: 3356, baseType: !1913, size: 192, offset: 192)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1742, line: 578, size: 192, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1913, file: !1742, line: 580, baseType: !758, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1913, file: !1742, line: 581, baseType: !758, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1913, file: !1742, line: 582, baseType: !758, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1913, file: !1742, line: 583, baseType: !758, size: 32, offset: 96)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1913, file: !1742, line: 584, baseType: !757, size: 8, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1913, file: !1742, line: 585, baseType: !757, size: 8, offset: 136)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1913, file: !1742, line: 586, baseType: !757, size: 8, offset: 144)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1913, file: !1742, line: 587, baseType: !757, size: 8, offset: 152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1913, file: !1742, line: 588, baseType: !757, size: 8, offset: 160)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1913, file: !1742, line: 589, baseType: !757, size: 8, offset: 168)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1913, file: !1742, line: 590, baseType: !757, size: 8, offset: 176)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1030, file: !613, line: 178, baseType: !1322, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1030, file: !613, line: 179, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !613, line: 150, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !613, line: 142, size: 320, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1930, file: !613, line: 144, baseType: !1064, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1930, file: !613, line: 145, baseType: !1010, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1930, file: !613, line: 146, baseType: !1010, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1930, file: !613, line: 147, baseType: !1576, size: 32, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1930, file: !613, line: 148, baseType: !7, size: 32, offset: 224)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1930, file: !613, line: 149, baseType: !757, size: 8, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1030, file: !613, line: 180, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !613, line: 162, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !613, line: 159, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1941, file: !613, line: 160, baseType: !1064, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1941, file: !613, line: 161, baseType: !945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1030, file: !613, line: 181, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !613, line: 181, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1025, file: !613, line: 317, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 64, elements: !1044)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1025, file: !613, line: 318, baseType: !1951, size: 320)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !613, line: 188, size: 320, elements: !1952)
!1952 = !{!1953, !1955, !2010}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1951, file: !613, line: 190, baseType: !1954, size: 192)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 192, elements: !1135)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1951, file: !613, line: 193, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !613, line: 206, size: 320, elements: !1958)
!1958 = !{!1959, !1995, !1996, !1997, !2009}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1957, file: !613, line: 208, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !914, line: 62, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1963, line: 538, size: 256, elements: !1964)
!1963 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1964 = !{!1965, !1969, !1975, !1986}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1962, file: !1963, line: 539, baseType: !1966, size: 32)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1963, line: 482, size: 32, elements: !1967)
!1967 = !{!1968}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1963, line: 484, baseType: !7, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1962, file: !1963, line: 540, baseType: !1970, size: 192)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1963, line: 488, size: 192, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1970, file: !1963, line: 489, baseType: !1966, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !1963, line: 492, baseType: !763, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1970, file: !1963, line: 496, baseType: !1064, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1962, file: !1963, line: 541, baseType: !1976, size: 256)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1963, line: 504, size: 256, elements: !1977)
!1977 = !{!1978, !1979, !1984, !1985}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1976, file: !1963, line: 505, baseType: !1966, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1976, file: !1963, line: 509, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1963, line: 501, baseType: !1981)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1439}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1976, file: !1963, line: 510, baseType: !1439, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1976, file: !1963, line: 513, baseType: !1960, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1962, file: !1963, line: 542, baseType: !1987, size: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1963, line: 530, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1987, file: !1963, line: 531, baseType: !1966, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1987, file: !1963, line: 534, baseType: !1991, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1963, line: 525, baseType: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!757, !1064, !763, !767, !767}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1957, file: !613, line: 211, baseType: !7, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1957, file: !613, line: 214, baseType: !945, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1957, file: !613, line: 224, baseType: !1998, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !613, line: 202, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !613, line: 202, size: 128, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2000, file: !613, line: 202, baseType: !2003, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !613, line: 200, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !613, line: 200, size: 128, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2004, file: !613, line: 200, baseType: !7, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2004, file: !613, line: 200, baseType: !7, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2004, file: !613, line: 200, baseType: !1043, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1957, file: !613, line: 234, baseType: !1998, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1951, file: !613, line: 197, baseType: !945, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1025, file: !613, line: 319, baseType: !1124, size: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1025, file: !613, line: 320, baseType: !1143, size: 192)
!2013 = !DIGlobalVariableExpression(var: !2014, expr: !DIExpression())
!2014 = distinct !DIGlobalVariable(name: "hard_regno_nregs", scope: !2, file: !3, line: 209, type: !2015, isLocal: false, isDefinition: true)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 36888, elements: !2016)
!2016 = !{!798, !790}
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(name: "saved_fixed_regs", scope: !2, file: !3, line: 352, type: !897, isLocal: true, isDefinition: true)
!2019 = !DIGlobalVariableExpression(var: !2020, expr: !DIExpression())
!2020 = distinct !DIGlobalVariable(name: "saved_call_used_regs", scope: !2, file: !3, line: 353, type: !897, isLocal: true, isDefinition: true)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "saved_reg_names", scope: !2, file: !3, line: 357, type: !796, isLocal: true, isDefinition: true)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(name: "reg_pref", scope: !2, file: !3, line: 905, type: !777, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "reg_info_size", scope: !2, file: !3, line: 908, type: !758, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "subregs_of_mode", scope: !2, file: !3, line: 1249, type: !1428, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "int_reg_class_contents", scope: !2, file: !3, line: 151, type: !2031, isLocal: true, isDefinition: true)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 1728, elements: !2033)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2033 = !{!774, !844}
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "initial_fixed_regs", scope: !2, file: !3, line: 74, type: !2036, isLocal: true, isDefinition: true)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 424, elements: !797)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(name: "initial_call_used_regs", scope: !2, file: !3, line: 87, type: !2036, isLocal: true, isDefinition: true)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(name: "persistent_obstack", scope: !2, file: !3, line: 131, type: !935, isLocal: true, isDefinition: true)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "no_global_reg_vars", scope: !2, file: !3, line: 206, type: !758, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2044 = !{i32 2, !"Dwarf Version", i32 4}
!2045 = !{i32 2, !"Debug Info Version", i32 3}
!2046 = !{i32 1, !"wchar_size", i32 4}
!2047 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2048 = distinct !DISubprogram(name: "vprintf", scope: !2049, file: !2049, line: 39, type: !2050, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2049 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!758, !2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !763)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2054, file: !3, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2054, file: !3, baseType: !7, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2054, file: !3, baseType: !762, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2054, file: !3, baseType: !762, size: 64, offset: 128)
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2048, file: !2049, line: 39, type: !2052)
!2062 = !DILocalVariable(name: "__arg", arg: 2, scope: !2048, file: !2049, line: 39, type: !2053)
!2063 = !DILocation(line: 0, scope: !2048)
!2064 = !DILocation(line: 41, column: 20, scope: !2048)
!2065 = !DILocation(line: 41, column: 10, scope: !2048)
!2066 = !DILocation(line: 41, column: 3, scope: !2048)
!2067 = distinct !DISubprogram(name: "getchar", scope: !2049, file: !2049, line: 47, type: !2068, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!758}
!2070 = !{}
!2071 = !DILocation(line: 49, column: 16, scope: !2067)
!2072 = !DILocation(line: 49, column: 10, scope: !2067)
!2073 = !DILocation(line: 49, column: 3, scope: !2067)
!2074 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2049, file: !2049, line: 56, type: !2075, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!758, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2079, line: 7, baseType: !2080)
!2079 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2081, line: 49, size: 1728, elements: !2082)
!2081 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2098, !2100, !2101, !2102, !2105, !2106, !2107, !2108, !2111, !2113, !2116, !2119, !2120, !2121, !2122, !2123}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2080, file: !2081, line: 51, baseType: !758, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2080, file: !2081, line: 54, baseType: !760, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2080, file: !2081, line: 55, baseType: !760, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2080, file: !2081, line: 56, baseType: !760, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2080, file: !2081, line: 57, baseType: !760, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2080, file: !2081, line: 58, baseType: !760, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2080, file: !2081, line: 59, baseType: !760, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2080, file: !2081, line: 60, baseType: !760, size: 64, offset: 448)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2080, file: !2081, line: 61, baseType: !760, size: 64, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2080, file: !2081, line: 64, baseType: !760, size: 64, offset: 576)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2080, file: !2081, line: 65, baseType: !760, size: 64, offset: 640)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2080, file: !2081, line: 66, baseType: !760, size: 64, offset: 704)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2080, file: !2081, line: 68, baseType: !2096, size: 64, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2081, line: 36, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2080, file: !2081, line: 70, baseType: !2099, size: 64, offset: 832)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2080, file: !2081, line: 72, baseType: !758, size: 32, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2080, file: !2081, line: 73, baseType: !758, size: 32, offset: 928)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2080, file: !2081, line: 74, baseType: !2103, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2104, line: 152, baseType: !945)
!2104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2080, file: !2081, line: 77, baseType: !772, size: 16, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2080, file: !2081, line: 78, baseType: !1753, size: 8, offset: 1040)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2080, file: !2081, line: 79, baseType: !1159, size: 8, offset: 1048)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2080, file: !2081, line: 81, baseType: !2109, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2081, line: 43, baseType: null)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2080, file: !2081, line: 89, baseType: !2112, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2104, line: 153, baseType: !945)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2080, file: !2081, line: 91, baseType: !2114, size: 64, offset: 1216)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2081, line: 37, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2080, file: !2081, line: 92, baseType: !2117, size: 64, offset: 1280)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2081, line: 38, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2080, file: !2081, line: 93, baseType: !2099, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2080, file: !2081, line: 94, baseType: !762, size: 64, offset: 1408)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2080, file: !2081, line: 95, baseType: !883, size: 64, offset: 1472)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2080, file: !2081, line: 96, baseType: !758, size: 32, offset: 1536)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2080, file: !2081, line: 98, baseType: !2124, size: 160, offset: 1568)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 160, elements: !2125)
!2125 = !{!2126}
!2126 = !DISubrange(count: 20)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__fp", arg: 1, scope: !2074, file: !2049, line: 56, type: !2077)
!2129 = !DILocation(line: 0, scope: !2074)
!2130 = !DILocation(line: 58, column: 10, scope: !2074)
!2131 = !DILocation(line: 58, column: 3, scope: !2074)
!2132 = distinct !DISubprogram(name: "getc_unlocked", scope: !2049, file: !2049, line: 66, type: !2075, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "__fp", arg: 1, scope: !2132, file: !2049, line: 66, type: !2077)
!2135 = !DILocation(line: 0, scope: !2132)
!2136 = !DILocation(line: 68, column: 10, scope: !2132)
!2137 = !DILocation(line: 68, column: 3, scope: !2132)
!2138 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2049, file: !2049, line: 73, type: !2068, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!2139 = !DILocation(line: 75, column: 10, scope: !2138)
!2140 = !DILocation(line: 75, column: 3, scope: !2138)
!2141 = distinct !DISubprogram(name: "putchar", scope: !2049, file: !2049, line: 82, type: !2142, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!758, !758}
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__c", arg: 1, scope: !2141, file: !2049, line: 82, type: !758)
!2146 = !DILocation(line: 0, scope: !2141)
!2147 = !DILocation(line: 84, column: 21, scope: !2141)
!2148 = !DILocation(line: 84, column: 10, scope: !2141)
!2149 = !DILocation(line: 84, column: 3, scope: !2141)
!2150 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2049, file: !2049, line: 91, type: !2151, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!758, !758, !2077}
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "__c", arg: 1, scope: !2150, file: !2049, line: 91, type: !758)
!2155 = !DILocalVariable(name: "__stream", arg: 2, scope: !2150, file: !2049, line: 91, type: !2077)
!2156 = !DILocation(line: 0, scope: !2150)
!2157 = !DILocation(line: 93, column: 10, scope: !2150)
!2158 = !DILocation(line: 93, column: 3, scope: !2150)
!2159 = distinct !DISubprogram(name: "putc_unlocked", scope: !2049, file: !2049, line: 101, type: !2151, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2049, line: 101, type: !758)
!2162 = !DILocalVariable(name: "__stream", arg: 2, scope: !2159, file: !2049, line: 101, type: !2077)
!2163 = !DILocation(line: 0, scope: !2159)
!2164 = !DILocation(line: 103, column: 10, scope: !2159)
!2165 = !DILocation(line: 103, column: 3, scope: !2159)
!2166 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2049, file: !2049, line: 108, type: !2142, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2167 = !{!2168}
!2168 = !DILocalVariable(name: "__c", arg: 1, scope: !2166, file: !2049, line: 108, type: !758)
!2169 = !DILocation(line: 0, scope: !2166)
!2170 = !DILocation(line: 110, column: 10, scope: !2166)
!2171 = !DILocation(line: 110, column: 3, scope: !2166)
!2172 = distinct !DISubprogram(name: "getline", scope: !2049, file: !2049, line: 118, type: !2173, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2177)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2175, !759, !2176, !2077}
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2104, line: 193, baseType: !945)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!2177 = !{!2178, !2179, !2180}
!2178 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2172, file: !2049, line: 118, type: !759)
!2179 = !DILocalVariable(name: "__n", arg: 2, scope: !2172, file: !2049, line: 118, type: !2176)
!2180 = !DILocalVariable(name: "__stream", arg: 3, scope: !2172, file: !2049, line: 118, type: !2077)
!2181 = !DILocation(line: 0, scope: !2172)
!2182 = !DILocation(line: 120, column: 10, scope: !2172)
!2183 = !DILocation(line: 120, column: 3, scope: !2172)
!2184 = distinct !DISubprogram(name: "feof_unlocked", scope: !2049, file: !2049, line: 128, type: !2075, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2185 = !{!2186}
!2186 = !DILocalVariable(name: "__stream", arg: 1, scope: !2184, file: !2049, line: 128, type: !2077)
!2187 = !DILocation(line: 0, scope: !2184)
!2188 = !DILocation(line: 130, column: 10, scope: !2184)
!2189 = !DILocation(line: 130, column: 3, scope: !2184)
!2190 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2049, file: !2049, line: 135, type: !2075, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "__stream", arg: 1, scope: !2190, file: !2049, line: 135, type: !2077)
!2193 = !DILocation(line: 0, scope: !2190)
!2194 = !DILocation(line: 137, column: 10, scope: !2190)
!2195 = !DILocation(line: 137, column: 3, scope: !2190)
!2196 = distinct !DISubprogram(name: "tolower", scope: !2197, file: !2197, line: 207, type: !2142, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2197 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2198 = !{!2199}
!2199 = !DILocalVariable(name: "__c", arg: 1, scope: !2196, file: !2197, line: 207, type: !758)
!2200 = !DILocation(line: 0, scope: !2196)
!2201 = !DILocation(line: 209, column: 22, scope: !2196)
!2202 = !DILocation(line: 209, column: 39, scope: !2196)
!2203 = !DILocation(line: 209, column: 38, scope: !2196)
!2204 = !DILocation(line: 209, column: 37, scope: !2196)
!2205 = !DILocation(line: 209, column: 10, scope: !2196)
!2206 = !DILocation(line: 209, column: 3, scope: !2196)
!2207 = distinct !DISubprogram(name: "toupper", scope: !2197, file: !2197, line: 213, type: !2142, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "__c", arg: 1, scope: !2207, file: !2197, line: 213, type: !758)
!2210 = !DILocation(line: 0, scope: !2207)
!2211 = !DILocation(line: 215, column: 22, scope: !2207)
!2212 = !DILocation(line: 215, column: 39, scope: !2207)
!2213 = !DILocation(line: 215, column: 38, scope: !2207)
!2214 = !DILocation(line: 215, column: 37, scope: !2207)
!2215 = !DILocation(line: 215, column: 10, scope: !2207)
!2216 = !DILocation(line: 215, column: 3, scope: !2207)
!2217 = distinct !DISubprogram(name: "atoi", scope: !2218, file: !2218, line: 361, type: !2219, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2218 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!758, !763}
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2217, file: !2218, line: 361, type: !763)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 363, column: 16, scope: !2217)
!2225 = !DILocation(line: 363, column: 10, scope: !2217)
!2226 = !DILocation(line: 363, column: 3, scope: !2217)
!2227 = distinct !DISubprogram(name: "atol", scope: !2218, file: !2218, line: 366, type: !2228, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!945, !763}
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2227, file: !2218, line: 366, type: !763)
!2232 = !DILocation(line: 0, scope: !2227)
!2233 = !DILocation(line: 368, column: 10, scope: !2227)
!2234 = !DILocation(line: 368, column: 3, scope: !2227)
!2235 = distinct !DISubprogram(name: "atoll", scope: !2218, file: !2218, line: 373, type: !2236, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!2238, !763}
!2238 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2235, file: !2218, line: 373, type: !763)
!2241 = !DILocation(line: 0, scope: !2235)
!2242 = !DILocation(line: 375, column: 10, scope: !2235)
!2243 = !DILocation(line: 375, column: 3, scope: !2235)
!2244 = distinct !DISubprogram(name: "bsearch", scope: !2245, file: !2245, line: 20, type: !2246, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!762, !1439, !1439, !883, !883, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2218, line: 808, baseType: !1443)
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2250 = !DILocalVariable(name: "__key", arg: 1, scope: !2244, file: !2245, line: 20, type: !1439)
!2251 = !DILocalVariable(name: "__base", arg: 2, scope: !2244, file: !2245, line: 20, type: !1439)
!2252 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2244, file: !2245, line: 20, type: !883)
!2253 = !DILocalVariable(name: "__size", arg: 4, scope: !2244, file: !2245, line: 20, type: !883)
!2254 = !DILocalVariable(name: "__compar", arg: 5, scope: !2244, file: !2245, line: 21, type: !2248)
!2255 = !DILocalVariable(name: "__l", scope: !2244, file: !2245, line: 23, type: !883)
!2256 = !DILocalVariable(name: "__u", scope: !2244, file: !2245, line: 23, type: !883)
!2257 = !DILocalVariable(name: "__idx", scope: !2244, file: !2245, line: 23, type: !883)
!2258 = !DILocalVariable(name: "__p", scope: !2244, file: !2245, line: 24, type: !1439)
!2259 = !DILocalVariable(name: "__comparison", scope: !2244, file: !2245, line: 25, type: !758)
!2260 = !DILocation(line: 0, scope: !2244)
!2261 = !DILocation(line: 29, column: 3, scope: !2244)
!2262 = !DILocation(line: 27, column: 7, scope: !2244)
!2263 = !DILocation(line: 29, column: 14, scope: !2244)
!2264 = !DILocation(line: 31, column: 20, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2244, file: !2245, line: 30, column: 5)
!2266 = !DILocation(line: 31, column: 27, scope: !2265)
!2267 = !DILocation(line: 32, column: 56, scope: !2265)
!2268 = !DILocation(line: 32, column: 47, scope: !2265)
!2269 = !DILocation(line: 33, column: 22, scope: !2265)
!2270 = !DILocation(line: 34, column: 24, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !2245, line: 34, column: 11)
!2272 = !DILocation(line: 34, column: 11, scope: !2265)
!2273 = !DILocation(line: 36, column: 29, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !2245, line: 36, column: 16)
!2275 = !DILocation(line: 36, column: 16, scope: !2271)
!2276 = !DILocation(line: 37, column: 14, scope: !2274)
!2277 = distinct !{!2277, !2261, !2278}
!2278 = !DILocation(line: 40, column: 5, scope: !2244)
!2279 = !DILocation(line: 43, column: 1, scope: !2244)
!2280 = distinct !DISubprogram(name: "atof", scope: !2281, file: !2281, line: 25, type: !2282, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !763}
!2284 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2280, file: !2281, line: 25, type: !763)
!2287 = !DILocation(line: 0, scope: !2280)
!2288 = !DILocation(line: 27, column: 10, scope: !2280)
!2289 = !DILocation(line: 27, column: 3, scope: !2280)
!2290 = distinct !DISubprogram(name: "strtoimax", scope: !2291, file: !2291, line: 324, type: !2292, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2291 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2294, !2052, !2297, !758}
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2295, line: 101, baseType: !2296)
!2295 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2104, line: 72, baseType: !945)
!2297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !759)
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "nptr", arg: 1, scope: !2290, file: !2291, line: 324, type: !2052)
!2300 = !DILocalVariable(name: "endptr", arg: 2, scope: !2290, file: !2291, line: 324, type: !2297)
!2301 = !DILocalVariable(name: "base", arg: 3, scope: !2290, file: !2291, line: 324, type: !758)
!2302 = !DILocation(line: 0, scope: !2290)
!2303 = !DILocation(line: 327, column: 10, scope: !2290)
!2304 = !DILocation(line: 327, column: 3, scope: !2290)
!2305 = distinct !DISubprogram(name: "strtoumax", scope: !2291, file: !2291, line: 336, type: !2306, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!2308, !2052, !2297, !758}
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2295, line: 102, baseType: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2104, line: 73, baseType: !767)
!2310 = !{!2311, !2312, !2313}
!2311 = !DILocalVariable(name: "nptr", arg: 1, scope: !2305, file: !2291, line: 336, type: !2052)
!2312 = !DILocalVariable(name: "endptr", arg: 2, scope: !2305, file: !2291, line: 336, type: !2297)
!2313 = !DILocalVariable(name: "base", arg: 3, scope: !2305, file: !2291, line: 336, type: !758)
!2314 = !DILocation(line: 0, scope: !2305)
!2315 = !DILocation(line: 339, column: 10, scope: !2305)
!2316 = !DILocation(line: 339, column: 3, scope: !2305)
!2317 = distinct !DISubprogram(name: "wcstoimax", scope: !2291, file: !2291, line: 348, type: !2318, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!2294, !2320, !2324, !758}
!2320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2321)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2291, line: 34, baseType: !758)
!2324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2327 = !{!2328, !2329, !2330}
!2328 = !DILocalVariable(name: "nptr", arg: 1, scope: !2317, file: !2291, line: 348, type: !2320)
!2329 = !DILocalVariable(name: "endptr", arg: 2, scope: !2317, file: !2291, line: 348, type: !2324)
!2330 = !DILocalVariable(name: "base", arg: 3, scope: !2317, file: !2291, line: 348, type: !758)
!2331 = !DILocation(line: 0, scope: !2317)
!2332 = !DILocation(line: 351, column: 10, scope: !2317)
!2333 = !DILocation(line: 351, column: 3, scope: !2317)
!2334 = distinct !DISubprogram(name: "wcstoumax", scope: !2291, file: !2291, line: 362, type: !2335, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!2308, !2320, !2324, !758}
!2337 = !{!2338, !2339, !2340}
!2338 = !DILocalVariable(name: "nptr", arg: 1, scope: !2334, file: !2291, line: 362, type: !2320)
!2339 = !DILocalVariable(name: "endptr", arg: 2, scope: !2334, file: !2291, line: 362, type: !2324)
!2340 = !DILocalVariable(name: "base", arg: 3, scope: !2334, file: !2291, line: 362, type: !758)
!2341 = !DILocation(line: 0, scope: !2334)
!2342 = !DILocation(line: 365, column: 10, scope: !2334)
!2343 = !DILocation(line: 365, column: 3, scope: !2334)
!2344 = distinct !DISubprogram(name: "stat", scope: !2345, file: !2345, line: 453, type: !2346, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!758, !763, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2350, line: 46, size: 1152, elements: !2351)
!2350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2351 = !{!2352, !2354, !2356, !2358, !2360, !2362, !2364, !2365, !2366, !2367, !2369, !2371, !2379, !2380, !2381}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2349, file: !2350, line: 48, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2104, line: 145, baseType: !767)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2349, file: !2350, line: 53, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2104, line: 148, baseType: !767)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2349, file: !2350, line: 61, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2104, line: 151, baseType: !767)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2349, file: !2350, line: 62, baseType: !2359, size: 32, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2104, line: 150, baseType: !7)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2349, file: !2350, line: 64, baseType: !2361, size: 32, offset: 224)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2104, line: 146, baseType: !7)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2349, file: !2350, line: 65, baseType: !2363, size: 32, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2104, line: 147, baseType: !7)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2349, file: !2350, line: 67, baseType: !758, size: 32, offset: 288)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2349, file: !2350, line: 69, baseType: !2353, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2349, file: !2350, line: 74, baseType: !2103, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2349, file: !2350, line: 78, baseType: !2368, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2104, line: 174, baseType: !945)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2349, file: !2350, line: 80, baseType: !2370, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2104, line: 179, baseType: !945)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2349, file: !2350, line: 91, baseType: !2372, size: 128, offset: 576)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2373, line: 10, size: 128, elements: !2374)
!2373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2374 = !{!2375, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2372, file: !2373, line: 12, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2104, line: 160, baseType: !945)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2372, file: !2373, line: 16, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2104, line: 196, baseType: !945)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2349, file: !2350, line: 92, baseType: !2372, size: 128, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2349, file: !2350, line: 93, baseType: !2372, size: 128, offset: 832)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2349, file: !2350, line: 106, baseType: !2382, size: 192, offset: 960)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, size: 192, elements: !1135)
!2383 = !{!2384, !2385}
!2384 = !DILocalVariable(name: "__path", arg: 1, scope: !2344, file: !2345, line: 453, type: !763)
!2385 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2344, file: !2345, line: 453, type: !2348)
!2386 = !DILocation(line: 0, scope: !2344)
!2387 = !DILocation(line: 455, column: 10, scope: !2344)
!2388 = !DILocation(line: 455, column: 3, scope: !2344)
!2389 = distinct !DISubprogram(name: "lstat", scope: !2345, file: !2345, line: 460, type: !2346, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "__path", arg: 1, scope: !2389, file: !2345, line: 460, type: !763)
!2392 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2389, file: !2345, line: 460, type: !2348)
!2393 = !DILocation(line: 0, scope: !2389)
!2394 = !DILocation(line: 462, column: 10, scope: !2389)
!2395 = !DILocation(line: 462, column: 3, scope: !2389)
!2396 = distinct !DISubprogram(name: "fstat", scope: !2345, file: !2345, line: 467, type: !2397, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!758, !758, !2348}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "__fd", arg: 1, scope: !2396, file: !2345, line: 467, type: !758)
!2401 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2396, file: !2345, line: 467, type: !2348)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocation(line: 469, column: 10, scope: !2396)
!2404 = !DILocation(line: 469, column: 3, scope: !2396)
!2405 = distinct !DISubprogram(name: "fstatat", scope: !2345, file: !2345, line: 474, type: !2406, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!758, !758, !763, !2348, !758}
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DILocalVariable(name: "__fd", arg: 1, scope: !2405, file: !2345, line: 474, type: !758)
!2410 = !DILocalVariable(name: "__filename", arg: 2, scope: !2405, file: !2345, line: 474, type: !763)
!2411 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2405, file: !2345, line: 474, type: !2348)
!2412 = !DILocalVariable(name: "__flag", arg: 4, scope: !2405, file: !2345, line: 474, type: !758)
!2413 = !DILocation(line: 0, scope: !2405)
!2414 = !DILocation(line: 477, column: 10, scope: !2405)
!2415 = !DILocation(line: 477, column: 3, scope: !2405)
!2416 = distinct !DISubprogram(name: "mknod", scope: !2345, file: !2345, line: 483, type: !2417, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!758, !763, !2359, !2353}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "__path", arg: 1, scope: !2416, file: !2345, line: 483, type: !763)
!2421 = !DILocalVariable(name: "__mode", arg: 2, scope: !2416, file: !2345, line: 483, type: !2359)
!2422 = !DILocalVariable(name: "__dev", arg: 3, scope: !2416, file: !2345, line: 483, type: !2353)
!2423 = !DILocation(line: 0, scope: !2416)
!2424 = !DILocation(line: 485, column: 10, scope: !2416)
!2425 = !DILocation(line: 485, column: 3, scope: !2416)
!2426 = distinct !DISubprogram(name: "mknodat", scope: !2345, file: !2345, line: 491, type: !2427, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!758, !758, !763, !2359, !2353}
!2429 = !{!2430, !2431, !2432, !2433}
!2430 = !DILocalVariable(name: "__fd", arg: 1, scope: !2426, file: !2345, line: 491, type: !758)
!2431 = !DILocalVariable(name: "__path", arg: 2, scope: !2426, file: !2345, line: 491, type: !763)
!2432 = !DILocalVariable(name: "__mode", arg: 3, scope: !2426, file: !2345, line: 491, type: !2359)
!2433 = !DILocalVariable(name: "__dev", arg: 4, scope: !2426, file: !2345, line: 491, type: !2353)
!2434 = !DILocation(line: 0, scope: !2426)
!2435 = !DILocation(line: 494, column: 10, scope: !2426)
!2436 = !DILocation(line: 494, column: 3, scope: !2426)
!2437 = distinct !DISubprogram(name: "stat64", scope: !2345, file: !2345, line: 502, type: !2438, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!758, !763, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2350, line: 119, size: 1152, elements: !2442)
!2442 = !{!2443, !2444, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2456, !2457, !2458, !2459}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2441, file: !2350, line: 121, baseType: !2353, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2441, file: !2350, line: 123, baseType: !2445, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2104, line: 149, baseType: !767)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2441, file: !2350, line: 124, baseType: !2357, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2441, file: !2350, line: 125, baseType: !2359, size: 32, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2441, file: !2350, line: 132, baseType: !2361, size: 32, offset: 224)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2441, file: !2350, line: 133, baseType: !2363, size: 32, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2441, file: !2350, line: 135, baseType: !758, size: 32, offset: 288)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2441, file: !2350, line: 136, baseType: !2353, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2441, file: !2350, line: 137, baseType: !2103, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2441, file: !2350, line: 143, baseType: !2368, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2441, file: !2350, line: 144, baseType: !2455, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2104, line: 180, baseType: !945)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2441, file: !2350, line: 152, baseType: !2372, size: 128, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2441, file: !2350, line: 153, baseType: !2372, size: 128, offset: 704)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2441, file: !2350, line: 154, baseType: !2372, size: 128, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2441, file: !2350, line: 164, baseType: !2382, size: 192, offset: 960)
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "__path", arg: 1, scope: !2437, file: !2345, line: 502, type: !763)
!2462 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2437, file: !2345, line: 502, type: !2440)
!2463 = !DILocation(line: 0, scope: !2437)
!2464 = !DILocation(line: 504, column: 10, scope: !2437)
!2465 = !DILocation(line: 504, column: 3, scope: !2437)
!2466 = distinct !DISubprogram(name: "lstat64", scope: !2345, file: !2345, line: 509, type: !2438, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "__path", arg: 1, scope: !2466, file: !2345, line: 509, type: !763)
!2469 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2466, file: !2345, line: 509, type: !2440)
!2470 = !DILocation(line: 0, scope: !2466)
!2471 = !DILocation(line: 511, column: 10, scope: !2466)
!2472 = !DILocation(line: 511, column: 3, scope: !2466)
!2473 = distinct !DISubprogram(name: "fstat64", scope: !2345, file: !2345, line: 516, type: !2474, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!758, !758, !2440}
!2476 = !{!2477, !2478}
!2477 = !DILocalVariable(name: "__fd", arg: 1, scope: !2473, file: !2345, line: 516, type: !758)
!2478 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2473, file: !2345, line: 516, type: !2440)
!2479 = !DILocation(line: 0, scope: !2473)
!2480 = !DILocation(line: 518, column: 10, scope: !2473)
!2481 = !DILocation(line: 518, column: 3, scope: !2473)
!2482 = distinct !DISubprogram(name: "fstatat64", scope: !2345, file: !2345, line: 523, type: !2483, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!758, !758, !763, !2440, !758}
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "__fd", arg: 1, scope: !2482, file: !2345, line: 523, type: !758)
!2487 = !DILocalVariable(name: "__filename", arg: 2, scope: !2482, file: !2345, line: 523, type: !763)
!2488 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2482, file: !2345, line: 523, type: !2440)
!2489 = !DILocalVariable(name: "__flag", arg: 4, scope: !2482, file: !2345, line: 523, type: !758)
!2490 = !DILocation(line: 0, scope: !2482)
!2491 = !DILocation(line: 526, column: 10, scope: !2482)
!2492 = !DILocation(line: 526, column: 3, scope: !2482)
!2493 = distinct !DISubprogram(name: "reg_set_to_hard_reg_set", scope: !3, file: !3, line: 216, type: !2494, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !914, line: 48, baseType: !2498)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DILocalVariable(name: "to", arg: 1, scope: !2493, file: !3, line: 216, type: !2496)
!2502 = !DILocalVariable(name: "from", arg: 2, scope: !2493, file: !3, line: 216, type: !2497)
!2503 = !DILocalVariable(name: "i", scope: !2493, file: !3, line: 218, type: !7)
!2504 = !DILocalVariable(name: "bi", scope: !2493, file: !3, line: 219, type: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !917, line: 218, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !917, line: 203, size: 256, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2506, file: !917, line: 206, baseType: !920, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2506, file: !917, line: 209, baseType: !920, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2506, file: !917, line: 212, baseType: !7, size: 32, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2506, file: !917, line: 217, baseType: !930, size: 64, offset: 192)
!2512 = !DILocation(line: 0, scope: !2493)
!2513 = !DILocation(line: 218, column: 3, scope: !2493)
!2514 = !DILocation(line: 219, column: 3, scope: !2493)
!2515 = !DILocation(line: 221, column: 3, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 221, column: 3)
!2517 = !DILocation(line: 221, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 221, column: 3)
!2519 = !DILocation(line: 223, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 223, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 222, column: 5)
!2522 = !DILocation(line: 223, column: 13, scope: !2520)
!2523 = !DILocation(line: 225, column: 7, scope: !2521)
!2524 = distinct !{!2524, !2515, !2525}
!2525 = !DILocation(line: 226, column: 5, scope: !2516)
!2526 = !DILocation(line: 227, column: 1, scope: !2493)
!2527 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !917, file: !917, line: 224, type: !2528, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2530, !2497, !7, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "bi", arg: 1, scope: !2527, file: !917, line: 224, type: !2530)
!2534 = !DILocalVariable(name: "map", arg: 2, scope: !2527, file: !917, line: 224, type: !2497)
!2535 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2527, file: !917, line: 225, type: !7)
!2536 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2527, file: !917, line: 225, type: !2531)
!2537 = !DILocation(line: 0, scope: !2527)
!2538 = !DILocation(line: 227, column: 19, scope: !2527)
!2539 = !DILocation(line: 227, column: 12, scope: !2527)
!2540 = !DILocation(line: 228, column: 7, scope: !2527)
!2541 = !DILocation(line: 228, column: 12, scope: !2527)
!2542 = !DILocation(line: 0, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !917, line: 233, column: 11)
!2544 = distinct !DILexicalBlock(scope: !2527, file: !917, line: 232, column: 5)
!2545 = !DILocation(line: 231, column: 3, scope: !2527)
!2546 = !DILocation(line: 233, column: 12, scope: !2543)
!2547 = !DILocation(line: 233, column: 11, scope: !2544)
!2548 = !DILocation(line: 235, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !917, line: 234, column: 2)
!2550 = !DILocation(line: 236, column: 4, scope: !2549)
!2551 = !DILocation(line: 239, column: 11, scope: !2544)
!2552 = distinct !{!2552, !2545, !2553}
!2553 = !DILocation(line: 242, column: 5, scope: !2527)
!2554 = !DILocation(line: 245, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2527, file: !917, line: 245, column: 7)
!2556 = !DILocation(line: 245, column: 17, scope: !2555)
!2557 = !DILocation(line: 245, column: 22, scope: !2555)
!2558 = !DILocation(line: 245, column: 7, scope: !2527)
!2559 = !DILocation(line: 246, column: 27, scope: !2555)
!2560 = !DILocation(line: 246, column: 32, scope: !2555)
!2561 = !DILocation(line: 246, column: 5, scope: !2555)
!2562 = !DILocation(line: 249, column: 7, scope: !2527)
!2563 = !DILocation(line: 249, column: 15, scope: !2527)
!2564 = !DILocation(line: 250, column: 14, scope: !2527)
!2565 = !DILocation(line: 251, column: 7, scope: !2527)
!2566 = !DILocation(line: 251, column: 12, scope: !2527)
!2567 = !DILocation(line: 257, column: 16, scope: !2527)
!2568 = !DILocation(line: 257, column: 13, scope: !2527)
!2569 = !DILocation(line: 259, column: 11, scope: !2527)
!2570 = !DILocation(line: 260, column: 1, scope: !2527)
!2571 = distinct !DISubprogram(name: "bmp_iter_set", scope: !917, file: !917, line: 393, type: !2572, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!757, !2530, !2531}
!2574 = !{!2575, !2576, !2577}
!2575 = !DILocalVariable(name: "bi", arg: 1, scope: !2571, file: !917, line: 393, type: !2530)
!2576 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2571, file: !917, line: 393, type: !2531)
!2577 = !DILabel(scope: !2578, name: "next_bit", file: !917, line: 398)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !917, line: 397, column: 5)
!2579 = distinct !DILexicalBlock(scope: !2571, file: !917, line: 396, column: 7)
!2580 = !DILocation(line: 0, scope: !2571)
!2581 = !DILocation(line: 396, column: 11, scope: !2579)
!2582 = !DILocation(line: 396, column: 7, scope: !2579)
!2583 = !DILocation(line: 396, column: 7, scope: !2571)
!2584 = !DILocation(line: 419, column: 15, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !917, line: 418, column: 2)
!2586 = distinct !DILexicalBlock(scope: !2571, file: !917, line: 415, column: 5)
!2587 = !DILocation(line: 399, column: 7, scope: !2578)
!2588 = !DILocation(line: 398, column: 5, scope: !2578)
!2589 = !DILocation(line: 399, column: 20, scope: !2578)
!2590 = !DILocation(line: 399, column: 25, scope: !2578)
!2591 = !DILocation(line: 399, column: 14, scope: !2578)
!2592 = !DILocation(line: 401, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2578, file: !917, line: 400, column: 2)
!2594 = !DILocation(line: 402, column: 12, scope: !2593)
!2595 = distinct !{!2595, !2587, !2596}
!2596 = !DILocation(line: 403, column: 2, scope: !2578)
!2597 = !DILocation(line: 410, column: 15, scope: !2571)
!2598 = !DILocation(line: 410, column: 42, scope: !2571)
!2599 = !DILocation(line: 411, column: 26, scope: !2571)
!2600 = !DILocation(line: 410, column: 11, scope: !2571)
!2601 = !DILocation(line: 412, column: 7, scope: !2571)
!2602 = !DILocation(line: 412, column: 14, scope: !2571)
!2603 = !DILocation(line: 0, scope: !2586)
!2604 = !DILocation(line: 414, column: 3, scope: !2571)
!2605 = !DILocation(line: 417, column: 7, scope: !2586)
!2606 = !DILocation(line: 417, column: 18, scope: !2586)
!2607 = !DILocation(line: 417, column: 26, scope: !2586)
!2608 = !DILocation(line: 419, column: 13, scope: !2585)
!2609 = !DILocation(line: 420, column: 8, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2585, file: !917, line: 420, column: 8)
!2611 = !DILocation(line: 420, column: 8, scope: !2585)
!2612 = !DILocation(line: 422, column: 12, scope: !2585)
!2613 = !DILocation(line: 423, column: 15, scope: !2585)
!2614 = distinct !{!2614, !2605, !2615}
!2615 = !DILocation(line: 424, column: 2, scope: !2586)
!2616 = !DILocation(line: 427, column: 28, scope: !2586)
!2617 = !DILocation(line: 427, column: 16, scope: !2586)
!2618 = !DILocation(line: 428, column: 12, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2586, file: !917, line: 428, column: 11)
!2620 = !DILocation(line: 428, column: 11, scope: !2586)
!2621 = !DILocation(line: 430, column: 27, scope: !2586)
!2622 = !DILocation(line: 430, column: 32, scope: !2586)
!2623 = !DILocation(line: 430, column: 15, scope: !2586)
!2624 = !DILocation(line: 431, column: 19, scope: !2586)
!2625 = distinct !{!2625, !2604, !2626}
!2626 = !DILocation(line: 432, column: 5, scope: !2571)
!2627 = !DILocation(line: 433, column: 1, scope: !2571)
!2628 = distinct !DISubprogram(name: "bmp_iter_next", scope: !917, file: !917, line: 382, type: !2629, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2530, !2531}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "bi", arg: 1, scope: !2628, file: !917, line: 382, type: !2530)
!2633 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2628, file: !917, line: 382, type: !2531)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 384, column: 7, scope: !2628)
!2636 = !DILocation(line: 384, column: 12, scope: !2628)
!2637 = !DILocation(line: 385, column: 11, scope: !2628)
!2638 = !DILocation(line: 386, column: 1, scope: !2628)
!2639 = distinct !DISubprogram(name: "init_reg_sets", scope: !3, file: !3, line: 232, type: !2640, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null}
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "i", scope: !2639, file: !3, line: 234, type: !758)
!2644 = !DILocalVariable(name: "j", scope: !2639, file: !3, line: 234, type: !758)
!2645 = !DILocation(line: 0, scope: !2639)
!2646 = !DILocation(line: 239, column: 8, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 239, column: 3)
!2648 = !DILocation(line: 0, scope: !2647)
!2649 = !DILocation(line: 239, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 239, column: 3)
!2651 = !DILocation(line: 239, column: 3, scope: !2647)
!2652 = !DILocation(line: 241, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 240, column: 5)
!2654 = !DILocation(line: 244, column: 12, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 244, column: 7)
!2656 = !DILocation(line: 244, column: 21, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 244, column: 7)
!2658 = !DILocation(line: 244, column: 7, scope: !2655)
!2659 = !DILocation(line: 245, column: 34, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 245, column: 6)
!2661 = !DILocation(line: 245, column: 6, scope: !2660)
!2662 = !DILocation(line: 246, column: 28, scope: !2660)
!2663 = !DILocation(line: 246, column: 22, scope: !2660)
!2664 = !DILocation(line: 246, column: 6, scope: !2660)
!2665 = !DILocation(line: 245, column: 6, scope: !2657)
!2666 = !DILocation(line: 247, column: 4, scope: !2660)
!2667 = !DILocation(line: 244, column: 47, scope: !2657)
!2668 = !DILocation(line: 244, column: 7, scope: !2657)
!2669 = distinct !{!2669, !2658, !2670}
!2670 = !DILocation(line: 247, column: 4, scope: !2655)
!2671 = !DILocation(line: 239, column: 35, scope: !2650)
!2672 = !DILocation(line: 239, column: 3, scope: !2650)
!2673 = distinct !{!2673, !2651, !2674}
!2674 = !DILocation(line: 248, column: 5, scope: !2647)
!2675 = !DILocation(line: 255, column: 3, scope: !2639)
!2676 = !DILocation(line: 256, column: 3, scope: !2639)
!2677 = !DILocation(line: 257, column: 3, scope: !2639)
!2678 = !DILocation(line: 258, column: 1, scope: !2639)
!2679 = !DILocation(line: 0, scope: !804)
!2680 = !DILocation(line: 268, column: 3, scope: !804)
!2681 = !DILocation(line: 269, column: 8, scope: !818)
!2682 = !DILocation(line: 0, scope: !818)
!2683 = !DILocation(line: 265, column: 8, scope: !804)
!2684 = !DILocation(line: 269, column: 17, scope: !817)
!2685 = !DILocation(line: 269, column: 3, scope: !818)
!2686 = !DILocation(line: 270, column: 9, scope: !816)
!2687 = !DILocation(line: 270, column: 9, scope: !817)
!2688 = !DILocation(line: 271, column: 7, scope: !815)
!2689 = !DILocation(line: 0, scope: !815)
!2690 = !DILocation(line: 271, column: 21, scope: !814)
!2691 = !DILocation(line: 274, column: 9, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !813, file: !3, line: 274, column: 8)
!2693 = !DILocation(line: 274, column: 8, scope: !813)
!2694 = !DILocation(line: 278, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 277, column: 6)
!2696 = !DILocation(line: 0, scope: !813)
!2697 = !DILocation(line: 280, column: 8, scope: !2695)
!2698 = !DILocation(line: 0, scope: !2692)
!2699 = !DILocation(line: 282, column: 18, scope: !813)
!2700 = !DILocation(line: 282, column: 39, scope: !813)
!2701 = !DILocation(line: 282, column: 14, scope: !813)
!2702 = !DILocation(line: 283, column: 27, scope: !813)
!2703 = !DILocation(line: 283, column: 25, scope: !813)
!2704 = !DILocation(line: 271, column: 39, scope: !814)
!2705 = !DILocation(line: 271, column: 7, scope: !814)
!2706 = distinct !{!2706, !2688, !2707}
!2707 = !DILocation(line: 284, column: 2, scope: !815)
!2708 = !DILocation(line: 269, column: 35, scope: !817)
!2709 = !DILocation(line: 269, column: 3, scope: !817)
!2710 = distinct !{!2710, !2685, !2711}
!2711 = !DILocation(line: 284, column: 2, scope: !818)
!2712 = !DILocation(line: 285, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !804, file: !3, line: 285, column: 7)
!2714 = !DILocation(line: 285, column: 20, scope: !2713)
!2715 = !DILocation(line: 285, column: 49, scope: !2713)
!2716 = !DILocation(line: 285, column: 17, scope: !2713)
!2717 = !DILocation(line: 287, column: 22, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 286, column: 5)
!2719 = !DILocation(line: 287, column: 7, scope: !2718)
!2720 = !DILocation(line: 287, column: 20, scope: !2718)
!2721 = !DILocation(line: 288, column: 29, scope: !2718)
!2722 = !DILocation(line: 288, column: 7, scope: !2718)
!2723 = !DILocation(line: 288, column: 27, scope: !2718)
!2724 = !DILocation(line: 289, column: 30, scope: !2718)
!2725 = !DILocation(line: 289, column: 7, scope: !2718)
!2726 = !DILocation(line: 289, column: 28, scope: !2718)
!2727 = !DILocation(line: 290, column: 7, scope: !2718)
!2728 = !DILocation(line: 292, column: 32, scope: !804)
!2729 = !DILocation(line: 293, column: 32, scope: !804)
!2730 = !DILocation(line: 293, column: 3, scope: !804)
!2731 = !DILocation(line: 293, column: 16, scope: !804)
!2732 = !DILocation(line: 295, column: 39, scope: !804)
!2733 = !DILocation(line: 295, column: 3, scope: !804)
!2734 = !DILocation(line: 295, column: 23, scope: !804)
!2735 = !DILocation(line: 297, column: 40, scope: !804)
!2736 = !DILocation(line: 297, column: 3, scope: !804)
!2737 = !DILocation(line: 297, column: 24, scope: !804)
!2738 = !DILocation(line: 299, column: 8, scope: !825)
!2739 = !DILocation(line: 0, scope: !825)
!2740 = !DILocation(line: 299, column: 17, scope: !824)
!2741 = !DILocation(line: 299, column: 3, scope: !825)
!2742 = !DILocation(line: 300, column: 9, scope: !823)
!2743 = !DILocation(line: 300, column: 9, scope: !824)
!2744 = !DILocation(line: 0, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 321, column: 8)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 313, column: 6)
!2747 = distinct !DILexicalBlock(scope: !820, file: !3, line: 306, column: 8)
!2748 = !DILocation(line: 301, column: 7, scope: !822)
!2749 = !DILocation(line: 341, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !823, file: !3, line: 341, column: 7)
!2751 = !DILocation(line: 0, scope: !822)
!2752 = !DILocation(line: 301, column: 21, scope: !821)
!2753 = !DILocation(line: 306, column: 8, scope: !2747)
!2754 = !DILocation(line: 306, column: 29, scope: !2747)
!2755 = !DILocation(line: 306, column: 8, scope: !820)
!2756 = !DILocation(line: 308, column: 8, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 307, column: 6)
!2758 = !DILocation(line: 308, column: 27, scope: !2757)
!2759 = !DILocation(line: 309, column: 8, scope: !2757)
!2760 = !DILocation(line: 309, column: 34, scope: !2757)
!2761 = !DILocation(line: 310, column: 8, scope: !2757)
!2762 = !DILocation(line: 310, column: 35, scope: !2757)
!2763 = !DILocation(line: 311, column: 6, scope: !2757)
!2764 = !DILocation(line: 314, column: 15, scope: !2746)
!2765 = !DILocation(line: 0, scope: !820)
!2766 = !DILocation(line: 316, column: 19, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 316, column: 8)
!2768 = !DILocation(line: 316, column: 13, scope: !2767)
!2769 = !DILocation(line: 0, scope: !2746)
!2770 = !DILocation(line: 0, scope: !2767)
!2771 = !DILocation(line: 317, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 316, column: 8)
!2773 = !DILocation(line: 317, column: 10, scope: !2772)
!2774 = !DILocation(line: 316, column: 8, scope: !2767)
!2775 = !DILocation(line: 318, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 318, column: 7)
!2777 = !DILocation(line: 318, column: 16, scope: !2776)
!2778 = !DILocation(line: 318, column: 19, scope: !2776)
!2779 = !DILocation(line: 318, column: 7, scope: !2772)
!2780 = !DILocation(line: 319, column: 12, scope: !2776)
!2781 = !DILocation(line: 317, column: 32, scope: !2772)
!2782 = !DILocation(line: 316, column: 8, scope: !2772)
!2783 = distinct !{!2783, !2774, !2784}
!2784 = !DILocation(line: 319, column: 12, scope: !2767)
!2785 = !DILocation(line: 321, column: 13, scope: !2745)
!2786 = !DILocation(line: 322, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 321, column: 8)
!2788 = !DILocation(line: 322, column: 10, scope: !2787)
!2789 = !DILocation(line: 321, column: 8, scope: !2745)
!2790 = !DILocation(line: 323, column: 11, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 323, column: 7)
!2792 = !DILocation(line: 323, column: 16, scope: !2791)
!2793 = !DILocation(line: 323, column: 19, scope: !2791)
!2794 = !DILocation(line: 323, column: 7, scope: !2787)
!2795 = !DILocation(line: 324, column: 12, scope: !2791)
!2796 = !DILocation(line: 322, column: 32, scope: !2787)
!2797 = !DILocation(line: 321, column: 8, scope: !2787)
!2798 = distinct !{!2798, !2789, !2799}
!2799 = !DILocation(line: 324, column: 12, scope: !2745)
!2800 = !DILocation(line: 326, column: 8, scope: !2746)
!2801 = !DILocation(line: 327, column: 29, scope: !2746)
!2802 = !DILocation(line: 327, column: 8, scope: !2746)
!2803 = !DILocation(line: 327, column: 27, scope: !2746)
!2804 = !DILocation(line: 329, column: 12, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 329, column: 12)
!2806 = !DILocation(line: 329, column: 12, scope: !2746)
!2807 = !DILocation(line: 330, column: 3, scope: !2805)
!2808 = !DILocation(line: 330, column: 29, scope: !2805)
!2809 = !DILocation(line: 332, column: 3, scope: !2805)
!2810 = !DILocation(line: 332, column: 29, scope: !2805)
!2811 = !DILocation(line: 334, column: 12, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 334, column: 12)
!2813 = !DILocation(line: 334, column: 12, scope: !2746)
!2814 = !DILocation(line: 335, column: 3, scope: !2812)
!2815 = !DILocation(line: 335, column: 30, scope: !2812)
!2816 = !DILocation(line: 337, column: 3, scope: !2812)
!2817 = !DILocation(line: 337, column: 30, scope: !2812)
!2818 = !DILocation(line: 301, column: 39, scope: !821)
!2819 = !DILocation(line: 301, column: 7, scope: !821)
!2820 = distinct !{!2820, !2748, !2821}
!2821 = !DILocation(line: 339, column: 2, scope: !822)
!2822 = !DILocation(line: 0, scope: !2750)
!2823 = !DILocation(line: 341, column: 21, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 341, column: 7)
!2825 = !DILocation(line: 343, column: 4, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 342, column: 2)
!2827 = !DILocation(line: 343, column: 23, scope: !2826)
!2828 = !DILocation(line: 344, column: 4, scope: !2826)
!2829 = !DILocation(line: 344, column: 30, scope: !2826)
!2830 = !DILocation(line: 345, column: 4, scope: !2826)
!2831 = !DILocation(line: 345, column: 31, scope: !2826)
!2832 = !DILocation(line: 341, column: 39, scope: !2824)
!2833 = !DILocation(line: 341, column: 7, scope: !2824)
!2834 = distinct !{!2834, !2749, !2835}
!2835 = !DILocation(line: 346, column: 2, scope: !2750)
!2836 = !DILocation(line: 299, column: 35, scope: !824)
!2837 = !DILocation(line: 299, column: 3, scope: !824)
!2838 = distinct !{!2838, !2741, !2839}
!2839 = !DILocation(line: 346, column: 2, scope: !825)
!2840 = !DILocation(line: 347, column: 1, scope: !804)
!2841 = distinct !DISubprogram(name: "reg_class_subset_p", scope: !3, file: !3, line: 1217, type: !2842, scopeLine: 1218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!758, !134, !134}
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "c1", arg: 1, scope: !2841, file: !3, line: 1217, type: !134)
!2846 = !DILocalVariable(name: "c2", arg: 2, scope: !2841, file: !3, line: 1217, type: !134)
!2847 = !DILocation(line: 0, scope: !2841)
!2848 = !DILocation(line: 1219, column: 14, scope: !2841)
!2849 = !DILocation(line: 1220, column: 10, scope: !2841)
!2850 = !DILocation(line: 1220, column: 4, scope: !2841)
!2851 = !DILocation(line: 1221, column: 30, scope: !2841)
!2852 = !DILocation(line: 1222, column: 8, scope: !2841)
!2853 = !DILocation(line: 1221, column: 7, scope: !2841)
!2854 = !DILocation(line: 1221, column: 4, scope: !2841)
!2855 = !DILocation(line: 1219, column: 3, scope: !2841)
!2856 = distinct !DISubprogram(name: "save_register_info", scope: !3, file: !3, line: 361, type: !2640, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!2857 = !DILocation(line: 367, column: 3, scope: !2856)
!2858 = !DILocation(line: 368, column: 3, scope: !2856)
!2859 = !DILocation(line: 380, column: 3, scope: !2856)
!2860 = !DILocation(line: 381, column: 1, scope: !2856)
!2861 = distinct !DISubprogram(name: "init_reg_modes_target", scope: !3, file: !3, line: 630, type: !2640, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2862)
!2862 = !{!2863, !2864}
!2863 = !DILocalVariable(name: "i", scope: !2861, file: !3, line: 632, type: !758)
!2864 = !DILocalVariable(name: "j", scope: !2861, file: !3, line: 632, type: !758)
!2865 = !DILocation(line: 0, scope: !2861)
!2866 = !DILocation(line: 634, column: 8, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 634, column: 3)
!2868 = !DILocation(line: 0, scope: !2867)
!2869 = !DILocation(line: 634, column: 17, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 634, column: 3)
!2871 = !DILocation(line: 634, column: 3, scope: !2867)
!2872 = !DILocation(line: 0, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 635, column: 5)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 635, column: 5)
!2875 = !DILocation(line: 635, column: 5, scope: !2874)
!2876 = !DILocation(line: 0, scope: !2874)
!2877 = !DILocation(line: 635, column: 19, scope: !2873)
!2878 = !DILocation(line: 636, column: 32, scope: !2873)
!2879 = !DILocation(line: 636, column: 7, scope: !2873)
!2880 = !DILocation(line: 636, column: 30, scope: !2873)
!2881 = !DILocation(line: 635, column: 40, scope: !2873)
!2882 = !DILocation(line: 635, column: 5, scope: !2873)
!2883 = distinct !{!2883, !2875, !2884}
!2884 = !DILocation(line: 636, column: 32, scope: !2874)
!2885 = !DILocation(line: 634, column: 43, scope: !2870)
!2886 = !DILocation(line: 638, column: 3, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 638, column: 3)
!2888 = !DILocation(line: 634, column: 3, scope: !2870)
!2889 = distinct !{!2889, !2871, !2890}
!2890 = !DILocation(line: 636, column: 32, scope: !2867)
!2891 = !DILocation(line: 0, scope: !2887)
!2892 = !DILocation(line: 638, column: 17, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 638, column: 3)
!2894 = !DILocation(line: 640, column: 25, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 639, column: 5)
!2896 = !DILocation(line: 640, column: 7, scope: !2895)
!2897 = !DILocation(line: 640, column: 23, scope: !2895)
!2898 = !DILocation(line: 647, column: 27, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 647, column: 11)
!2900 = !DILocation(line: 647, column: 11, scope: !2895)
!2901 = !DILocation(line: 648, column: 22, scope: !2899)
!2902 = !DILocation(line: 648, column: 20, scope: !2899)
!2903 = !DILocation(line: 648, column: 55, scope: !2899)
!2904 = !DILocation(line: 648, column: 41, scope: !2899)
!2905 = !DILocation(line: 648, column: 18, scope: !2899)
!2906 = !DILocation(line: 648, column: 2, scope: !2899)
!2907 = !DILocation(line: 638, column: 43, scope: !2893)
!2908 = !DILocation(line: 638, column: 3, scope: !2893)
!2909 = distinct !{!2909, !2886, !2910}
!2910 = !DILocation(line: 649, column: 5, scope: !2887)
!2911 = !DILocation(line: 650, column: 1, scope: !2861)
!2912 = distinct !DISubprogram(name: "choose_hard_reg_mode", scope: !3, file: !3, line: 725, type: !2913, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!5, !7, !7, !757}
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921}
!2916 = !DILocalVariable(name: "regno", arg: 1, scope: !2912, file: !3, line: 725, type: !7)
!2917 = !DILocalVariable(name: "nregs", arg: 2, scope: !2912, file: !3, line: 726, type: !7)
!2918 = !DILocalVariable(name: "call_saved", arg: 3, scope: !2912, file: !3, line: 726, type: !757)
!2919 = !DILocalVariable(name: "m", scope: !2912, file: !3, line: 728, type: !7)
!2920 = !DILocalVariable(name: "found_mode", scope: !2912, file: !3, line: 729, type: !5)
!2921 = !DILocalVariable(name: "mode", scope: !2912, file: !3, line: 729, type: !5)
!2922 = !DILocation(line: 0, scope: !2912)
!2923 = !DILocation(line: 0, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 738, column: 9)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 735, column: 3)
!2926 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 735, column: 3)
!2927 = !DILocation(line: 735, column: 8, scope: !2926)
!2928 = !DILocation(line: 729, column: 21, scope: !2912)
!2929 = !DILocation(line: 0, scope: !2926)
!2930 = !DILocation(line: 736, column: 13, scope: !2925)
!2931 = !DILocation(line: 735, column: 3, scope: !2926)
!2932 = !DILocation(line: 738, column: 20, scope: !2924)
!2933 = !DILocation(line: 738, column: 9, scope: !2924)
!2934 = !DILocation(line: 738, column: 50, scope: !2924)
!2935 = !DILocation(line: 739, column: 2, scope: !2924)
!2936 = !DILocation(line: 739, column: 5, scope: !2924)
!2937 = !DILocation(line: 740, column: 2, scope: !2924)
!2938 = !DILocation(line: 737, column: 15, scope: !2925)
!2939 = !DILocation(line: 735, column: 3, scope: !2925)
!2940 = distinct !{!2940, !2931, !2941}
!2941 = !DILocation(line: 741, column: 20, scope: !2926)
!2942 = !DILocation(line: 743, column: 18, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 743, column: 7)
!2944 = !DILocation(line: 743, column: 7, scope: !2912)
!2945 = !DILocation(line: 746, column: 8, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 746, column: 3)
!2947 = !DILocation(line: 0, scope: !2946)
!2948 = !DILocation(line: 747, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 746, column: 3)
!2950 = !DILocation(line: 746, column: 3, scope: !2946)
!2951 = !DILocation(line: 749, column: 20, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 749, column: 9)
!2953 = !DILocation(line: 749, column: 9, scope: !2952)
!2954 = !DILocation(line: 749, column: 50, scope: !2952)
!2955 = !DILocation(line: 750, column: 2, scope: !2952)
!2956 = !DILocation(line: 750, column: 5, scope: !2952)
!2957 = !DILocation(line: 751, column: 2, scope: !2952)
!2958 = !DILocation(line: 748, column: 15, scope: !2949)
!2959 = !DILocation(line: 746, column: 3, scope: !2949)
!2960 = distinct !{!2960, !2950, !2961}
!2961 = !DILocation(line: 752, column: 20, scope: !2946)
!2962 = !DILocation(line: 754, column: 18, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 754, column: 7)
!2964 = !DILocation(line: 754, column: 7, scope: !2912)
!2965 = !DILocation(line: 757, column: 8, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 757, column: 3)
!2967 = !DILocation(line: 0, scope: !2966)
!2968 = !DILocation(line: 758, column: 13, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 757, column: 3)
!2970 = !DILocation(line: 757, column: 3, scope: !2966)
!2971 = !DILocation(line: 760, column: 20, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 760, column: 9)
!2973 = !DILocation(line: 760, column: 9, scope: !2972)
!2974 = !DILocation(line: 760, column: 50, scope: !2972)
!2975 = !DILocation(line: 761, column: 2, scope: !2972)
!2976 = !DILocation(line: 761, column: 5, scope: !2972)
!2977 = !DILocation(line: 762, column: 2, scope: !2972)
!2978 = !DILocation(line: 759, column: 15, scope: !2969)
!2979 = !DILocation(line: 757, column: 3, scope: !2969)
!2980 = distinct !{!2980, !2970, !2981}
!2981 = !DILocation(line: 763, column: 20, scope: !2966)
!2982 = !DILocation(line: 765, column: 18, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 765, column: 7)
!2984 = !DILocation(line: 765, column: 7, scope: !2912)
!2985 = !DILocation(line: 768, column: 8, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 768, column: 3)
!2987 = !DILocation(line: 0, scope: !2986)
!2988 = !DILocation(line: 769, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 768, column: 3)
!2990 = !DILocation(line: 768, column: 3, scope: !2986)
!2991 = !DILocation(line: 771, column: 20, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 771, column: 9)
!2993 = !DILocation(line: 771, column: 9, scope: !2992)
!2994 = !DILocation(line: 771, column: 50, scope: !2992)
!2995 = !DILocation(line: 772, column: 2, scope: !2992)
!2996 = !DILocation(line: 772, column: 5, scope: !2992)
!2997 = !DILocation(line: 773, column: 2, scope: !2992)
!2998 = !DILocation(line: 770, column: 15, scope: !2989)
!2999 = !DILocation(line: 768, column: 3, scope: !2989)
!3000 = distinct !{!3000, !2990, !3001}
!3001 = !DILocation(line: 774, column: 20, scope: !2986)
!3002 = !DILocation(line: 776, column: 18, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 776, column: 7)
!3004 = !DILocation(line: 776, column: 7, scope: !2912)
!3005 = !DILocation(line: 780, column: 3, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 780, column: 3)
!3007 = !DILocation(line: 0, scope: !3006)
!3008 = !DILocation(line: 780, column: 37, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 780, column: 3)
!3010 = !DILocation(line: 783, column: 22, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 783, column: 11)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 781, column: 5)
!3013 = !DILocation(line: 783, column: 11, scope: !3011)
!3014 = !DILocation(line: 783, column: 52, scope: !3011)
!3015 = !DILocation(line: 784, column: 4, scope: !3011)
!3016 = !DILocation(line: 784, column: 7, scope: !3011)
!3017 = !DILocation(line: 785, column: 4, scope: !3011)
!3018 = !DILocation(line: 786, column: 2, scope: !3011)
!3019 = !DILocation(line: 780, column: 73, scope: !3009)
!3020 = !DILocation(line: 780, column: 3, scope: !3009)
!3021 = distinct !{!3021, !3005, !3022}
!3022 = !DILocation(line: 787, column: 5, scope: !3006)
!3023 = !DILocation(line: 791, column: 1, scope: !2912)
!3024 = distinct !DISubprogram(name: "init_regs", scope: !3, file: !3, line: 657, type: !2640, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!3025 = !DILocation(line: 661, column: 3, scope: !3024)
!3026 = !DILocation(line: 662, column: 1, scope: !3024)
!3027 = distinct !DISubprogram(name: "init_reg_sets_1", scope: !3, file: !3, line: 401, type: !2640, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3028 = !{!3029, !3030, !3031, !3032, !3039, !3040, !3047, !3048, !3056}
!3029 = !DILocalVariable(name: "i", scope: !3027, file: !3, line: 403, type: !7)
!3030 = !DILocalVariable(name: "j", scope: !3027, file: !3, line: 403, type: !7)
!3031 = !DILocalVariable(name: "m", scope: !3027, file: !3, line: 404, type: !7)
!3032 = !DILocalVariable(name: "c", scope: !3033, file: !3, line: 437, type: !765)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 436, column: 2)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 435, column: 7)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 435, column: 7)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 434, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 433, column: 3)
!3038 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 433, column: 3)
!3039 = !DILocalVariable(name: "k", scope: !3033, file: !3, line: 438, type: !758)
!3040 = !DILocalVariable(name: "c", scope: !3041, file: !3, line: 460, type: !765)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 459, column: 2)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 458, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 458, column: 7)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 457, column: 5)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 456, column: 3)
!3046 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 456, column: 3)
!3047 = !DILocalVariable(name: "k", scope: !3041, file: !3, line: 461, type: !758)
!3048 = !DILocalVariable(name: "p", scope: !3049, file: !3, line: 493, type: !827)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 490, column: 4)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 488, column: 6)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 487, column: 7)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 487, column: 7)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 483, column: 5)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 482, column: 3)
!3055 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 482, column: 3)
!3056 = !DILocalVariable(name: "ok_regs", scope: !3057, file: !3, line: 586, type: !765)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 585, column: 5)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 584, column: 3)
!3059 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 584, column: 3)
!3060 = !DILocation(line: 406, column: 3, scope: !3027)
!3061 = !DILocation(line: 0, scope: !3027)
!3062 = !DILocation(line: 409, column: 8, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 409, column: 3)
!3064 = !DILocation(line: 0, scope: !3063)
!3065 = !DILocation(line: 409, column: 17, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 409, column: 3)
!3067 = !DILocation(line: 409, column: 3, scope: !3063)
!3068 = !DILocation(line: 410, column: 25, scope: !3066)
!3069 = !DILocation(line: 410, column: 5, scope: !3066)
!3070 = !DILocation(line: 410, column: 45, scope: !3066)
!3071 = !DILocation(line: 409, column: 43, scope: !3066)
!3072 = !DILocation(line: 409, column: 3, scope: !3066)
!3073 = distinct !{!3073, !3067, !3074}
!3074 = !DILocation(line: 410, column: 47, scope: !3063)
!3075 = !DILocation(line: 417, column: 3, scope: !3027)
!3076 = !DILocation(line: 422, column: 3, scope: !3027)
!3077 = !DILocation(line: 423, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 423, column: 3)
!3079 = !DILocation(line: 0, scope: !3078)
!3080 = !DILocation(line: 423, column: 17, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 423, column: 3)
!3082 = !DILocation(line: 423, column: 3, scope: !3078)
!3083 = !DILocation(line: 0, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 425, column: 11)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 424, column: 5)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 424, column: 5)
!3087 = !DILocation(line: 424, column: 5, scope: !3086)
!3088 = !DILocation(line: 0, scope: !3086)
!3089 = !DILocation(line: 424, column: 19, scope: !3085)
!3090 = !DILocation(line: 425, column: 11, scope: !3084)
!3091 = !DILocation(line: 425, column: 11, scope: !3085)
!3092 = !DILocation(line: 426, column: 19, scope: !3084)
!3093 = !DILocation(line: 426, column: 2, scope: !3084)
!3094 = !DILocation(line: 424, column: 45, scope: !3085)
!3095 = !DILocation(line: 424, column: 5, scope: !3085)
!3096 = distinct !{!3096, !3087, !3097}
!3097 = !DILocation(line: 426, column: 19, scope: !3086)
!3098 = !DILocation(line: 423, column: 35, scope: !3081)
!3099 = !DILocation(line: 423, column: 3, scope: !3081)
!3100 = distinct !{!3100, !3082, !3101}
!3101 = !DILocation(line: 426, column: 19, scope: !3078)
!3102 = !DILocation(line: 432, column: 3, scope: !3027)
!3103 = !DILocation(line: 433, column: 8, scope: !3038)
!3104 = !DILocation(line: 0, scope: !3038)
!3105 = !DILocation(line: 433, column: 17, scope: !3037)
!3106 = !DILocation(line: 433, column: 3, scope: !3038)
!3107 = !DILocation(line: 0, scope: !3033)
!3108 = !DILocation(line: 435, column: 7, scope: !3035)
!3109 = !DILocation(line: 0, scope: !3035)
!3110 = !DILocation(line: 435, column: 21, scope: !3034)
!3111 = !DILocation(line: 440, column: 4, scope: !3033)
!3112 = !DILocation(line: 441, column: 4, scope: !3033)
!3113 = !DILocation(line: 0, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 443, column: 10)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 442, column: 4)
!3116 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 442, column: 4)
!3117 = !DILocation(line: 442, column: 9, scope: !3116)
!3118 = !DILocation(line: 0, scope: !3116)
!3119 = !DILocation(line: 442, column: 18, scope: !3115)
!3120 = !DILocation(line: 442, column: 4, scope: !3116)
!3121 = !DILocation(line: 443, column: 33, scope: !3114)
!3122 = !DILocation(line: 443, column: 10, scope: !3114)
!3123 = !DILocation(line: 444, column: 3, scope: !3114)
!3124 = !DILocation(line: 444, column: 30, scope: !3114)
!3125 = !DILocation(line: 446, column: 15, scope: !3114)
!3126 = !DILocation(line: 445, column: 8, scope: !3114)
!3127 = !DILocation(line: 444, column: 7, scope: !3114)
!3128 = !DILocation(line: 443, column: 10, scope: !3115)
!3129 = !DILocation(line: 447, column: 33, scope: !3114)
!3130 = !DILocation(line: 447, column: 8, scope: !3114)
!3131 = !DILocation(line: 442, column: 36, scope: !3115)
!3132 = !DILocation(line: 442, column: 4, scope: !3115)
!3133 = distinct !{!3133, !3120, !3134}
!3134 = !DILocation(line: 447, column: 52, scope: !3116)
!3135 = !DILocation(line: 435, column: 39, scope: !3034)
!3136 = !DILocation(line: 435, column: 7, scope: !3034)
!3137 = distinct !{!3137, !3108, !3138}
!3138 = !DILocation(line: 448, column: 2, scope: !3035)
!3139 = !DILocation(line: 433, column: 35, scope: !3037)
!3140 = !DILocation(line: 433, column: 3, scope: !3037)
!3141 = distinct !{!3141, !3106, !3142}
!3142 = !DILocation(line: 449, column: 5, scope: !3038)
!3143 = !DILocation(line: 455, column: 3, scope: !3027)
!3144 = !DILocation(line: 456, column: 8, scope: !3046)
!3145 = !DILocation(line: 0, scope: !3046)
!3146 = !DILocation(line: 456, column: 17, scope: !3045)
!3147 = !DILocation(line: 456, column: 3, scope: !3046)
!3148 = !DILocation(line: 0, scope: !3041)
!3149 = !DILocation(line: 458, column: 7, scope: !3043)
!3150 = !DILocation(line: 476, column: 3, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 476, column: 3)
!3152 = !DILocation(line: 0, scope: !3043)
!3153 = !DILocation(line: 458, column: 21, scope: !3042)
!3154 = !DILocation(line: 463, column: 4, scope: !3041)
!3155 = !DILocation(line: 464, column: 4, scope: !3041)
!3156 = !DILocation(line: 465, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 465, column: 4)
!3158 = !DILocation(line: 0, scope: !3157)
!3159 = !DILocation(line: 465, column: 4, scope: !3157)
!3160 = !DILocation(line: 465, column: 18, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 465, column: 4)
!3162 = !DILocation(line: 466, column: 36, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 466, column: 10)
!3164 = !DILocation(line: 466, column: 10, scope: !3163)
!3165 = !DILocation(line: 466, column: 10, scope: !3161)
!3166 = !DILocation(line: 465, column: 36, scope: !3161)
!3167 = !DILocation(line: 465, column: 4, scope: !3161)
!3168 = distinct !{!3168, !3159, !3169}
!3169 = !DILocation(line: 467, column: 8, scope: !3157)
!3170 = !DILocation(line: 469, column: 4, scope: !3041)
!3171 = !DILocation(line: 469, column: 31, scope: !3041)
!3172 = !DILocation(line: 458, column: 39, scope: !3042)
!3173 = !DILocation(line: 458, column: 7, scope: !3042)
!3174 = distinct !{!3174, !3149, !3175}
!3175 = !DILocation(line: 470, column: 2, scope: !3043)
!3176 = !DILocation(line: 456, column: 35, scope: !3045)
!3177 = !DILocation(line: 456, column: 3, scope: !3045)
!3178 = distinct !{!3178, !3147, !3179}
!3179 = !DILocation(line: 471, column: 5, scope: !3046)
!3180 = !DILocation(line: 0, scope: !3151)
!3181 = !DILocation(line: 476, column: 17, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 476, column: 3)
!3183 = !DILocation(line: 478, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 478, column: 7)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 477, column: 5)
!3186 = !DILocation(line: 482, column: 3, scope: !3055)
!3187 = !DILocation(line: 0, scope: !3184)
!3188 = !DILocation(line: 478, column: 21, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 478, column: 7)
!3190 = !DILocation(line: 479, column: 2, scope: !3189)
!3191 = !DILocation(line: 479, column: 29, scope: !3189)
!3192 = !DILocation(line: 478, column: 39, scope: !3189)
!3193 = !DILocation(line: 478, column: 7, scope: !3189)
!3194 = distinct !{!3194, !3183, !3195}
!3195 = !DILocation(line: 479, column: 31, scope: !3184)
!3196 = !DILocation(line: 476, column: 35, scope: !3182)
!3197 = !DILocation(line: 476, column: 3, scope: !3182)
!3198 = distinct !{!3198, !3150, !3199}
!3199 = !DILocation(line: 480, column: 5, scope: !3151)
!3200 = !DILocation(line: 0, scope: !3055)
!3201 = !DILocation(line: 482, column: 17, scope: !3054)
!3202 = !DILocation(line: 484, column: 13, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 484, column: 11)
!3204 = !DILocation(line: 484, column: 11, scope: !3053)
!3205 = !DILocation(line: 0, scope: !3050)
!3206 = !DILocation(line: 487, column: 12, scope: !3052)
!3207 = !DILocation(line: 0, scope: !3052)
!3208 = !DILocation(line: 487, column: 25, scope: !3051)
!3209 = !DILocation(line: 487, column: 7, scope: !3052)
!3210 = !DILocation(line: 488, column: 29, scope: !3050)
!3211 = !DILocation(line: 489, column: 7, scope: !3050)
!3212 = !DILocation(line: 488, column: 6, scope: !3050)
!3213 = !DILocation(line: 488, column: 6, scope: !3051)
!3214 = !DILocation(line: 496, column: 11, scope: !3049)
!3215 = !DILocation(line: 0, scope: !3049)
!3216 = !DILocation(line: 497, column: 6, scope: !3049)
!3217 = !DILocation(line: 497, column: 13, scope: !3049)
!3218 = !DILocation(line: 497, column: 16, scope: !3049)
!3219 = !DILocation(line: 497, column: 37, scope: !3049)
!3220 = distinct !{!3220, !3216, !3219}
!3221 = !DILocation(line: 498, column: 9, scope: !3049)
!3222 = !DILocation(line: 499, column: 4, scope: !3049)
!3223 = !DILocation(line: 487, column: 7, scope: !3051)
!3224 = distinct !{!3224, !3209, !3225}
!3225 = !DILocation(line: 499, column: 4, scope: !3052)
!3226 = !DILocation(line: 482, column: 35, scope: !3054)
!3227 = !DILocation(line: 482, column: 3, scope: !3054)
!3228 = distinct !{!3228, !3186, !3229}
!3229 = !DILocation(line: 500, column: 5, scope: !3055)
!3230 = !DILocation(line: 504, column: 3, scope: !3027)
!3231 = !DILocation(line: 505, column: 3, scope: !3027)
!3232 = !DILocation(line: 506, column: 3, scope: !3027)
!3233 = !DILocation(line: 507, column: 3, scope: !3027)
!3234 = !DILocation(line: 508, column: 8, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 508, column: 7)
!3236 = !DILocation(line: 508, column: 7, scope: !3027)
!3237 = !DILocation(line: 510, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 509, column: 5)
!3239 = !DILocation(line: 511, column: 41, scope: !3238)
!3240 = !DILocation(line: 511, column: 39, scope: !3238)
!3241 = !DILocation(line: 512, column: 5, scope: !3238)
!3242 = !DILocation(line: 514, column: 5, scope: !3235)
!3243 = !DILocation(line: 516, column: 8, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 516, column: 3)
!3245 = !DILocation(line: 0, scope: !3244)
!3246 = !DILocation(line: 516, column: 17, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 516, column: 3)
!3248 = !DILocation(line: 516, column: 3, scope: !3244)
!3249 = !DILocation(line: 519, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 517, column: 5)
!3251 = !DILocation(line: 525, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 525, column: 11)
!3253 = !DILocation(line: 525, column: 11, scope: !3250)
!3254 = !DILocation(line: 526, column: 2, scope: !3252)
!3255 = !DILocation(line: 528, column: 11, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 528, column: 11)
!3257 = !DILocation(line: 528, column: 11, scope: !3250)
!3258 = !DILocation(line: 529, column: 2, scope: !3256)
!3259 = !DILocation(line: 540, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 540, column: 11)
!3261 = !DILocation(line: 540, column: 11, scope: !3250)
!3262 = !DILocation(line: 542, column: 16, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 542, column: 16)
!3264 = !DILocation(line: 542, column: 16, scope: !3260)
!3265 = !DILocation(line: 544, column: 4, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 543, column: 9)
!3267 = !DILocation(line: 545, column: 4, scope: !3266)
!3268 = !DILocation(line: 546, column: 2, scope: !3266)
!3269 = !DILocation(line: 547, column: 16, scope: !3263)
!3270 = !DILocation(line: 554, column: 43, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 554, column: 16)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 550, column: 16)
!3273 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 547, column: 16)
!3274 = !DILocation(line: 554, column: 16, scope: !3272)
!3275 = !DILocation(line: 558, column: 32, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 558, column: 16)
!3277 = !DILocation(line: 558, column: 18, scope: !3276)
!3278 = !DILocation(line: 558, column: 56, scope: !3276)
!3279 = !DILocation(line: 558, column: 59, scope: !3276)
!3280 = !DILocation(line: 558, column: 16, scope: !3271)
!3281 = !DILocation(line: 561, column: 16, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 561, column: 16)
!3283 = !DILocation(line: 561, column: 16, scope: !3276)
!3284 = !DILocation(line: 563, column: 4, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 562, column: 9)
!3286 = !DILocation(line: 564, column: 4, scope: !3285)
!3287 = !DILocation(line: 565, column: 9, scope: !3285)
!3288 = !DILocation(line: 516, column: 43, scope: !3247)
!3289 = !DILocation(line: 516, column: 3, scope: !3247)
!3290 = distinct !{!3290, !3248, !3291}
!3291 = !DILocation(line: 566, column: 5, scope: !3244)
!3292 = !DILocation(line: 568, column: 3, scope: !3027)
!3293 = !DILocation(line: 571, column: 8, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 571, column: 3)
!3295 = !DILocation(line: 571, column: 17, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 571, column: 3)
!3297 = !DILocation(line: 571, column: 3, scope: !3294)
!3298 = !DILocation(line: 573, column: 11, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 573, column: 11)
!3300 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 572, column: 5)
!3301 = !DILocation(line: 573, column: 11, scope: !3300)
!3302 = !DILocation(line: 575, column: 20, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 574, column: 2)
!3304 = !DILocation(line: 575, column: 38, scope: !3303)
!3305 = !DILocation(line: 575, column: 4, scope: !3303)
!3306 = !DILocation(line: 575, column: 18, scope: !3303)
!3307 = !DILocation(line: 576, column: 4, scope: !3303)
!3308 = !DILocation(line: 577, column: 4, scope: !3303)
!3309 = !DILocation(line: 578, column: 4, scope: !3303)
!3310 = !DILocation(line: 579, column: 2, scope: !3303)
!3311 = !DILocation(line: 571, column: 43, scope: !3296)
!3312 = !DILocation(line: 571, column: 3, scope: !3296)
!3313 = distinct !{!3313, !3297, !3314}
!3314 = !DILocation(line: 580, column: 5, scope: !3294)
!3315 = !DILocation(line: 582, column: 3, scope: !3027)
!3316 = !DILocation(line: 583, column: 3, scope: !3027)
!3317 = !DILocation(line: 584, column: 8, scope: !3059)
!3318 = !DILocation(line: 0, scope: !3059)
!3319 = !DILocation(line: 584, column: 17, scope: !3058)
!3320 = !DILocation(line: 584, column: 3, scope: !3059)
!3321 = !DILocation(line: 588, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 588, column: 7)
!3323 = !DILocation(line: 605, column: 3, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 605, column: 3)
!3325 = !DILocation(line: 587, column: 7, scope: !3057)
!3326 = !DILocation(line: 0, scope: !3057)
!3327 = !DILocation(line: 588, column: 21, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 588, column: 7)
!3329 = !DILocation(line: 0, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 593, column: 6)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 592, column: 7)
!3332 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 592, column: 7)
!3333 = !DILocation(line: 0, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 597, column: 4)
!3335 = !DILocation(line: 592, column: 7, scope: !3332)
!3336 = !DILocation(line: 0, scope: !3332)
!3337 = !DILocation(line: 592, column: 21, scope: !3331)
!3338 = !DILocation(line: 593, column: 18, scope: !3330)
!3339 = !DILocation(line: 595, column: 10, scope: !3330)
!3340 = !DILocation(line: 595, column: 7, scope: !3330)
!3341 = !DILocation(line: 596, column: 6, scope: !3330)
!3342 = !DILocation(line: 596, column: 44, scope: !3330)
!3343 = !DILocation(line: 596, column: 9, scope: !3330)
!3344 = !DILocation(line: 593, column: 6, scope: !3331)
!3345 = !DILocation(line: 598, column: 7, scope: !3334)
!3346 = !DILocation(line: 598, column: 35, scope: !3334)
!3347 = !DILocation(line: 599, column: 29, scope: !3334)
!3348 = !DILocation(line: 600, column: 4, scope: !3334)
!3349 = !DILocation(line: 592, column: 39, scope: !3331)
!3350 = !DILocation(line: 592, column: 7, scope: !3331)
!3351 = distinct !{!3351, !3335, !3352}
!3352 = !DILocation(line: 600, column: 4, scope: !3332)
!3353 = !DILocation(line: 584, column: 53, scope: !3058)
!3354 = !DILocation(line: 589, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 589, column: 6)
!3356 = !DILocation(line: 589, column: 22, scope: !3355)
!3357 = !DILocation(line: 589, column: 25, scope: !3355)
!3358 = !DILocation(line: 589, column: 6, scope: !3328)
!3359 = !DILocation(line: 590, column: 4, scope: !3355)
!3360 = !DILocation(line: 588, column: 47, scope: !3328)
!3361 = !DILocation(line: 588, column: 7, scope: !3328)
!3362 = distinct !{!3362, !3321, !3363}
!3363 = !DILocation(line: 590, column: 4, scope: !3322)
!3364 = !DILocation(line: 584, column: 3, scope: !3058)
!3365 = distinct !{!3365, !3320, !3366}
!3366 = !DILocation(line: 601, column: 6, scope: !3059)
!3367 = !DILocation(line: 0, scope: !3324)
!3368 = !DILocation(line: 605, column: 17, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 605, column: 3)
!3370 = !DILocation(line: 606, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 606, column: 9)
!3372 = !DILocation(line: 606, column: 9, scope: !3369)
!3373 = !DILocation(line: 608, column: 2, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 608, column: 2)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 607, column: 7)
!3376 = !DILocation(line: 0, scope: !3374)
!3377 = !DILocation(line: 608, column: 16, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 608, column: 2)
!3379 = !DILocation(line: 608, column: 20, scope: !3378)
!3380 = !DILocation(line: 608, column: 39, scope: !3378)
!3381 = !DILocation(line: 608, column: 36, scope: !3378)
!3382 = !DILocation(line: 608, column: 54, scope: !3378)
!3383 = !DILocation(line: 608, column: 2, scope: !3378)
!3384 = distinct !{!3384, !3373, !3385}
!3385 = !DILocation(line: 609, column: 4, scope: !3374)
!3386 = !DILocation(line: 610, column: 8, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 610, column: 6)
!3388 = !DILocation(line: 610, column: 6, scope: !3375)
!3389 = !DILocation(line: 612, column: 6, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 611, column: 4)
!3391 = !DILocation(line: 613, column: 12, scope: !3390)
!3392 = !DILocation(line: 613, column: 6, scope: !3390)
!3393 = !DILocation(line: 614, column: 12, scope: !3390)
!3394 = !DILocation(line: 614, column: 6, scope: !3390)
!3395 = !DILocation(line: 615, column: 4, scope: !3390)
!3396 = !DILocation(line: 605, column: 38, scope: !3369)
!3397 = !DILocation(line: 605, column: 3, scope: !3369)
!3398 = distinct !{!3398, !3323, !3399}
!3399 = !DILocation(line: 616, column: 7, scope: !3324)
!3400 = !DILocation(line: 617, column: 3, scope: !3027)
!3401 = !DILocation(line: 618, column: 3, scope: !3027)
!3402 = !DILocation(line: 619, column: 3, scope: !3027)
!3403 = !DILocation(line: 620, column: 32, scope: !3027)
!3404 = !DILocation(line: 621, column: 1, scope: !3027)
!3405 = distinct !DISubprogram(name: "reinit_regs", scope: !3, file: !3, line: 666, type: !2640, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!3406 = !DILocation(line: 668, column: 3, scope: !3405)
!3407 = !DILocation(line: 669, column: 3, scope: !3405)
!3408 = !DILocation(line: 670, column: 1, scope: !3405)
!3409 = distinct !DISubprogram(name: "init_fake_stack_mems", scope: !3, file: !3, line: 675, type: !2640, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "i", scope: !3409, file: !3, line: 677, type: !758)
!3412 = !DILocation(line: 0, scope: !3409)
!3413 = !DILocation(line: 679, column: 8, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 679, column: 3)
!3415 = !DILocation(line: 0, scope: !3414)
!3416 = !DILocation(line: 679, column: 17, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 679, column: 3)
!3418 = !DILocation(line: 679, column: 3, scope: !3414)
!3419 = !DILocation(line: 680, column: 59, scope: !3417)
!3420 = !DILocation(line: 680, column: 23, scope: !3417)
!3421 = !DILocation(line: 680, column: 5, scope: !3417)
!3422 = !DILocation(line: 680, column: 21, scope: !3417)
!3423 = !DILocation(line: 679, column: 38, scope: !3417)
!3424 = !DILocation(line: 679, column: 3, scope: !3417)
!3425 = distinct !{!3425, !3418, !3426}
!3426 = !DILocation(line: 680, column: 76, scope: !3414)
!3427 = !DILocation(line: 681, column: 1, scope: !3409)
!3428 = distinct !DISubprogram(name: "memory_move_secondary_cost", scope: !3, file: !3, line: 687, type: !3429, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!758, !5, !134, !758}
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437}
!3432 = !DILocalVariable(name: "mode", arg: 1, scope: !3428, file: !3, line: 687, type: !5)
!3433 = !DILocalVariable(name: "rclass", arg: 2, scope: !3428, file: !3, line: 687, type: !134)
!3434 = !DILocalVariable(name: "in", arg: 3, scope: !3428, file: !3, line: 688, type: !758)
!3435 = !DILocalVariable(name: "altclass", scope: !3428, file: !3, line: 690, type: !134)
!3436 = !DILocalVariable(name: "partial_cost", scope: !3428, file: !3, line: 691, type: !758)
!3437 = !DILocalVariable(name: "mem", scope: !3428, file: !3, line: 694, type: !1010)
!3438 = !DILocation(line: 0, scope: !3428)
!3439 = !DILocation(line: 694, column: 30, scope: !3428)
!3440 = !DILocation(line: 696, column: 38, scope: !3428)
!3441 = !DILocation(line: 696, column: 14, scope: !3428)
!3442 = !DILocation(line: 698, column: 16, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 698, column: 7)
!3444 = !DILocation(line: 698, column: 7, scope: !3428)
!3445 = !DILocation(line: 701, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 701, column: 7)
!3447 = !DILocation(line: 701, column: 7, scope: !3428)
!3448 = !DILocation(line: 702, column: 20, scope: !3446)
!3449 = !DILocation(line: 702, column: 5, scope: !3446)
!3450 = !DILocation(line: 704, column: 20, scope: !3446)
!3451 = !DILocation(line: 0, scope: !3446)
!3452 = !DILocation(line: 706, column: 14, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 706, column: 7)
!3454 = !DILocation(line: 706, column: 7, scope: !3428)
!3455 = !DILocation(line: 718, column: 10, scope: !3428)
!3456 = !DILocation(line: 718, column: 58, scope: !3428)
!3457 = !DILocation(line: 719, column: 1, scope: !3428)
!3458 = !DILocation(line: 0, scope: !833)
!3459 = !DILocation(line: 804, column: 12, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !833, file: !3, line: 804, column: 7)
!3461 = !DILocation(line: 804, column: 36, scope: !3460)
!3462 = !DILocation(line: 804, column: 7, scope: !833)
!3463 = !DILocation(line: 808, column: 5, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 806, column: 11)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 805, column: 5)
!3466 = !DILocation(line: 813, column: 14, scope: !3464)
!3467 = !DILocation(line: 813, column: 32, scope: !3464)
!3468 = !DILocation(line: 813, column: 19, scope: !3464)
!3469 = !DILocation(line: 820, column: 4, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 814, column: 2)
!3471 = !DILocation(line: 819, column: 4, scope: !3470)
!3472 = !DILocation(line: 821, column: 2, scope: !3470)
!3473 = !DILocation(line: 824, column: 20, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 823, column: 2)
!3475 = !DILocation(line: 824, column: 4, scope: !3474)
!3476 = !DILocation(line: 824, column: 18, scope: !3474)
!3477 = !DILocation(line: 825, column: 24, scope: !3474)
!3478 = !DILocation(line: 825, column: 4, scope: !3474)
!3479 = !DILocation(line: 825, column: 22, scope: !3474)
!3480 = !DILocation(line: 834, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 833, column: 5)
!3482 = !DILocation(line: 836, column: 1, scope: !833)
!3483 = distinct !DISubprogram(name: "globalize_reg", scope: !3, file: !3, line: 840, type: !3484, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !758}
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "i", arg: 1, scope: !3483, file: !3, line: 840, type: !758)
!3488 = !DILocation(line: 0, scope: !3483)
!3489 = !DILocation(line: 842, column: 7, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 842, column: 7)
!3491 = !DILocation(line: 842, column: 21, scope: !3490)
!3492 = !DILocation(line: 842, column: 29, scope: !3490)
!3493 = !DILocation(line: 842, column: 26, scope: !3490)
!3494 = !DILocation(line: 843, column: 5, scope: !3490)
!3495 = !DILocation(line: 845, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 845, column: 7)
!3497 = !DILocation(line: 845, column: 7, scope: !3483)
!3498 = !DILocation(line: 847, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 846, column: 5)
!3500 = !DILocation(line: 848, column: 7, scope: !3499)
!3501 = !DILocation(line: 851, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 851, column: 7)
!3503 = !DILocation(line: 851, column: 25, scope: !3502)
!3504 = !DILocation(line: 851, column: 30, scope: !3502)
!3505 = !DILocation(line: 851, column: 7, scope: !3483)
!3506 = !DILocation(line: 852, column: 5, scope: !3502)
!3507 = !DILocation(line: 854, column: 18, scope: !3483)
!3508 = !DILocation(line: 859, column: 9, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 859, column: 7)
!3510 = !DILocation(line: 859, column: 7, scope: !3483)
!3511 = !DILocation(line: 861, column: 7, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 860, column: 5)
!3513 = !DILocation(line: 862, column: 7, scope: !3512)
!3514 = !DILocation(line: 863, column: 5, scope: !3512)
!3515 = !DILocation(line: 866, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 866, column: 7)
!3517 = !DILocation(line: 866, column: 7, scope: !3483)
!3518 = !DILocation(line: 869, column: 37, scope: !3483)
!3519 = !DILocation(line: 869, column: 17, scope: !3483)
!3520 = !DILocation(line: 874, column: 3, scope: !3483)
!3521 = !DILocation(line: 875, column: 3, scope: !3483)
!3522 = !DILocation(line: 876, column: 3, scope: !3483)
!3523 = !DILocation(line: 878, column: 3, scope: !3483)
!3524 = !DILocation(line: 879, column: 1, scope: !3483)
!3525 = distinct !DISubprogram(name: "reg_preferred_class", scope: !3, file: !3, line: 914, type: !3526, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!134, !758}
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "regno", arg: 1, scope: !3525, file: !3, line: 914, type: !758)
!3530 = !DILocation(line: 0, scope: !3525)
!3531 = !DILocation(line: 916, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 916, column: 7)
!3533 = !DILocation(line: 916, column: 16, scope: !3532)
!3534 = !DILocation(line: 916, column: 7, scope: !3525)
!3535 = !DILocation(line: 919, column: 27, scope: !3525)
!3536 = !DILocation(line: 919, column: 43, scope: !3525)
!3537 = !DILocation(line: 919, column: 10, scope: !3525)
!3538 = !DILocation(line: 919, column: 3, scope: !3525)
!3539 = !DILocation(line: 920, column: 1, scope: !3525)
!3540 = distinct !DISubprogram(name: "reg_alternate_class", scope: !3, file: !3, line: 923, type: !3526, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3541 = !{!3542}
!3542 = !DILocalVariable(name: "regno", arg: 1, scope: !3540, file: !3, line: 923, type: !758)
!3543 = !DILocation(line: 0, scope: !3540)
!3544 = !DILocation(line: 925, column: 7, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 925, column: 7)
!3546 = !DILocation(line: 925, column: 16, scope: !3545)
!3547 = !DILocation(line: 925, column: 7, scope: !3540)
!3548 = !DILocation(line: 928, column: 27, scope: !3540)
!3549 = !DILocation(line: 928, column: 43, scope: !3540)
!3550 = !DILocation(line: 928, column: 10, scope: !3540)
!3551 = !DILocation(line: 928, column: 3, scope: !3540)
!3552 = !DILocation(line: 929, column: 1, scope: !3540)
!3553 = distinct !DISubprogram(name: "reg_cover_class", scope: !3, file: !3, line: 933, type: !3526, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3554)
!3554 = !{!3555}
!3555 = !DILocalVariable(name: "regno", arg: 1, scope: !3553, file: !3, line: 933, type: !758)
!3556 = !DILocation(line: 0, scope: !3553)
!3557 = !DILocation(line: 935, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 935, column: 7)
!3559 = !DILocation(line: 935, column: 16, scope: !3558)
!3560 = !DILocation(line: 935, column: 7, scope: !3553)
!3561 = !DILocation(line: 938, column: 27, scope: !3553)
!3562 = !DILocation(line: 938, column: 43, scope: !3553)
!3563 = !DILocation(line: 938, column: 10, scope: !3553)
!3564 = !DILocation(line: 938, column: 3, scope: !3553)
!3565 = !DILocation(line: 939, column: 1, scope: !3553)
!3566 = distinct !DISubprogram(name: "resize_reg_info", scope: !3, file: !3, line: 958, type: !856, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3567)
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "old", scope: !3566, file: !3, line: 960, type: !758)
!3569 = !DILocation(line: 962, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 962, column: 7)
!3571 = !DILocation(line: 962, column: 16, scope: !3570)
!3572 = !DILocation(line: 962, column: 7, scope: !3566)
!3573 = !DILocation(line: 964, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 963, column: 5)
!3575 = !DILocation(line: 965, column: 7, scope: !3574)
!3576 = !DILocation(line: 967, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 967, column: 7)
!3578 = !DILocation(line: 967, column: 24, scope: !3577)
!3579 = !DILocation(line: 967, column: 21, scope: !3577)
!3580 = !DILocation(line: 967, column: 7, scope: !3566)
!3581 = !DILocation(line: 969, column: 9, scope: !3566)
!3582 = !DILocation(line: 0, scope: !3566)
!3583 = !DILocation(line: 970, column: 19, scope: !3566)
!3584 = !DILocation(line: 970, column: 17, scope: !3566)
!3585 = !DILocation(line: 971, column: 3, scope: !3566)
!3586 = !DILocation(line: 972, column: 18, scope: !3566)
!3587 = !DILocation(line: 972, column: 16, scope: !3566)
!3588 = !DILocation(line: 973, column: 14, scope: !3566)
!3589 = !DILocation(line: 973, column: 12, scope: !3566)
!3590 = !DILocation(line: 974, column: 11, scope: !3566)
!3591 = !DILocation(line: 974, column: 20, scope: !3566)
!3592 = !DILocation(line: 975, column: 5, scope: !3566)
!3593 = !DILocation(line: 975, column: 19, scope: !3566)
!3594 = !DILocation(line: 975, column: 4, scope: !3566)
!3595 = !DILocation(line: 975, column: 26, scope: !3566)
!3596 = !DILocation(line: 974, column: 3, scope: !3566)
!3597 = !DILocation(line: 976, column: 11, scope: !3566)
!3598 = !DILocation(line: 976, column: 24, scope: !3566)
!3599 = !DILocation(line: 976, column: 36, scope: !3566)
!3600 = !DILocation(line: 976, column: 50, scope: !3566)
!3601 = !DILocation(line: 976, column: 35, scope: !3566)
!3602 = !DILocation(line: 976, column: 57, scope: !3566)
!3603 = !DILocation(line: 976, column: 3, scope: !3566)
!3604 = !DILocation(line: 977, column: 3, scope: !3566)
!3605 = !DILocation(line: 978, column: 1, scope: !3566)
!3606 = distinct !DISubprogram(name: "allocate_reg_info", scope: !3, file: !3, line: 945, type: !2640, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!3607 = !DILocation(line: 947, column: 19, scope: !3606)
!3608 = !DILocation(line: 947, column: 17, scope: !3606)
!3609 = !DILocation(line: 948, column: 3, scope: !3606)
!3610 = !DILocation(line: 949, column: 18, scope: !3606)
!3611 = !DILocation(line: 949, column: 16, scope: !3606)
!3612 = !DILocation(line: 950, column: 14, scope: !3606)
!3613 = !DILocation(line: 950, column: 12, scope: !3606)
!3614 = !DILocation(line: 951, column: 11, scope: !3606)
!3615 = !DILocation(line: 951, column: 29, scope: !3606)
!3616 = !DILocation(line: 951, column: 43, scope: !3606)
!3617 = !DILocation(line: 951, column: 3, scope: !3606)
!3618 = !DILocation(line: 952, column: 1, scope: !3606)
!3619 = distinct !DISubprogram(name: "free_reg_info", scope: !3, file: !3, line: 983, type: !2640, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!3620 = !DILocation(line: 985, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 985, column: 7)
!3622 = !DILocation(line: 985, column: 7, scope: !3619)
!3623 = !DILocation(line: 987, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 986, column: 5)
!3625 = !DILocation(line: 988, column: 16, scope: !3624)
!3626 = !DILocation(line: 989, column: 5, scope: !3624)
!3627 = !DILocation(line: 991, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 991, column: 7)
!3629 = !DILocation(line: 991, column: 7, scope: !3619)
!3630 = !DILocation(line: 993, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 992, column: 5)
!3632 = !DILocation(line: 994, column: 20, scope: !3631)
!3633 = !DILocation(line: 995, column: 5, scope: !3631)
!3634 = !DILocation(line: 996, column: 1, scope: !3619)
!3635 = distinct !DISubprogram(name: "reginfo_init", scope: !3, file: !3, line: 1000, type: !860, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!3636 = !DILocation(line: 1002, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1002, column: 7)
!3638 = !DILocation(line: 1002, column: 7, scope: !3635)
!3639 = !DILocation(line: 1003, column: 5, scope: !3637)
!3640 = !DILocation(line: 1007, column: 12, scope: !3635)
!3641 = !DILocation(line: 1009, column: 22, scope: !3635)
!3642 = !DILocation(line: 1010, column: 3, scope: !3635)
!3643 = distinct !DISubprogram(name: "setup_reg_classes", scope: !3, file: !3, line: 1037, type: !3644, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !758, !134, !134, !134}
!3646 = !{!3647, !3648, !3649, !3650}
!3647 = !DILocalVariable(name: "regno", arg: 1, scope: !3643, file: !3, line: 1037, type: !758)
!3648 = !DILocalVariable(name: "prefclass", arg: 2, scope: !3643, file: !3, line: 1038, type: !134)
!3649 = !DILocalVariable(name: "altclass", arg: 3, scope: !3643, file: !3, line: 1038, type: !134)
!3650 = !DILocalVariable(name: "coverclass", arg: 4, scope: !3643, file: !3, line: 1039, type: !134)
!3651 = !DILocation(line: 0, scope: !3643)
!3652 = !DILocation(line: 1041, column: 7, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1041, column: 7)
!3654 = !DILocation(line: 1041, column: 16, scope: !3653)
!3655 = !DILocation(line: 1041, column: 7, scope: !3643)
!3656 = !DILocation(line: 1043, column: 3, scope: !3643)
!3657 = !DILocation(line: 1044, column: 31, scope: !3643)
!3658 = !DILocation(line: 1044, column: 3, scope: !3643)
!3659 = !DILocation(line: 1044, column: 19, scope: !3643)
!3660 = !DILocation(line: 1044, column: 29, scope: !3643)
!3661 = !DILocation(line: 1045, column: 30, scope: !3643)
!3662 = !DILocation(line: 1045, column: 3, scope: !3643)
!3663 = !DILocation(line: 1045, column: 19, scope: !3643)
!3664 = !DILocation(line: 1045, column: 28, scope: !3643)
!3665 = !DILocation(line: 1046, column: 32, scope: !3643)
!3666 = !DILocation(line: 1046, column: 3, scope: !3643)
!3667 = !DILocation(line: 1046, column: 19, scope: !3643)
!3668 = !DILocation(line: 1046, column: 30, scope: !3643)
!3669 = !DILocation(line: 1047, column: 1, scope: !3643)
!3670 = distinct !DISubprogram(name: "reg_scan", scope: !3, file: !3, line: 1057, type: !3671, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !1010, !7}
!3673 = !{!3674, !3675, !3676}
!3674 = !DILocalVariable(name: "f", arg: 1, scope: !3670, file: !3, line: 1057, type: !1010)
!3675 = !DILocalVariable(name: "nregs", arg: 2, scope: !3670, file: !3, line: 1057, type: !7)
!3676 = !DILocalVariable(name: "insn", scope: !3670, file: !3, line: 1059, type: !1010)
!3677 = !DILocation(line: 0, scope: !3670)
!3678 = !DILocation(line: 1061, column: 3, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 1061, column: 3)
!3680 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1061, column: 3)
!3681 = !DILocation(line: 1061, column: 3, scope: !3680)
!3682 = !DILocation(line: 1063, column: 8, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1063, column: 3)
!3684 = !DILocation(line: 0, scope: !3683)
!3685 = !DILocation(line: 1063, column: 3, scope: !3683)
!3686 = !DILocation(line: 1064, column: 9, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 1064, column: 9)
!3688 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1063, column: 3)
!3689 = !DILocation(line: 1064, column: 9, scope: !3688)
!3690 = !DILocation(line: 1066, column: 22, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1065, column: 7)
!3692 = !DILocation(line: 1066, column: 2, scope: !3691)
!3693 = !DILocation(line: 1067, column: 6, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1067, column: 6)
!3695 = !DILocation(line: 1067, column: 6, scope: !3691)
!3696 = !DILocation(line: 1068, column: 4, scope: !3694)
!3697 = !DILocation(line: 1063, column: 31, scope: !3688)
!3698 = !DILocation(line: 1063, column: 3, scope: !3688)
!3699 = distinct !{!3699, !3685, !3700}
!3700 = !DILocation(line: 1069, column: 7, scope: !3683)
!3701 = !DILocation(line: 1071, column: 3, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1071, column: 3)
!3703 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1071, column: 3)
!3704 = !DILocation(line: 1071, column: 3, scope: !3703)
!3705 = !DILocation(line: 1072, column: 1, scope: !3670)
!3706 = distinct !DISubprogram(name: "reg_scan_mark_refs", scope: !3, file: !3, line: 1080, type: !3707, scopeLine: 1081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !1010, !1010}
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3719, !3721, !3722}
!3710 = !DILocalVariable(name: "x", arg: 1, scope: !3706, file: !3, line: 1080, type: !1010)
!3711 = !DILocalVariable(name: "insn", arg: 2, scope: !3706, file: !3, line: 1080, type: !1010)
!3712 = !DILocalVariable(name: "code", scope: !3706, file: !3, line: 1082, type: !612)
!3713 = !DILocalVariable(name: "dest", scope: !3706, file: !3, line: 1083, type: !1010)
!3714 = !DILocalVariable(name: "note", scope: !3706, file: !3, line: 1084, type: !1010)
!3715 = !DILocalVariable(name: "src", scope: !3716, file: !3, line: 1181, type: !1010)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 1180, column: 2)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1179, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 1090, column: 5)
!3719 = !DILocalVariable(name: "fmt", scope: !3720, file: !3, line: 1196, type: !763)
!3720 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1195, column: 7)
!3721 = !DILocalVariable(name: "i", scope: !3720, file: !3, line: 1197, type: !758)
!3722 = !DILocalVariable(name: "j", scope: !3723, file: !3, line: 1204, type: !758)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1203, column: 8)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 1202, column: 15)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 1200, column: 10)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1199, column: 4)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1198, column: 2)
!3728 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 1198, column: 2)
!3729 = !DILocation(line: 1109, column: 2, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1108, column: 11)
!3731 = !DILocation(line: 0, scope: !3706)
!3732 = !DILocation(line: 1086, column: 8, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 1086, column: 7)
!3734 = !DILocation(line: 1086, column: 7, scope: !3706)
!3735 = !DILocation(line: 1088, column: 10, scope: !3706)
!3736 = !DILocation(line: 1089, column: 3, scope: !3706)
!3737 = !DILocation(line: 1106, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1106, column: 11)
!3739 = !DILocation(line: 1106, column: 11, scope: !3718)
!3740 = !DILocation(line: 1107, column: 2, scope: !3738)
!3741 = !DILocation(line: 1108, column: 11, scope: !3730)
!3742 = !DILocation(line: 1108, column: 11, scope: !3718)
!3743 = !DILocation(line: 0, scope: !3718)
!3744 = !DILocation(line: 1113, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1113, column: 11)
!3746 = !DILocation(line: 1113, column: 11, scope: !3718)
!3747 = !DILocation(line: 1114, column: 2, scope: !3745)
!3748 = !DILocation(line: 1118, column: 11, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1118, column: 11)
!3750 = !DILocation(line: 1118, column: 11, scope: !3718)
!3751 = !DILocation(line: 1119, column: 22, scope: !3749)
!3752 = !DILocation(line: 1119, column: 2, scope: !3749)
!3753 = !DILocation(line: 1124, column: 12, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1124, column: 7)
!3755 = !DILocation(line: 0, scope: !3754)
!3756 = !DILocation(line: 1125, column: 5, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 1124, column: 7)
!3758 = !DILocation(line: 1125, column: 21, scope: !3757)
!3759 = !DILocation(line: 1125, column: 31, scope: !3757)
!3760 = !DILocation(line: 1125, column: 50, scope: !3757)
!3761 = !DILocation(line: 1126, column: 24, scope: !3757)
!3762 = !DILocation(line: 1126, column: 5, scope: !3757)
!3763 = !DILocation(line: 1124, column: 7, scope: !3757)
!3764 = distinct !{!3764, !3765, !3766}
!3765 = !DILocation(line: 1124, column: 7, scope: !3754)
!3766 = !DILocation(line: 1128, column: 2, scope: !3754)
!3767 = !DILocation(line: 1142, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1142, column: 11)
!3769 = !DILocation(line: 1143, column: 4, scope: !3768)
!3770 = !DILocation(line: 1143, column: 7, scope: !3768)
!3771 = !DILocation(line: 1143, column: 28, scope: !3768)
!3772 = !DILocation(line: 1149, column: 4, scope: !3768)
!3773 = !DILocation(line: 1149, column: 7, scope: !3768)
!3774 = !DILocation(line: 1149, column: 47, scope: !3768)
!3775 = !DILocation(line: 1150, column: 4, scope: !3768)
!3776 = !DILocation(line: 1150, column: 9, scope: !3768)
!3777 = !DILocation(line: 1151, column: 4, scope: !3768)
!3778 = !DILocation(line: 1151, column: 9, scope: !3768)
!3779 = !DILocation(line: 1152, column: 4, scope: !3768)
!3780 = !DILocation(line: 1152, column: 9, scope: !3768)
!3781 = !DILocation(line: 1153, column: 9, scope: !3768)
!3782 = !DILocation(line: 1153, column: 12, scope: !3768)
!3783 = !DILocation(line: 1154, column: 8, scope: !3768)
!3784 = !DILocation(line: 1154, column: 36, scope: !3768)
!3785 = !DILocation(line: 1155, column: 6, scope: !3768)
!3786 = !DILocation(line: 1155, column: 32, scope: !3768)
!3787 = !DILocation(line: 1156, column: 5, scope: !3768)
!3788 = !DILocation(line: 1156, column: 8, scope: !3768)
!3789 = !DILocation(line: 1157, column: 5, scope: !3768)
!3790 = !DILocation(line: 1157, column: 8, scope: !3768)
!3791 = !DILocation(line: 1158, column: 5, scope: !3768)
!3792 = !DILocation(line: 1158, column: 8, scope: !3768)
!3793 = !DILocation(line: 1159, column: 8, scope: !3768)
!3794 = !DILocation(line: 1159, column: 34, scope: !3768)
!3795 = !DILocation(line: 1160, column: 8, scope: !3768)
!3796 = !DILocation(line: 1160, column: 34, scope: !3768)
!3797 = !DILocation(line: 1161, column: 8, scope: !3768)
!3798 = !DILocation(line: 1161, column: 34, scope: !3768)
!3799 = !DILocation(line: 1162, column: 8, scope: !3768)
!3800 = !DILocation(line: 1162, column: 35, scope: !3768)
!3801 = !DILocation(line: 1163, column: 5, scope: !3768)
!3802 = !DILocation(line: 1163, column: 9, scope: !3768)
!3803 = !DILocation(line: 1163, column: 42, scope: !3768)
!3804 = !DILocation(line: 1164, column: 9, scope: !3768)
!3805 = !DILocation(line: 1164, column: 45, scope: !3768)
!3806 = !DILocation(line: 1165, column: 9, scope: !3768)
!3807 = !DILocation(line: 1165, column: 45, scope: !3768)
!3808 = !DILocation(line: 1166, column: 8, scope: !3768)
!3809 = !DILocation(line: 1167, column: 6, scope: !3768)
!3810 = !DILocation(line: 1167, column: 32, scope: !3768)
!3811 = !DILocation(line: 1168, column: 5, scope: !3768)
!3812 = !DILocation(line: 1168, column: 9, scope: !3768)
!3813 = !DILocation(line: 1168, column: 42, scope: !3768)
!3814 = !DILocation(line: 1169, column: 9, scope: !3768)
!3815 = !DILocation(line: 1169, column: 45, scope: !3768)
!3816 = !DILocation(line: 1170, column: 9, scope: !3768)
!3817 = !DILocation(line: 1170, column: 45, scope: !3768)
!3818 = !DILocation(line: 1171, column: 8, scope: !3768)
!3819 = !DILocation(line: 1171, column: 20, scope: !3768)
!3820 = !DILocation(line: 1171, column: 56, scope: !3768)
!3821 = !DILocation(line: 1172, column: 5, scope: !3768)
!3822 = !DILocation(line: 1172, column: 9, scope: !3768)
!3823 = !DILocation(line: 1172, column: 35, scope: !3768)
!3824 = !DILocation(line: 1173, column: 9, scope: !3768)
!3825 = !DILocation(line: 1173, column: 38, scope: !3768)
!3826 = !DILocation(line: 1174, column: 9, scope: !3768)
!3827 = !DILocation(line: 1174, column: 38, scope: !3768)
!3828 = !DILocation(line: 1142, column: 11, scope: !3718)
!3829 = !DILocation(line: 1175, column: 2, scope: !3768)
!3830 = !DILocation(line: 1175, column: 29, scope: !3768)
!3831 = !DILocation(line: 1179, column: 11, scope: !3717)
!3832 = !DILocation(line: 1179, column: 24, scope: !3717)
!3833 = !DILocation(line: 1179, column: 28, scope: !3717)
!3834 = !DILocation(line: 1179, column: 11, scope: !3718)
!3835 = !DILocation(line: 1181, column: 14, scope: !3716)
!3836 = !DILocation(line: 1183, column: 4, scope: !3716)
!3837 = !DILocation(line: 0, scope: !3716)
!3838 = !DILocation(line: 1183, column: 11, scope: !3716)
!3839 = !DILocation(line: 1183, column: 26, scope: !3716)
!3840 = !DILocation(line: 1184, column: 4, scope: !3716)
!3841 = !DILocation(line: 1184, column: 22, scope: !3716)
!3842 = !DILocation(line: 1185, column: 4, scope: !3716)
!3843 = !DILocation(line: 1185, column: 22, scope: !3716)
!3844 = !DILocation(line: 1186, column: 4, scope: !3716)
!3845 = !DILocation(line: 1186, column: 23, scope: !3716)
!3846 = !DILocation(line: 1186, column: 33, scope: !3716)
!3847 = !DILocation(line: 1186, column: 36, scope: !3716)
!3848 = !DILocation(line: 1187, column: 12, scope: !3716)
!3849 = distinct !{!3849, !3836, !3848}
!3850 = !DILocation(line: 1189, column: 4, scope: !3716)
!3851 = !DILocation(line: 1190, column: 2, scope: !3716)
!3852 = !DILocation(line: 1196, column: 20, scope: !3720)
!3853 = !DILocation(line: 0, scope: !3720)
!3854 = !DILocation(line: 1198, column: 11, scope: !3728)
!3855 = !DILocation(line: 0, scope: !3724)
!3856 = !DILocation(line: 1198, column: 7, scope: !3728)
!3857 = !DILocation(line: 0, scope: !3728)
!3858 = !DILocation(line: 1198, column: 40, scope: !3727)
!3859 = !DILocation(line: 1198, column: 2, scope: !3728)
!3860 = !DILocation(line: 1200, column: 10, scope: !3725)
!3861 = !DILocation(line: 1200, column: 17, scope: !3725)
!3862 = !DILocation(line: 1200, column: 10, scope: !3726)
!3863 = !DILocation(line: 1201, column: 28, scope: !3725)
!3864 = !DILocation(line: 1201, column: 8, scope: !3725)
!3865 = !DILocation(line: 1202, column: 22, scope: !3724)
!3866 = !DILocation(line: 1202, column: 29, scope: !3724)
!3867 = !DILocation(line: 1202, column: 32, scope: !3724)
!3868 = !DILocation(line: 1202, column: 44, scope: !3724)
!3869 = !DILocation(line: 1202, column: 15, scope: !3725)
!3870 = !DILocation(line: 1205, column: 12, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 1205, column: 3)
!3872 = !DILocation(line: 0, scope: !3723)
!3873 = !DILocation(line: 1205, column: 8, scope: !3871)
!3874 = !DILocation(line: 0, scope: !3871)
!3875 = !DILocation(line: 1205, column: 34, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1205, column: 3)
!3877 = !DILocation(line: 1205, column: 3, scope: !3871)
!3878 = !DILocation(line: 1206, column: 25, scope: !3876)
!3879 = !DILocation(line: 1206, column: 5, scope: !3876)
!3880 = !DILocation(line: 1205, column: 3, scope: !3876)
!3881 = distinct !{!3881, !3877, !3882}
!3882 = !DILocation(line: 1206, column: 48, scope: !3871)
!3883 = !DILocation(line: 1198, column: 2, scope: !3727)
!3884 = distinct !{!3884, !3859, !3885}
!3885 = !DILocation(line: 1208, column: 4, scope: !3728)
!3886 = !DILocation(line: 1211, column: 1, scope: !3706)
!3887 = distinct !DISubprogram(name: "hard_reg_set_subset_p", scope: !766, file: !766, line: 115, type: !3888, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3891)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!757, !3890, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!3891 = !{!3892, !3893}
!3892 = !DILocalVariable(name: "x", arg: 1, scope: !3887, file: !766, line: 115, type: !3890)
!3893 = !DILocalVariable(name: "y", arg: 2, scope: !3887, file: !766, line: 115, type: !3890)
!3894 = !DILocation(line: 0, scope: !3887)
!3895 = !DILocation(line: 117, column: 15, scope: !3887)
!3896 = !DILocation(line: 117, column: 13, scope: !3887)
!3897 = !DILocation(line: 117, column: 19, scope: !3887)
!3898 = !DILocation(line: 117, column: 10, scope: !3887)
!3899 = !DILocation(line: 117, column: 3, scope: !3887)
!3900 = distinct !DISubprogram(name: "reg_classes_intersect_p", scope: !3, file: !3, line: 1227, type: !2842, scopeLine: 1228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "c1", arg: 1, scope: !3900, file: !3, line: 1227, type: !134)
!3903 = !DILocalVariable(name: "c2", arg: 2, scope: !3900, file: !3, line: 1227, type: !134)
!3904 = !DILocation(line: 0, scope: !3900)
!3905 = !DILocation(line: 1229, column: 14, scope: !3900)
!3906 = !DILocation(line: 1230, column: 10, scope: !3900)
!3907 = !DILocation(line: 1230, column: 4, scope: !3900)
!3908 = !DILocation(line: 1231, column: 10, scope: !3900)
!3909 = !DILocation(line: 1232, column: 33, scope: !3900)
!3910 = !DILocation(line: 1233, column: 11, scope: !3900)
!3911 = !DILocation(line: 1232, column: 7, scope: !3900)
!3912 = !DILocation(line: 1232, column: 4, scope: !3900)
!3913 = !DILocation(line: 1229, column: 3, scope: !3900)
!3914 = distinct !DISubprogram(name: "hard_reg_set_intersect_p", scope: !766, file: !766, line: 127, type: !3888, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3915)
!3915 = !{!3916, !3917}
!3916 = !DILocalVariable(name: "x", arg: 1, scope: !3914, file: !766, line: 127, type: !3890)
!3917 = !DILocalVariable(name: "y", arg: 2, scope: !3914, file: !766, line: 127, type: !3890)
!3918 = !DILocation(line: 0, scope: !3914)
!3919 = !DILocation(line: 129, column: 13, scope: !3914)
!3920 = !DILocation(line: 129, column: 18, scope: !3914)
!3921 = !DILocation(line: 129, column: 10, scope: !3914)
!3922 = !DILocation(line: 129, column: 3, scope: !3914)
!3923 = distinct !DISubprogram(name: "init_subregs_of_mode", scope: !3, file: !3, line: 1326, type: !2640, scopeLine: 1327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3924)
!3924 = !{!3925, !3926}
!3925 = !DILocalVariable(name: "bb", scope: !3923, file: !3, line: 1328, type: !1321)
!3926 = !DILocalVariable(name: "insn", scope: !3923, file: !3, line: 1329, type: !1010)
!3927 = !DILocation(line: 1331, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1331, column: 7)
!3929 = !DILocation(line: 1331, column: 7, scope: !3923)
!3930 = !DILocation(line: 1332, column: 5, scope: !3928)
!3931 = !DILocation(line: 1334, column: 23, scope: !3928)
!3932 = !DILocation(line: 1334, column: 21, scope: !3928)
!3933 = !DILocation(line: 1336, column: 3, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1336, column: 3)
!3935 = !DILocation(line: 1336, column: 3, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1336, column: 3)
!3937 = !DILocation(line: 0, scope: !3934)
!3938 = !DILocation(line: 0, scope: !3923)
!3939 = !DILocation(line: 1337, column: 5, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 1337, column: 5)
!3941 = !DILocation(line: 0, scope: !3940)
!3942 = !DILocation(line: 1337, column: 5, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 1337, column: 5)
!3944 = !DILocation(line: 1338, column: 9, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1338, column: 9)
!3946 = !DILocation(line: 1338, column: 9, scope: !3943)
!3947 = !DILocation(line: 1339, column: 29, scope: !3945)
!3948 = !DILocation(line: 1339, column: 7, scope: !3945)
!3949 = distinct !{!3949, !3939, !3950}
!3950 = !DILocation(line: 1339, column: 43, scope: !3940)
!3951 = !DILocation(line: 0, scope: !3936)
!3952 = distinct !{!3952, !3933, !3953}
!3953 = !DILocation(line: 1339, column: 43, scope: !3934)
!3954 = !DILocation(line: 1340, column: 1, scope: !3923)
!3955 = distinct !DISubprogram(name: "som_hash", scope: !3, file: !3, line: 1252, type: !1436, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3956)
!3956 = !{!3957, !3958}
!3957 = !DILocalVariable(name: "x", arg: 1, scope: !3955, file: !3, line: 1252, type: !1439)
!3958 = !DILocalVariable(name: "a", scope: !3955, file: !3, line: 1254, type: !3959)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!3960 = !DILocation(line: 0, scope: !3955)
!3961 = !DILocation(line: 1256, column: 13, scope: !3955)
!3962 = !DILocation(line: 1256, column: 3, scope: !3955)
!3963 = distinct !DISubprogram(name: "som_eq", scope: !3, file: !3, line: 1260, type: !1444, scopeLine: 1261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DILocalVariable(name: "x", arg: 1, scope: !3963, file: !3, line: 1260, type: !1439)
!3966 = !DILocalVariable(name: "y", arg: 2, scope: !3963, file: !3, line: 1260, type: !1439)
!3967 = !DILocalVariable(name: "a", scope: !3963, file: !3, line: 1262, type: !3959)
!3968 = !DILocalVariable(name: "b", scope: !3963, file: !3, line: 1264, type: !3959)
!3969 = !DILocation(line: 0, scope: !3963)
!3970 = !DILocation(line: 1266, column: 13, scope: !3963)
!3971 = !DILocation(line: 1266, column: 25, scope: !3963)
!3972 = !DILocation(line: 1266, column: 19, scope: !3963)
!3973 = !DILocation(line: 1266, column: 3, scope: !3963)
!3974 = distinct !DISubprogram(name: "find_subregs_of_mode", scope: !3, file: !3, line: 1302, type: !3975, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !1010}
!3977 = !{!3978, !3979, !3980, !3981, !3982}
!3978 = !DILocalVariable(name: "x", arg: 1, scope: !3974, file: !3, line: 1302, type: !1010)
!3979 = !DILocalVariable(name: "code", scope: !3974, file: !3, line: 1304, type: !612)
!3980 = !DILocalVariable(name: "fmt", scope: !3974, file: !3, line: 1305, type: !842)
!3981 = !DILocalVariable(name: "i", scope: !3974, file: !3, line: 1306, type: !758)
!3982 = !DILocalVariable(name: "j", scope: !3983, file: !3, line: 1318, type: !758)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1317, column: 2)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 1316, column: 16)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1314, column: 11)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 1313, column: 5)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1312, column: 3)
!3988 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 1312, column: 3)
!3989 = !DILocation(line: 0, scope: !3974)
!3990 = !DILocation(line: 1304, column: 24, scope: !3974)
!3991 = !DILocation(line: 1305, column: 28, scope: !3974)
!3992 = !DILocation(line: 1308, column: 12, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 1308, column: 7)
!3994 = !DILocation(line: 1308, column: 7, scope: !3974)
!3995 = !DILocation(line: 1309, column: 5, scope: !3993)
!3996 = !DILocation(line: 1312, column: 12, scope: !3988)
!3997 = !DILocation(line: 0, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1319, column: 4)
!3999 = !DILocation(line: 1312, column: 8, scope: !3988)
!4000 = !DILocation(line: 0, scope: !3988)
!4001 = !DILocation(line: 1312, column: 41, scope: !3987)
!4002 = !DILocation(line: 1312, column: 3, scope: !3988)
!4003 = !DILocation(line: 1314, column: 11, scope: !3985)
!4004 = !DILocation(line: 1314, column: 18, scope: !3985)
!4005 = !DILocation(line: 1314, column: 11, scope: !3986)
!4006 = !DILocation(line: 1315, column: 24, scope: !3985)
!4007 = !DILocation(line: 1315, column: 2, scope: !3985)
!4008 = !DILocation(line: 1316, column: 23, scope: !3984)
!4009 = !DILocation(line: 1316, column: 16, scope: !3985)
!4010 = !DILocation(line: 1319, column: 13, scope: !3998)
!4011 = !DILocation(line: 0, scope: !3983)
!4012 = !DILocation(line: 1319, column: 9, scope: !3998)
!4013 = !DILocation(line: 1319, column: 35, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 1319, column: 4)
!4015 = !DILocation(line: 1319, column: 4, scope: !3998)
!4016 = !DILocation(line: 1320, column: 28, scope: !4014)
!4017 = !DILocation(line: 1320, column: 6, scope: !4014)
!4018 = !DILocation(line: 1319, column: 4, scope: !4014)
!4019 = distinct !{!4019, !4015, !4020}
!4020 = !DILocation(line: 1320, column: 45, scope: !3998)
!4021 = !DILocation(line: 1312, column: 3, scope: !3987)
!4022 = distinct !{!4022, !4002, !4023}
!4023 = !DILocation(line: 1322, column: 5, scope: !3988)
!4024 = !DILocation(line: 1323, column: 1, scope: !3974)
!4025 = distinct !DISubprogram(name: "invalid_mode_change_p", scope: !3, file: !3, line: 1345, type: !4026, scopeLine: 1348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!757, !7, !134, !5}
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DILocalVariable(name: "regno", arg: 1, scope: !4025, file: !3, line: 1345, type: !7)
!4030 = !DILocalVariable(name: "rclass", arg: 2, scope: !4025, file: !3, line: 1346, type: !134)
!4031 = !DILocalVariable(name: "from", arg: 3, scope: !4025, file: !3, line: 1347, type: !5)
!4032 = !DILocalVariable(name: "dummy", scope: !4025, file: !3, line: 1349, type: !784)
!4033 = !DILocalVariable(name: "node", scope: !4025, file: !3, line: 1349, type: !783)
!4034 = !DILocalVariable(name: "to", scope: !4025, file: !3, line: 1350, type: !7)
!4035 = !DILocalVariable(name: "mask", scope: !4025, file: !3, line: 1351, type: !757)
!4036 = !DILocation(line: 0, scope: !4025)
!4037 = !DILocation(line: 1349, column: 3, scope: !4025)
!4038 = !DILocation(line: 1353, column: 3, scope: !4025)
!4039 = !DILocation(line: 1356, column: 26, scope: !4025)
!4040 = !DILocation(line: 1354, column: 23, scope: !4025)
!4041 = !DILocation(line: 1354, column: 9, scope: !4025)
!4042 = !DILocation(line: 1354, column: 15, scope: !4025)
!4043 = !DILocation(line: 1356, column: 5, scope: !4025)
!4044 = !DILocation(line: 1357, column: 12, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1357, column: 7)
!4046 = !DILocation(line: 1357, column: 7, scope: !4025)
!4047 = !DILocation(line: 1360, column: 22, scope: !4025)
!4048 = !DILocation(line: 1360, column: 12, scope: !4025)
!4049 = !DILocation(line: 0, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1362, column: 9)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 1361, column: 3)
!4052 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1361, column: 3)
!4053 = !DILocation(line: 1361, column: 8, scope: !4052)
!4054 = !DILocation(line: 0, scope: !4052)
!4055 = !DILocation(line: 1361, column: 26, scope: !4051)
!4056 = !DILocation(line: 1361, column: 3, scope: !4052)
!4057 = !DILocation(line: 1362, column: 9, scope: !4050)
!4058 = !DILocation(line: 1362, column: 25, scope: !4050)
!4059 = !DILocation(line: 1362, column: 9, scope: !4051)
!4060 = !DILocation(line: 1363, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 1363, column: 11)
!4062 = !DILocation(line: 1363, column: 11, scope: !4050)
!4063 = !DILocation(line: 1361, column: 49, scope: !4051)
!4064 = !DILocation(line: 1361, column: 3, scope: !4051)
!4065 = distinct !{!4065, !4056, !4066}
!4066 = !DILocation(line: 1364, column: 9, scope: !4052)
!4067 = !DILocation(line: 1367, column: 1, scope: !4025)
!4068 = distinct !DISubprogram(name: "finish_subregs_of_mode", scope: !3, file: !3, line: 1370, type: !2640, scopeLine: 1371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!4069 = !DILocation(line: 1372, column: 16, scope: !4068)
!4070 = !DILocation(line: 1372, column: 3, scope: !4068)
!4071 = !DILocation(line: 1373, column: 19, scope: !4068)
!4072 = !DILocation(line: 1374, column: 1, scope: !4068)
!4073 = distinct !DISubprogram(name: "restore_register_info", scope: !3, file: !3, line: 385, type: !2640, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!4074 = !DILocation(line: 387, column: 3, scope: !4073)
!4075 = !DILocation(line: 388, column: 3, scope: !4073)
!4076 = !DILocation(line: 395, column: 3, scope: !4073)
!4077 = !DILocation(line: 396, column: 1, scope: !4073)
!4078 = distinct !DISubprogram(name: "rhs_regno", scope: !613, file: !613, line: 1051, type: !4079, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4084)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!7, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !914, line: 51, baseType: !4082)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!4084 = !{!4085}
!4085 = !DILocalVariable(name: "x", arg: 1, scope: !4078, file: !613, line: 1051, type: !4081)
!4086 = !DILocation(line: 0, scope: !4078)
!4087 = !DILocation(line: 1053, column: 10, scope: !4078)
!4088 = !DILocation(line: 1053, column: 3, scope: !4078)
!4089 = distinct !DISubprogram(name: "record_subregs_of_mode", scope: !3, file: !3, line: 1270, type: !3975, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096}
!4091 = !DILocalVariable(name: "subreg", arg: 1, scope: !4089, file: !3, line: 1270, type: !1010)
!4092 = !DILocalVariable(name: "dummy", scope: !4089, file: !3, line: 1272, type: !784)
!4093 = !DILocalVariable(name: "node", scope: !4089, file: !3, line: 1272, type: !783)
!4094 = !DILocalVariable(name: "mode", scope: !4089, file: !3, line: 1273, type: !5)
!4095 = !DILocalVariable(name: "regno", scope: !4089, file: !3, line: 1274, type: !7)
!4096 = !DILocalVariable(name: "slot", scope: !4089, file: !3, line: 1275, type: !1449)
!4097 = !DILocation(line: 0, scope: !4089)
!4098 = !DILocation(line: 1272, column: 3, scope: !4089)
!4099 = !DILocation(line: 1277, column: 8, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 1277, column: 7)
!4101 = !DILocation(line: 1277, column: 7, scope: !4089)
!4102 = !DILocation(line: 1280, column: 11, scope: !4089)
!4103 = !DILocation(line: 1281, column: 10, scope: !4089)
!4104 = !DILocation(line: 1283, column: 13, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 1283, column: 7)
!4106 = !DILocation(line: 1283, column: 7, scope: !4089)
!4107 = !DILocation(line: 1286, column: 23, scope: !4089)
!4108 = !DILocation(line: 1286, column: 9, scope: !4089)
!4109 = !DILocation(line: 1286, column: 15, scope: !4089)
!4110 = !DILocation(line: 1287, column: 36, scope: !4089)
!4111 = !DILocation(line: 1287, column: 10, scope: !4089)
!4112 = !DILocation(line: 1289, column: 42, scope: !4089)
!4113 = !DILocation(line: 1290, column: 12, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 1290, column: 7)
!4115 = !DILocation(line: 1290, column: 7, scope: !4089)
!4116 = !DILocation(line: 1292, column: 14, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1291, column: 5)
!4118 = !DILocation(line: 1293, column: 13, scope: !4117)
!4119 = !DILocation(line: 1293, column: 19, scope: !4117)
!4120 = !DILocation(line: 1294, column: 13, scope: !4117)
!4121 = !DILocation(line: 1295, column: 5, scope: !4117)
!4122 = !DILocation(line: 1297, column: 36, scope: !4089)
!4123 = !DILocation(line: 1297, column: 26, scope: !4089)
!4124 = !DILocation(line: 1297, column: 3, scope: !4089)
!4125 = !DILocation(line: 1297, column: 21, scope: !4089)
!4126 = !DILocation(line: 1298, column: 1, scope: !4089)
