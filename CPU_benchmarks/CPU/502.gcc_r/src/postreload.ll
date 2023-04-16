; ModuleID = 'postreload.bc'
source_filename = "postreload.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
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
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.anon = type { [6 x %struct.reg_use], i32, %struct.rtx_def*, i32, i32 }
%struct.reg_use = type { %struct.rtx_def*, %struct.rtx_def** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.cselib_val_struct = type { i32, i32, %struct.rtx_def*, %struct.elt_loc_list*, %struct.elt_list*, %struct.cselib_val_struct* }
%struct.elt_loc_list = type { %struct.elt_loc_list*, %struct.rtx_def*, %struct.rtx_def* }
%struct.elt_list = type { %struct.elt_list*, %struct.cselib_val_struct* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_expensive_optimizations = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"postreload\00", align 1
@pass_postreload_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_postreload, i32 ()* @rest_of_handle_postreload, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 150, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !0
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"postreload.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_class_subunion = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@which_alternative = external dso_local local_unnamed_addr global i32, align 4
@double_reg_address_ok = external dso_local local_unnamed_addr global i8, align 1
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@reload_combine_ruid = internal unnamed_addr global i32 0, align 4, !dbg !2001
@reg_state = internal unnamed_addr global [53 x %struct.anon] zeroinitializer, align 16, !dbg !2003
@fixed_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@reg_set_luid = internal unnamed_addr global [53 x i32] zeroinitializer, align 16, !dbg !2023
@move2add_last_label_luid = internal unnamed_addr global i32 0, align 4, !dbg !2026
@move2add_luid = internal unnamed_addr global i32 0, align 4, !dbg !2028
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@reg_mode = internal unnamed_addr global [53 x i32] zeroinitializer, align 16, !dbg !2030
@reg_base_reg = internal unnamed_addr global [53 x i32] zeroinitializer, align 16, !dbg !2033
@reg_offset = internal unnamed_addr global [53 x i64] zeroinitializer, align 16, !dbg !2035
@class_narrowest_mode = external dso_local local_unnamed_addr constant [18 x i8], align 16
@mode_mask_array = external dso_local local_unnamed_addr constant [87 x i64], align 16
@mode_wider = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@optimize = external dso_local local_unnamed_addr global i32, align 4
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2082, metadata !DIExpression()), !dbg !2083
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2084
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2085
  ret i32 %call, !dbg !2086
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2087 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2091
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2092
  ret i32 %call, !dbg !2093
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2148, metadata !DIExpression()), !dbg !2149
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2150
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2150
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2150
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2150
  %cmp = icmp uge i8* %0, %1, !dbg !2150
  %conv1 = zext i1 %cmp to i64, !dbg !2150
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2150
  %tobool = icmp eq i64 %expval, 0, !dbg !2150
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2150

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2150
  br label %cond.end, !dbg !2150

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2150
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2150
  %2 = load i8, i8* %0, align 1, !dbg !2150
  %conv3 = zext i8 %2 to i32, !dbg !2150
  br label %cond.end, !dbg !2150

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2150
  ret i32 %cond, !dbg !2151
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2152 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2154, metadata !DIExpression()), !dbg !2155
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2156
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2156
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2156
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2156
  %cmp = icmp uge i8* %0, %1, !dbg !2156
  %conv1 = zext i1 %cmp to i64, !dbg !2156
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2156
  %tobool = icmp eq i64 %expval, 0, !dbg !2156
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2156

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2156
  br label %cond.end, !dbg !2156

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2156
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2156
  %2 = load i8, i8* %0, align 1, !dbg !2156
  %conv3 = zext i8 %2 to i32, !dbg !2156
  br label %cond.end, !dbg !2156

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2156
  ret i32 %cond, !dbg !2157
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2158 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2159
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2159
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2159
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2159
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2159
  %cmp = icmp uge i8* %1, %2, !dbg !2159
  %conv1 = zext i1 %cmp to i64, !dbg !2159
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2159
  %tobool = icmp eq i64 %expval, 0, !dbg !2159
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2159

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2159
  br label %cond.end, !dbg !2159

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2159
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2159
  %3 = load i8, i8* %1, align 1, !dbg !2159
  %conv3 = zext i8 %3 to i32, !dbg !2159
  br label %cond.end, !dbg !2159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2159
  ret i32 %cond, !dbg !2160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2165, metadata !DIExpression()), !dbg !2166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2167
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2168
  ret i32 %call, !dbg !2169
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2175, metadata !DIExpression()), !dbg !2176
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2177
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2177
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2177
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2177
  %cmp = icmp uge i8* %0, %1, !dbg !2177
  %conv1 = zext i1 %cmp to i64, !dbg !2177
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2177
  %tobool = icmp eq i64 %expval, 0, !dbg !2177
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2177

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2177
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2177
  br label %cond.end, !dbg !2177

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2177
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2177
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2177
  store i8 %conv2, i8* %0, align 1, !dbg !2177
  %conv6 = and i32 %__c, 255, !dbg !2177
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2177
  ret i32 %cond, !dbg !2178
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2182, metadata !DIExpression()), !dbg !2183
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2184
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2184
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2184
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2184
  %cmp = icmp uge i8* %0, %1, !dbg !2184
  %conv1 = zext i1 %cmp to i64, !dbg !2184
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2184
  %tobool = icmp eq i64 %expval, 0, !dbg !2184
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2184

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2184
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2184
  br label %cond.end, !dbg !2184

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2184
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2184
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2184
  store i8 %conv2, i8* %0, align 1, !dbg !2184
  %conv6 = and i32 %__c, 255, !dbg !2184
  br label %cond.end, !dbg !2184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2184
  ret i32 %cond, !dbg !2185
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2188, metadata !DIExpression()), !dbg !2189
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2190
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2190
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2190
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2190
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2190
  %cmp = icmp uge i8* %1, %2, !dbg !2190
  %conv1 = zext i1 %cmp to i64, !dbg !2190
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2190
  %tobool = icmp eq i64 %expval, 0, !dbg !2190
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2190

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2190
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2190
  br label %cond.end, !dbg !2190

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2190
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2190
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2190
  store i8 %conv4, i8* %1, align 1, !dbg !2190
  %conv6 = and i32 %__c, 255, !dbg !2190
  br label %cond.end, !dbg !2190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2190
  ret i32 %cond, !dbg !2191
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2200, metadata !DIExpression()), !dbg !2201
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2202
  ret i64 %call, !dbg !2203
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2204 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2206, metadata !DIExpression()), !dbg !2207
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2208
  %0 = load i32, i32* %_flags, align 8, !dbg !2208
  %and = lshr i32 %0, 4, !dbg !2208
  %and.lobit = and i32 %and, 1, !dbg !2208
  ret i32 %and.lobit, !dbg !2209
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2210 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2212, metadata !DIExpression()), !dbg !2213
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2214
  %0 = load i32, i32* %_flags, align 8, !dbg !2214
  %and = lshr i32 %0, 5, !dbg !2214
  %and.lobit = and i32 %and, 1, !dbg !2214
  ret i32 %and.lobit, !dbg !2215
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2219, metadata !DIExpression()), !dbg !2220
  %__c.off = add i32 %__c, 128, !dbg !2221
  %0 = icmp ult i32 %__c.off, 384, !dbg !2221
  br i1 %0, label %cond.true, label %cond.end, !dbg !2221

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2222
  %1 = load i32*, i32** %call, align 8, !dbg !2223
  %idxprom = sext i32 %__c to i64, !dbg !2224
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2224
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2224
  br label %cond.end, !dbg !2225

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2225
  ret i32 %cond, !dbg !2226
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2229, metadata !DIExpression()), !dbg !2230
  %__c.off = add i32 %__c, 128, !dbg !2231
  %0 = icmp ult i32 %__c.off, 384, !dbg !2231
  br i1 %0, label %cond.true, label %cond.end, !dbg !2231

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2232
  %1 = load i32*, i32** %call, align 8, !dbg !2233
  %idxprom = sext i32 %__c to i64, !dbg !2234
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2234
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2234
  br label %cond.end, !dbg !2235

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2235
  ret i32 %cond, !dbg !2236
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2242, metadata !DIExpression()), !dbg !2243
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2244
  %conv = trunc i64 %call to i32, !dbg !2245
  ret i32 %conv, !dbg !2246
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2251, metadata !DIExpression()), !dbg !2252
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2253
  ret i64 %call, !dbg !2254
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2260, metadata !DIExpression()), !dbg !2261
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2262
  ret i64 %call, !dbg !2263
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2270, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2271, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2272, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2273, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2274, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2275, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2276, metadata !DIExpression()), !dbg !2280
  br label %while.cond, !dbg !2281

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2282
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2276, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2275, metadata !DIExpression()), !dbg !2280
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2283
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2281

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2284
  %div = lshr i64 %add, 1, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %div, metadata !2277, metadata !DIExpression()), !dbg !2280
  %mul = mul i64 %div, %__size, !dbg !2287
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2278, metadata !DIExpression()), !dbg !2280
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %call, metadata !2279, metadata !DIExpression()), !dbg !2280
  %cmp1 = icmp slt i32 %call, 0, !dbg !2290
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2292

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2293
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2295

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2275, metadata !DIExpression()), !dbg !2280
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2280
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2276, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2275, metadata !DIExpression()), !dbg !2280
  br label %while.cond, !dbg !2281, !llvm.loop !2297

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2280
  ret i8* %retval.0, !dbg !2299
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2308
  ret double %call, !dbg !2309
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %base, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2323
  ret i64 %call, !dbg !2324
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %base, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2335
  ret i64 %call, !dbg !2336
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %base, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2352
  ret i64 %call, !dbg !2353
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %base, metadata !2360, metadata !DIExpression()), !dbg !2361
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2362
  ret i64 %call, !dbg !2363
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2421, metadata !DIExpression()), !dbg !2422
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2423
  ret i32 %call, !dbg !2424
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2425 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2432, metadata !DIExpression()), !dbg !2433
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2436 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2442, metadata !DIExpression()), !dbg !2443
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2442, metadata !DIExpression(DW_OP_deref)), !dbg !2443
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2444
  ret i32 %call, !dbg !2445
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2446 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2450, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2453, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2455
  ret i32 %call, !dbg !2456
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2457 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2482, metadata !DIExpression()), !dbg !2483
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2484
  ret i32 %call, !dbg !2485
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2486 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2489, metadata !DIExpression()), !dbg !2490
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2491
  ret i32 %call, !dbg !2492
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2493 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2498, metadata !DIExpression()), !dbg !2499
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2500
  ret i32 %call, !dbg !2501
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2502 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2509, metadata !DIExpression()), !dbg !2510
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2511
  ret i32 %call, !dbg !2512
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reload_cse_regs(%struct.rtx_def* %first) local_unnamed_addr #5 !dbg !2513 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2517, metadata !DIExpression()), !dbg !2518
  tail call fastcc void @reload_cse_regs_1(%struct.rtx_def* %first) #7, !dbg !2519
  tail call fastcc void @reload_combine() #7, !dbg !2520
  tail call fastcc void @reload_cse_move2add(%struct.rtx_def* %first) #7, !dbg !2521
  %0 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2522
  %tobool = icmp eq i32 %0, 0, !dbg !2522
  br i1 %tobool, label %if.end, label %if.then, !dbg !2524

if.then:                                          ; preds = %entry
  tail call fastcc void @reload_cse_regs_1(%struct.rtx_def* %first) #7, !dbg !2525
  br label %if.end, !dbg !2525

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2526
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_cse_regs_1(%struct.rtx_def* %first) unnamed_addr #5 !dbg !2527 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2529, metadata !DIExpression()), !dbg !2532
  %call = tail call %struct.rtx_def* @gen_rtx_REG(i32 0, i32 -1) #6, !dbg !2533
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2531, metadata !DIExpression()), !dbg !2532
  tail call void @cselib_init(i32 1) #6, !dbg !2534
  tail call void @init_alias_analysis() #6, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2530, metadata !DIExpression()), !dbg !2532
  br label %for.cond, !dbg !2536

for.cond:                                         ; preds = %if.end, %entry
  %insn.0 = phi %struct.rtx_def* [ %first, %entry ], [ %2, %if.end ], !dbg !2538
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2530, metadata !DIExpression()), !dbg !2532
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2539
  br i1 %tobool, label %for.end, label %for.body, !dbg !2539

for.body:                                         ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2540
  %bf.load = load i32, i32* %0, align 8, !dbg !2540
  %bf.clear = and i32 %bf.load, 65535, !dbg !2540
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2540
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2540

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !2540
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !2540

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !2540
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !2540

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !2540
  br i1 %cmp11, label %if.then, label %if.end, !dbg !2544

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %for.body
  tail call fastcc void @reload_cse_simplify(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %call) #7, !dbg !2545
  br label %if.end, !dbg !2545

if.end:                                           ; preds = %if.then, %lor.lhs.false8
  tail call void @cselib_process_insn(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2546
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2547
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !2547
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2530, metadata !DIExpression()), !dbg !2532
  br label %for.cond, !dbg !2548, !llvm.loop !2549

for.end:                                          ; preds = %for.cond
  tail call void @end_alias_analysis() #6, !dbg !2551
  tail call void @cselib_finish() #6, !dbg !2552
  ret void, !dbg !2553
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_combine() unnamed_addr #5 !dbg !2554 {
entry:
  %ever_live_at_start = alloca i64, align 8
  %live = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 -1, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2617
  %0 = bitcast i64* %ever_live_at_start to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2618
  %1 = load i8, i8* @double_reg_address_ok, align 1, !dbg !2619
  %tobool = icmp eq i8 %1, 0, !dbg !2619
  br i1 %tobool, label %for.cond.preheader, label %cleanup725, !dbg !2621

for.cond.preheader:                               ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 11), align 8, !dbg !2622
  br label %for.cond, !dbg !2626

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv27 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next28, %for.body ], !dbg !2627
  %last_index_reg.0 = phi i32 [ 0, %for.cond.preheader ], [ %last_index_reg.1, %for.body ], !dbg !2617
  %first_index_reg.0 = phi i32 [ -1, %for.cond.preheader ], [ %first_index_reg.2, %for.body ], !dbg !2617
  call void @llvm.dbg.value(metadata i32 %first_index_reg.0, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_index_reg.0, metadata !2561, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !2564, metadata !DIExpression()), !dbg !2617
  %exitcond29 = icmp eq i64 %indvars.iv27, 53, !dbg !2628
  br i1 %exitcond29, label %for.end, label %for.body, !dbg !2626

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv27, !dbg !2629
  %and = and i64 %2, %shl, !dbg !2629
  %tobool2 = icmp ne i64 %and, 0, !dbg !2629
  %cmp4 = icmp eq i32 %first_index_reg.0, -1, !dbg !2630
  %3 = trunc i64 %indvars.iv27 to i32, !dbg !2630
  %last_index_reg.1 = select i1 %tobool2, i32 %3, i32 %last_index_reg.0, !dbg !2630
  %4 = and i1 %tobool2, %cmp4, !dbg !2630
  %5 = trunc i64 %indvars.iv27 to i32, !dbg !2630
  %first_index_reg.2 = select i1 %4, i32 %5, i32 %first_index_reg.0, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %first_index_reg.2, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_index_reg.1, metadata !2561, metadata !DIExpression()), !dbg !2617
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2617
  br label %for.cond, !dbg !2632, !llvm.loop !2633

for.end:                                          ; preds = %for.cond
  %last_index_reg.0.lcssa = phi i32 [ %last_index_reg.0, %for.cond ], !dbg !2617
  %first_index_reg.0.lcssa = phi i32 [ %first_index_reg.0, %for.cond ], !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_index_reg.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %first_index_reg.0.lcssa, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_index_reg.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %first_index_reg.0.lcssa, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_index_reg.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %first_index_reg.0.lcssa, metadata !2560, metadata !DIExpression()), !dbg !2617
  %cmp9 = icmp eq i32 %first_index_reg.0.lcssa, -1, !dbg !2635
  br i1 %cmp9, label %cleanup725, label %if.end12, !dbg !2637

if.end12:                                         ; preds = %for.end
  %call = tail call i32 @get_first_label_num() #6, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %call, metadata !2566, metadata !DIExpression()), !dbg !2617
  %call13 = tail call i32 @max_label_num() #6, !dbg !2639
  %sub = sub nsw i32 %call13, %call, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2567, metadata !DIExpression()), !dbg !2617
  %conv14 = sext i32 %sub to i64, !dbg !2641
  %mul = shl nsw i64 %conv14, 3, !dbg !2641
  %call15 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2641
  %6 = bitcast i8* %call15 to i64*, !dbg !2641
  call void @llvm.dbg.value(metadata i64* %6, metadata !2569, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 0, metadata !2568, metadata !DIExpression()), !dbg !2617
  store i64 0, i64* %ever_live_at_start, align 8, !dbg !2642
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2643
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2643
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2643
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !2643
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2643
  %10 = bitcast i64* %live to i8*, !dbg !2644
  br label %for.cond16, !dbg !2643

for.cond16:                                       ; preds = %for.inc29, %if.end12
  %.pre8 = phi %struct.function* [ %7, %if.end12 ], [ %.pre, %for.inc29 ]
  %11 = phi %struct.control_flow_graph* [ %8, %if.end12 ], [ %.pre7, %for.inc29 ], !dbg !2645
  %or6 = phi i64 [ 0, %if.end12 ], [ %or5, %for.inc29 ]
  %.pn = phi %struct.basic_block_def* [ %9, %if.end12 ], [ %bb.0, %for.inc29 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2646
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2563, metadata !DIExpression()), !dbg !2617
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2645
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2645
  %cmp19 = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !2645
  br i1 %cmp19, label %for.end31, label %for.body21, !dbg !2643

for.body21:                                       ; preds = %for.cond16
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2647
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2647
  %13 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2647
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %13, i64 0, i32 0, !dbg !2647
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !2558, metadata !DIExpression()), !dbg !2617
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !2648
  %bf.load = load i32, i32* %15, align 8, !dbg !2648
  %bf.clear = and i32 %bf.load, 65535, !dbg !2648
  %cmp22 = icmp eq i32 %bf.clear, 12, !dbg !2648
  br i1 %cmp22, label %if.then24, label %for.inc29, !dbg !2649

if.then24:                                        ; preds = %for.body21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2650
  %call25 = call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %bb.0) #6, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call25, metadata !2576, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 0, metadata !2570, metadata !DIExpression()), !dbg !2644
  store i64 0, i64* %live, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata i64* %live, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2644
  call void @reg_set_to_hard_reg_set(i64* nonnull %live, %struct.bitmap_head_def* %call25) #6, !dbg !2652
  call void @llvm.dbg.value(metadata i64* %live, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2644
  call void @compute_use_by_pseudos(i64* nonnull %live, %struct.bitmap_head_def* %call25) #6, !dbg !2654
  %16 = load i64, i64* %live, align 8, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %16, metadata !2570, metadata !DIExpression()), !dbg !2644
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, !dbg !2655
  %17 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 1, !dbg !2655
  %rt_int = bitcast %union.rtunion_def* %17 to i32*, !dbg !2655
  %18 = load i32, i32* %rt_int, align 8, !dbg !2655
  %sub26 = sub nsw i32 %18, %call, !dbg !2655
  %idxprom = sext i32 %sub26 to i64, !dbg !2655
  %arrayidx27 = getelementptr inbounds i64, i64* %6, i64 %idxprom, !dbg !2655
  store i64 %16, i64* %arrayidx27, align 8, !dbg !2655
  %19 = load i64, i64* %live, align 8, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %19, metadata !2570, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 %or6, metadata !2568, metadata !DIExpression()), !dbg !2617
  %or = or i64 %or6, %19, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %or, metadata !2568, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2657
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2645
  br label %for.inc29, !dbg !2658

for.inc29:                                        ; preds = %for.body21, %if.then24
  %.pre = phi %struct.function* [ %.pre8, %for.body21 ], [ %.pre.pre, %if.then24 ], !dbg !2645
  %or5 = phi i64 [ %or6, %for.body21 ], [ %or, %if.then24 ]
  %cfg18.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2659
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18.phi.trans.insert, align 8, !dbg !2645
  br label %for.cond16, !dbg !2645, !llvm.loop !2660

for.end31:                                        ; preds = %for.cond16
  %or6.lcssa = phi i64 [ %or6, %for.cond16 ]
  store i64 %or6.lcssa, i64* %ever_live_at_start, align 8, !dbg !2656
  store i32 0, i32* @reload_combine_ruid, align 4, !dbg !2662
  call void @llvm.dbg.value(metadata i32 0, metadata !2565, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2617
  br label %for.cond32, !dbg !2663

for.cond32:                                       ; preds = %for.inc48, %for.end31
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc48 ], [ 0, %for.end31 ], !dbg !2665
  call void @llvm.dbg.value(metadata i64 %indvars.iv24, metadata !2564, metadata !DIExpression()), !dbg !2617
  %exitcond26 = icmp eq i64 %indvars.iv24, 53, !dbg !2666
  br i1 %exitcond26, label %for.end50, label %for.body35, !dbg !2668

for.body35:                                       ; preds = %for.cond32
  %store_ruid = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv24, i32 3, !dbg !2669
  store i32 0, i32* %store_ruid, align 8, !dbg !2671
  %arrayidx39 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv24, !dbg !2672
  %20 = load i8, i8* %arrayidx39, align 1, !dbg !2672
  %tobool40 = icmp eq i8 %20, 0, !dbg !2672
  %use_index = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv24, i32 1, !dbg !2674
  br i1 %tobool40, label %if.else, label %if.then41, !dbg !2675

if.then41:                                        ; preds = %for.body35
  br label %for.inc48, !dbg !2676

if.else:                                          ; preds = %for.body35
  br label %for.inc48

for.inc48:                                        ; preds = %if.then41, %if.else
  %storemerge = phi i32 [ 6, %if.else ], [ -1, %if.then41 ], !dbg !2674
  store i32 %storemerge, i32* %use_index, align 8, !dbg !2674
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2617
  br label %for.cond32, !dbg !2678, !llvm.loop !2679

for.end50:                                        ; preds = %for.cond32
  %call51 = call %struct.rtx_def* @get_last_insn() #6, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call51, metadata !2558, metadata !DIExpression()), !dbg !2617
  %21 = sext i32 %first_index_reg.0.lcssa to i64, !dbg !2682
  %22 = sext i32 %last_index_reg.0.lcssa to i64, !dbg !2682
  br label %for.cond52, !dbg !2682

for.cond52:                                       ; preds = %cleanup716, %for.end50
  %last_label_ruid.0 = phi i32 [ 0, %for.end50 ], [ %last_label_ruid.1, %cleanup716 ], !dbg !2617
  %insn.0 = phi %struct.rtx_def* [ %call51, %for.end50 ], [ %120, %cleanup716 ], !dbg !2683
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2558, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_label_ruid.0, metadata !2565, metadata !DIExpression()), !dbg !2617
  %tobool53 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2684
  br i1 %tobool53, label %for.end724, label %for.body54, !dbg !2684

for.body54:                                       ; preds = %for.cond52
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2685
  %bf.load55 = load i32, i32* %23, align 8, !dbg !2685
  %bf.clear56 = and i32 %bf.load55, 65535, !dbg !2685
  %cmp57 = icmp eq i32 %bf.clear56, 12, !dbg !2685
  br i1 %cmp57, label %if.then59, label %if.else60, !dbg !2687

if.then59:                                        ; preds = %for.body54
  %24 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %24, metadata !2565, metadata !DIExpression()), !dbg !2617
  br label %if.end82, !dbg !2689

if.else60:                                        ; preds = %for.body54
  %cmp63 = icmp eq i32 %bf.clear56, 11, !dbg !2690
  br i1 %cmp63, label %for.cond66.preheader, label %if.end82, !dbg !2692

for.cond66.preheader:                             ; preds = %if.else60
  br label %for.cond66, !dbg !2693

for.cond66:                                       ; preds = %for.cond66.preheader, %for.inc78
  %indvars.iv = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next, %for.inc78 ], !dbg !2695
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2564, metadata !DIExpression()), !dbg !2617
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2696
  br i1 %exitcond, label %if.end82.loopexit, label %for.body69, !dbg !2693

for.body69:                                       ; preds = %for.cond66
  %arrayidx71 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv, !dbg !2698
  %25 = load i8, i8* %arrayidx71, align 1, !dbg !2698
  %tobool72 = icmp eq i8 %25, 0, !dbg !2698
  br i1 %tobool72, label %if.then73, label %for.inc78, !dbg !2700

if.then73:                                        ; preds = %for.body69
  %use_index76 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv, i32 1, !dbg !2701
  store i32 6, i32* %use_index76, align 8, !dbg !2702
  br label %for.inc78, !dbg !2703

for.inc78:                                        ; preds = %for.body69, %if.then73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2617
  br label %for.cond66, !dbg !2705, !llvm.loop !2706

if.end82.loopexit:                                ; preds = %for.cond66
  %bf.load83.pre = load i32, i32* %23, align 8, !dbg !2708
  %.pre11 = and i32 %bf.load83.pre, 65535, !dbg !2708
  br label %if.end82, !dbg !2708

if.end82:                                         ; preds = %if.end82.loopexit, %if.else60, %if.then59
  %bf.clear84.pre-phi = phi i32 [ %.pre11, %if.end82.loopexit ], [ %bf.clear56, %if.else60 ], [ 12, %if.then59 ], !dbg !2708
  %last_label_ruid.1 = phi i32 [ %last_label_ruid.0, %if.end82.loopexit ], [ %last_label_ruid.0, %if.else60 ], [ %24, %if.then59 ], !dbg !2617
  call void @llvm.dbg.value(metadata i32 %last_label_ruid.1, metadata !2565, metadata !DIExpression()), !dbg !2617
  %cmp85 = icmp eq i32 %bf.clear84.pre-phi, 8, !dbg !2708
  br i1 %cmp85, label %if.end102, label %lor.lhs.false, !dbg !2708

lor.lhs.false:                                    ; preds = %if.end82
  %cmp89 = icmp eq i32 %bf.clear84.pre-phi, 7, !dbg !2708
  br i1 %cmp89, label %if.end102, label %lor.lhs.false91, !dbg !2708

lor.lhs.false91:                                  ; preds = %lor.lhs.false
  %cmp94 = icmp eq i32 %bf.clear84.pre-phi, 9, !dbg !2708
  br i1 %cmp94, label %if.end102, label %lor.lhs.false96, !dbg !2708

lor.lhs.false96:                                  ; preds = %lor.lhs.false91
  %cmp99 = icmp eq i32 %bf.clear84.pre-phi, 10, !dbg !2708
  br i1 %cmp99, label %if.end102, label %cleanup716, !dbg !2710

if.end102:                                        ; preds = %lor.lhs.false96, %lor.lhs.false91, %lor.lhs.false, %if.end82
  %26 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2711
  %inc103 = add nsw i32 %26, 1, !dbg !2711
  store i32 %inc103, i32* @reload_combine_ruid, align 4, !dbg !2711
  %bf.load104 = load i32, i32* %23, align 8, !dbg !2712
  %bf.clear105 = and i32 %bf.load104, 65535, !dbg !2712
  %cmp106 = icmp eq i32 %bf.clear105, 8, !dbg !2712
  br i1 %cmp106, label %cond.true, label %lor.lhs.false108, !dbg !2712

lor.lhs.false108:                                 ; preds = %if.end102
  %cmp111 = icmp eq i32 %bf.clear105, 7, !dbg !2712
  br i1 %cmp111, label %cond.true, label %lor.lhs.false113, !dbg !2712

lor.lhs.false113:                                 ; preds = %lor.lhs.false108
  %cmp116 = icmp eq i32 %bf.clear105, 9, !dbg !2712
  br i1 %cmp116, label %cond.true, label %lor.lhs.false118, !dbg !2712

lor.lhs.false118:                                 ; preds = %lor.lhs.false113
  %cmp121 = icmp eq i32 %bf.clear105, 10, !dbg !2712
  br i1 %cmp121, label %cond.true, label %cond.end141, !dbg !2712

cond.true:                                        ; preds = %lor.lhs.false118, %lor.lhs.false113, %lor.lhs.false108, %if.end102
  %u123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2712
  %27 = getelementptr inbounds %union.u, %union.u* %u123, i64 1, i32 0, i32 0, i64 0, !dbg !2712
  %28 = bitcast %union.rtunion_def* %27 to i32**, !dbg !2712
  %29 = load i32*, i32** %28, align 8, !dbg !2712
  %bf.load126 = load i32, i32* %29, align 8, !dbg !2712
  %bf.clear127 = and i32 %bf.load126, 65535, !dbg !2712
  %cmp128 = icmp eq i32 %bf.clear127, 23, !dbg !2712
  %30 = bitcast i32* %29 to %struct.rtx_def*, !dbg !2712
  br i1 %cmp128, label %cond.end141, label %cond.false, !dbg !2712

cond.false:                                       ; preds = %cond.true
  %call139 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %30) #6, !dbg !2712
  br label %cond.end141, !dbg !2712

cond.end141:                                      ; preds = %lor.lhs.false118, %cond.false, %cond.true
  %cond142 = phi %struct.rtx_def* [ %call139, %cond.false ], [ %30, %cond.true ], [ null, %lor.lhs.false118 ], !dbg !2712
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond142, metadata !2559, metadata !DIExpression()), !dbg !2617
  %cmp143 = icmp eq %struct.rtx_def* %cond142, null, !dbg !2713
  br i1 %cmp143, label %if.end519, label %land.lhs.true, !dbg !2714

land.lhs.true:                                    ; preds = %cond.end141
  %arrayidx147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond142, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2715
  %31 = bitcast %union.rtunion_def* %arrayidx147 to i32**, !dbg !2715
  %32 = load i32*, i32** %31, align 8, !dbg !2715
  %bf.load149 = load i32, i32* %32, align 8, !dbg !2715
  %bf.clear150 = and i32 %bf.load149, 65535, !dbg !2715
  %cmp151 = icmp eq i32 %bf.clear150, 37, !dbg !2715
  br i1 %cmp151, label %land.lhs.true153, label %if.end519, !dbg !2716

land.lhs.true153:                                 ; preds = %land.lhs.true
  %33 = bitcast i32* %32 to %struct.rtx_def*, !dbg !2716
  %rt_rtx157 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**, !dbg !2717
  %call158 = call fastcc i32 @rhs_regno(%struct.rtx_def* %33) #7, !dbg !2717
  %idxprom159 = zext i32 %call158 to i64, !dbg !2718
  %34 = load i32*, i32** %31, align 8, !dbg !2719
  %bf.load165 = load i32, i32* %34, align 8, !dbg !2719
  %bf.lshr = lshr i32 %bf.load165, 16, !dbg !2719
  %bf.clear166 = and i32 %bf.lshr, 255, !dbg !2719
  %idxprom167 = zext i32 %bf.clear166 to i64, !dbg !2718
  %arrayidx168 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom159, i64 %idxprom167, !dbg !2718
  %35 = load i8, i8* %arrayidx168, align 1, !dbg !2718
  %cmp170 = icmp eq i8 %35, 1, !dbg !2720
  %36 = bitcast i32* %34 to %struct.rtx_def*, !dbg !2721
  br i1 %cmp170, label %land.lhs.true172, label %if.end519, !dbg !2721

land.lhs.true172:                                 ; preds = %land.lhs.true153
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond142, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2722
  %38 = bitcast %union.rtunion_def* %37 to i32**, !dbg !2722
  %39 = load i32*, i32** %38, align 8, !dbg !2722
  %bf.load177 = load i32, i32* %39, align 8, !dbg !2722
  %bf.clear178 = and i32 %bf.load177, 65535, !dbg !2722
  %cmp179 = icmp eq i32 %bf.clear178, 49, !dbg !2723
  br i1 %cmp179, label %land.lhs.true181, label %if.end519, !dbg !2724

land.lhs.true181:                                 ; preds = %land.lhs.true172
  %rt_rtx185 = bitcast %union.rtunion_def* %37 to %struct.rtx_def**, !dbg !2725
  %40 = getelementptr inbounds i32, i32* %39, i64 4, !dbg !2725
  %41 = bitcast i32* %40 to i32**, !dbg !2725
  %42 = load i32*, i32** %41, align 8, !dbg !2725
  %bf.load190 = load i32, i32* %42, align 8, !dbg !2725
  %bf.clear191 = and i32 %bf.load190, 65535, !dbg !2725
  %cmp192 = icmp eq i32 %bf.clear191, 37, !dbg !2725
  br i1 %cmp192, label %land.lhs.true194, label %if.end519, !dbg !2726

land.lhs.true194:                                 ; preds = %land.lhs.true181
  %arrayidx201 = getelementptr inbounds i32, i32* %39, i64 2, !dbg !2727
  %rt_rtx202 = bitcast i32* %arrayidx201 to %struct.rtx_def**, !dbg !2727
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx202, align 8, !dbg !2727
  %call207 = call i32 @rtx_equal_p(%struct.rtx_def* %43, %struct.rtx_def* %36) #6, !dbg !2728
  %tobool208 = icmp eq i32 %call207, 0, !dbg !2728
  br i1 %tobool208, label %if.end519, label %land.lhs.true209, !dbg !2729

land.lhs.true209:                                 ; preds = %land.lhs.true194
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx185, align 8, !dbg !2730
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2730
  %rt_rtx217 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**, !dbg !2730
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx217, align 8, !dbg !2730
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !2731
  %call222 = call i32 @rtx_equal_p(%struct.rtx_def* %46, %struct.rtx_def* %47) #6, !dbg !2732
  %tobool223 = icmp eq i32 %call222, 0, !dbg !2732
  br i1 %tobool223, label %land.lhs.true224, label %if.end519, !dbg !2733

land.lhs.true224:                                 ; preds = %land.lhs.true209
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !2734
  %call229 = call fastcc i32 @rhs_regno(%struct.rtx_def* %48) #7, !dbg !2734
  %idxprom230 = zext i32 %call229 to i64, !dbg !2735
  %use_ruid = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom230, i32 4, !dbg !2736
  %49 = load i32, i32* %use_ruid, align 4, !dbg !2736
  %cmp232 = icmp slt i32 %last_label_ruid.1, %49, !dbg !2737
  br i1 %cmp232, label %if.then234, label %if.end519, !dbg !2738

if.then234:                                       ; preds = %land.lhs.true224
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !2739
  call void @llvm.dbg.value(metadata %struct.rtx_def* %50, metadata !2582, metadata !DIExpression()), !dbg !2740
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx185, align 8, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.rtx_def* %51, metadata !2585, metadata !DIExpression()), !dbg !2740
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2742
  %rt_rtx246 = bitcast %union.rtunion_def* %52 to %struct.rtx_def**, !dbg !2742
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx246, align 8, !dbg !2742
  call void @llvm.dbg.value(metadata %struct.rtx_def* %53, metadata !2586, metadata !DIExpression()), !dbg !2740
  %call247 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2743
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call247, metadata !2587, metadata !DIExpression()), !dbg !2740
  %tobool248 = icmp eq %struct.rtx_def* %call247, null, !dbg !2744
  br i1 %tobool248, label %cond.end295, label %cond.true249, !dbg !2744

cond.true249:                                     ; preds = %if.then234
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call247, i64 0, i32 0, !dbg !2745
  %bf.load250 = load i32, i32* %54, align 8, !dbg !2745
  %bf.clear251 = and i32 %bf.load250, 65535, !dbg !2745
  %cmp252 = icmp eq i32 %bf.clear251, 8, !dbg !2745
  br i1 %cmp252, label %cond.true269, label %lor.lhs.false254, !dbg !2745

lor.lhs.false254:                                 ; preds = %cond.true249
  %cmp257 = icmp eq i32 %bf.clear251, 7, !dbg !2745
  br i1 %cmp257, label %cond.true269, label %lor.lhs.false259, !dbg !2745

lor.lhs.false259:                                 ; preds = %lor.lhs.false254
  %cmp262 = icmp eq i32 %bf.clear251, 9, !dbg !2745
  br i1 %cmp262, label %cond.true269, label %lor.lhs.false264, !dbg !2745

lor.lhs.false264:                                 ; preds = %lor.lhs.false259
  %cmp267 = icmp eq i32 %bf.clear251, 10, !dbg !2745
  br i1 %cmp267, label %cond.true269, label %cond.end295, !dbg !2745

cond.true269:                                     ; preds = %lor.lhs.false264, %lor.lhs.false259, %lor.lhs.false254, %cond.true249
  %u270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call247, i64 0, i32 1, !dbg !2745
  %55 = getelementptr inbounds %union.u, %union.u* %u270, i64 1, i32 0, i32 0, i64 0, !dbg !2745
  %56 = bitcast %union.rtunion_def* %55 to i32**, !dbg !2745
  %57 = load i32*, i32** %56, align 8, !dbg !2745
  %bf.load274 = load i32, i32* %57, align 8, !dbg !2745
  %bf.clear275 = and i32 %bf.load274, 65535, !dbg !2745
  %cmp276 = icmp eq i32 %bf.clear275, 23, !dbg !2745
  %58 = bitcast i32* %57 to %struct.rtx_def*, !dbg !2745
  br i1 %cmp276, label %cond.end295, label %cond.false283, !dbg !2745

cond.false283:                                    ; preds = %cond.true269
  %call288 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %call247, %struct.rtx_def* %58) #6, !dbg !2745
  br label %cond.end295, !dbg !2745

cond.end295:                                      ; preds = %if.then234, %cond.true269, %cond.false283, %lor.lhs.false264
  %cond296 = phi %struct.rtx_def* [ %call288, %cond.false283 ], [ %58, %cond.true269 ], [ null, %lor.lhs.false264 ], [ null, %if.then234 ], !dbg !2744
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond296, metadata !2588, metadata !DIExpression()), !dbg !2740
  %call297 = call fastcc i32 @rhs_regno(%struct.rtx_def* %50) #7, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %call297, metadata !2589, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2590, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2591, metadata !DIExpression()), !dbg !2740
  %59 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 11), align 8, !dbg !2747
  %sh_prom298 = zext i32 %call297 to i64, !dbg !2747
  %shl299 = shl i64 1, %sh_prom298, !dbg !2747
  %and300 = and i64 %59, %shl299, !dbg !2747
  %tobool301 = icmp eq i64 %and300, 0, !dbg !2747
  br i1 %tobool301, label %lor.lhs.false302, label %if.end357, !dbg !2749

lor.lhs.false302:                                 ; preds = %cond.end295
  %call303 = call fastcc i32 @rhs_regno(%struct.rtx_def* %53) #7, !dbg !2750
  %sh_prom304 = zext i32 %call303 to i64, !dbg !2750
  %shl305 = shl i64 1, %sh_prom304, !dbg !2750
  %and306 = and i64 %59, %shl305, !dbg !2750
  %tobool307 = icmp eq i64 %and306, 0, !dbg !2750
  br i1 %tobool307, label %for.cond310.preheader, label %if.end357, !dbg !2751

for.cond310.preheader:                            ; preds = %lor.lhs.false302
  %60 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 11), align 8, !dbg !2752
  %use_ruid330 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 4, !dbg !2752
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i64 0, i32 0, !dbg !2752
  br label %for.cond310, !dbg !2758

for.cond310:                                      ; preds = %for.cond310.preheader, %for.inc354
  %indvars.iv13 = phi i64 [ %21, %for.cond310.preheader ], [ %indvars.iv.next14, %for.inc354 ], !dbg !2759
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !2562, metadata !DIExpression()), !dbg !2617
  %cmp311 = icmp sgt i64 %indvars.iv13, %22, !dbg !2760
  br i1 %cmp311, label %if.end357.loopexit, label %for.body313, !dbg !2758

for.body313:                                      ; preds = %for.cond310
  %sh_prom314 = and i64 %indvars.iv13, 4294967295, !dbg !2761
  %shl315 = shl i64 1, %sh_prom314, !dbg !2761
  %and316 = and i64 %60, %shl315, !dbg !2761
  %tobool317 = icmp eq i64 %and316, 0, !dbg !2761
  br i1 %tobool317, label %for.inc354, label %land.lhs.true318, !dbg !2762

land.lhs.true318:                                 ; preds = %for.body313
  %use_index321 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv13, i32 1, !dbg !2763
  %62 = load i32, i32* %use_index321, align 8, !dbg !2763
  %cmp322 = icmp eq i32 %62, 6, !dbg !2764
  br i1 %cmp322, label %land.lhs.true324, label %for.inc354, !dbg !2765

land.lhs.true324:                                 ; preds = %land.lhs.true318
  %store_ruid327 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv13, i32 3, !dbg !2766
  %63 = load i32, i32* %store_ruid327, align 8, !dbg !2766
  %64 = load i32, i32* %use_ruid330, align 4, !dbg !2767
  %cmp331 = icmp sgt i32 %63, %64, !dbg !2768
  br i1 %cmp331, label %for.inc354, label %land.lhs.true333, !dbg !2769

land.lhs.true333:                                 ; preds = %land.lhs.true324
  %bf.load336 = load i32, i32* %61, align 8, !dbg !2770
  %bf.lshr337 = lshr i32 %bf.load336, 16, !dbg !2770
  %bf.clear338 = and i32 %bf.lshr337, 255, !dbg !2770
  %idxprom339 = zext i32 %bf.clear338 to i64, !dbg !2771
  %arrayidx340 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv13, i64 %idxprom339, !dbg !2771
  %65 = load i8, i8* %arrayidx340, align 1, !dbg !2771
  %cmp342 = icmp eq i8 %65, 1, !dbg !2772
  br i1 %cmp342, label %if.then344, label %for.inc354, !dbg !2773

if.then344:                                       ; preds = %land.lhs.true333
  %bf.clear338.lcssa = phi i32 [ %bf.clear338, %land.lhs.true333 ], !dbg !2770
  %indvars.iv13.lcssa30 = phi i64 [ %indvars.iv13, %land.lhs.true333 ], !dbg !2759
  call void @llvm.dbg.value(metadata i64 %indvars.iv13.lcssa30, metadata !2562, metadata !DIExpression()), !dbg !2617
  %66 = trunc i64 %indvars.iv13.lcssa30 to i32, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %66, metadata !2562, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %66, metadata !2562, metadata !DIExpression()), !dbg !2617
  %call348 = call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear338.lcssa, i32 %66) #6, !dbg !2774
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call348, metadata !2590, metadata !DIExpression()), !dbg !2740
  %bf.load349 = load i32, i32* %61, align 8, !dbg !2776
  %bf.lshr350 = lshr i32 %bf.load349, 16, !dbg !2776
  %bf.clear351 = and i32 %bf.lshr350, 255, !dbg !2776
  %call352 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear351, %struct.rtx_def* %call348, %struct.rtx_def* %53) #6, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call352, metadata !2591, metadata !DIExpression()), !dbg !2740
  br label %if.end357, !dbg !2777

for.inc354:                                       ; preds = %land.lhs.true324, %for.body313, %land.lhs.true318, %land.lhs.true333
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i32 undef, metadata !2562, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2617
  br label %for.cond310, !dbg !2779, !llvm.loop !2780

if.end357.loopexit:                               ; preds = %for.cond310
  br label %if.end357, !dbg !2782

if.end357:                                        ; preds = %if.end357.loopexit, %lor.lhs.false302, %cond.end295, %if.then344
  %index_reg.1 = phi %struct.rtx_def* [ %50, %lor.lhs.false302 ], [ %50, %cond.end295 ], [ %call348, %if.then344 ], [ null, %if.end357.loopexit ], !dbg !2783
  %reg_sum.1 = phi %struct.rtx_def* [ %51, %lor.lhs.false302 ], [ %51, %cond.end295 ], [ %call352, %if.then344 ], [ null, %if.end357.loopexit ], !dbg !2783
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_sum.1, metadata !2591, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.rtx_def* %index_reg.1, metadata !2590, metadata !DIExpression()), !dbg !2740
  %tobool358 = icmp ne %struct.rtx_def* %reg_sum.1, null, !dbg !2782
  %tobool360 = icmp ne %struct.rtx_def* %cond296, null, !dbg !2784
  %or.cond = and i1 %tobool358, %tobool360, !dbg !2785
  br i1 %or.cond, label %land.lhs.true361, label %if.end508, !dbg !2785

land.lhs.true361:                                 ; preds = %if.end357
  %67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond296, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2786
  %68 = bitcast %union.rtunion_def* %67 to i32**, !dbg !2786
  %69 = load i32*, i32** %68, align 8, !dbg !2786
  %bf.load366 = load i32, i32* %69, align 8, !dbg !2786
  %bf.clear367 = and i32 %bf.load366, 65535, !dbg !2786
  %cmp368 = icmp eq i32 %bf.clear367, 30, !dbg !2786
  br i1 %cmp368, label %land.lhs.true370, label %if.end508, !dbg !2787

land.lhs.true370:                                 ; preds = %land.lhs.true361
  %arrayidx373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond296, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2788
  %rt_rtx374 = bitcast %union.rtunion_def* %arrayidx373 to %struct.rtx_def**, !dbg !2788
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx374, align 8, !dbg !2788
  %call375 = call i32 @rtx_equal_p(%struct.rtx_def* %70, %struct.rtx_def* %50) #6, !dbg !2789
  %tobool376 = icmp eq i32 %call375, 0, !dbg !2789
  br i1 %tobool376, label %if.end508, label %land.lhs.true377, !dbg !2790

land.lhs.true377:                                 ; preds = %land.lhs.true370
  %use_index380 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 1, !dbg !2791
  %71 = load i32, i32* %use_index380, align 8, !dbg !2791
  %cmp381 = icmp sgt i32 %71, -1, !dbg !2792
  br i1 %cmp381, label %land.lhs.true383, label %if.end508, !dbg !2793

land.lhs.true383:                                 ; preds = %land.lhs.true377
  %call384 = call fastcc i32 @rhs_regno(%struct.rtx_def* %53) #7, !dbg !2794
  %idxprom385 = zext i32 %call384 to i64, !dbg !2795
  %store_ruid387 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom385, i32 3, !dbg !2796
  %72 = load i32, i32* %store_ruid387, align 8, !dbg !2796
  %use_ruid390 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 4, !dbg !2797
  %73 = load i32, i32* %use_ruid390, align 4, !dbg !2797
  %cmp391 = icmp sgt i32 %72, %73, !dbg !2798
  br i1 %cmp391, label %if.end508, label %if.then393, !dbg !2799

if.then393:                                       ; preds = %land.lhs.true383
  %call399 = call zeroext i8 @validate_change(%struct.rtx_def* %call247, %struct.rtx_def** nonnull %rt_rtx374, %struct.rtx_def* %index_reg.1, i8 zeroext 1) #6, !dbg !2800
  %offset = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 2, !dbg !2801
  %74 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8, !dbg !2801
  %75 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2803
  %cmp402 = icmp eq %struct.rtx_def* %74, %75, !dbg !2804
  br i1 %cmp402, label %if.end423, label %if.then404, !dbg !2805

if.then404:                                       ; preds = %if.then393
  %rt_rtx408 = bitcast %union.rtunion_def* %67 to %struct.rtx_def**, !dbg !2806
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx408, align 8, !dbg !2807
  %u413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i64 0, i32 1, !dbg !2807
  %arrayidx414 = bitcast %union.u* %u413 to i64*, !dbg !2807
  %77 = load i64, i64* %arrayidx414, align 8, !dbg !2807
  %u418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i64 0, i32 1, !dbg !2807
  %arrayidx420 = bitcast %union.u* %u418 to i64*, !dbg !2807
  %78 = load i64, i64* %arrayidx420, align 8, !dbg !2807
  %add = add nsw i64 %77, %78, !dbg !2807
  %call421 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add) #6, !dbg !2807
  %call422 = call zeroext i8 @validate_change(%struct.rtx_def* %call247, %struct.rtx_def** nonnull %rt_rtx408, %struct.rtx_def* %call421, i8 zeroext 1) #6, !dbg !2808
  br label %if.end423, !dbg !2808

if.end423:                                        ; preds = %if.then393, %if.then404
  %79 = load i32, i32* %use_index380, align 8, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %79, metadata !2592, metadata !DIExpression()), !dbg !2811
  %80 = sext i32 %79 to i64, !dbg !2812
  br label %for.cond427, !dbg !2812

for.cond427:                                      ; preds = %for.body430, %if.end423
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body430 ], [ %80, %if.end423 ], !dbg !2813
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !2592, metadata !DIExpression()), !dbg !2811
  %cmp428 = icmp slt i64 %indvars.iv15, 6, !dbg !2814
  br i1 %cmp428, label %for.body430, label %for.end444, !dbg !2816

for.body430:                                      ; preds = %for.cond427
  %insn435 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 0, i64 %indvars.iv15, i32 0, !dbg !2817
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn435, align 8, !dbg !2817
  %usep = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 0, i64 %indvars.iv15, i32 1, !dbg !2818
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %usep, align 8, !dbg !2818
  %call441 = call zeroext i8 @validate_unshare_change(%struct.rtx_def* %81, %struct.rtx_def** %82, %struct.rtx_def* nonnull %reg_sum.1, i8 zeroext 1) #6, !dbg !2819
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i32 undef, metadata !2592, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2811
  br label %for.cond427, !dbg !2821, !llvm.loop !2822

for.end444:                                       ; preds = %for.cond427
  %call445 = call i32 @apply_change_group() #6, !dbg !2824
  %tobool446 = icmp eq i32 %call445, 0, !dbg !2824
  br i1 %tobool446, label %cleanup, label %if.then447, !dbg !2826

if.then447:                                       ; preds = %for.end444
  %83 = load i32, i32* %use_index380, align 8, !dbg !2827
  call void @llvm.dbg.value(metadata i32 %83, metadata !2592, metadata !DIExpression()), !dbg !2811
  %84 = sext i32 %83 to i64, !dbg !2830
  br label %for.cond451, !dbg !2830

for.cond451:                                      ; preds = %for.body454, %if.then447
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body454 ], [ %84, %if.then447 ], !dbg !2831
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !2592, metadata !DIExpression()), !dbg !2811
  %cmp452 = icmp slt i64 %indvars.iv17, 6, !dbg !2832
  br i1 %cmp452, label %for.body454, label %for.end473, !dbg !2834

for.body454:                                      ; preds = %for.cond451
  %usep460 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 0, i64 %indvars.iv17, i32 1, !dbg !2835
  %85 = load %struct.rtx_def**, %struct.rtx_def*** %usep460, align 8, !dbg !2835
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8, !dbg !2835
  %87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2835
  %rt_rtx464 = bitcast %union.rtunion_def* %87 to %struct.rtx_def**, !dbg !2835
  %insn470 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %sh_prom298, i32 0, i64 %indvars.iv17, i32 0, !dbg !2836
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn470, align 8, !dbg !2836
  call fastcc void @reload_combine_note_use(%struct.rtx_def** nonnull %rt_rtx464, %struct.rtx_def* %88) #7, !dbg !2837
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i32 undef, metadata !2592, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2811
  br label %for.cond451, !dbg !2839, !llvm.loop !2840

for.end473:                                       ; preds = %for.cond451
  %call474 = call fastcc i32 @rhs_regno(%struct.rtx_def* %53) #7, !dbg !2842
  %idxprom475 = zext i32 %call474 to i64, !dbg !2844
  %use_ruid477 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom475, i32 4, !dbg !2845
  %89 = load i32, i32* %use_ruid477, align 4, !dbg !2845
  %90 = load i32, i32* %use_ruid390, align 4, !dbg !2846
  %cmp481 = icmp sgt i32 %89, %90, !dbg !2847
  br i1 %cmp481, label %if.then483, label %if.end491, !dbg !2848

if.then483:                                       ; preds = %for.end473
  %call487 = call fastcc i32 @rhs_regno(%struct.rtx_def* %53) #7, !dbg !2849
  %idxprom488 = zext i32 %call487 to i64, !dbg !2850
  %use_ruid490 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom488, i32 4, !dbg !2851
  store i32 %90, i32* %use_ruid490, align 4, !dbg !2852
  br label %if.end491, !dbg !2850

if.end491:                                        ; preds = %if.then483, %for.end473
  %call492 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2853
  %91 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8, !dbg !2854
  %92 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2856
  %cmp496 = icmp eq %struct.rtx_def* %91, %92, !dbg !2857
  br i1 %cmp496, label %if.end499, label %if.then498, !dbg !2858

if.then498:                                       ; preds = %if.end491
  call void @remove_reg_equal_equiv_notes(%struct.rtx_def* %call247) #6, !dbg !2859
  br label %if.end499, !dbg !2859

if.end499:                                        ; preds = %if.end491, %if.then498
  store i32 6, i32* %use_index380, align 8, !dbg !2860
  %93 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2861
  %call503 = call fastcc i32 @rhs_regno(%struct.rtx_def* %index_reg.1) #7, !dbg !2862
  %idxprom504 = zext i32 %call503 to i64, !dbg !2863
  %store_ruid506 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom504, i32 3, !dbg !2864
  store i32 %93, i32* %store_ruid506, align 8, !dbg !2865
  br label %cleanup, !dbg !2866

cleanup:                                          ; preds = %for.end444, %if.end499
  %cleanup.dest.slot.0 = phi i32 [ 15, %if.end499 ], [ 0, %for.end444 ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond2, label %if.end508, label %cleanup509

if.end508:                                        ; preds = %land.lhs.true383, %land.lhs.true370, %cleanup, %land.lhs.true377, %land.lhs.true361, %if.end357
  br label %cleanup509, !dbg !2867

cleanup509:                                       ; preds = %cleanup, %if.end508
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end508 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end519, label %cleanup716

if.end519:                                        ; preds = %land.lhs.true209, %land.lhs.true194, %cond.end141, %cleanup509, %land.lhs.true224, %land.lhs.true181, %land.lhs.true172, %land.lhs.true153, %land.lhs.true
  %u520 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2868
  %94 = getelementptr inbounds %union.u, %union.u* %u520, i64 1, i32 0, i32 0, i64 0, !dbg !2868
  %rt_rtx523 = bitcast %union.rtunion_def* %94 to %struct.rtx_def**, !dbg !2868
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx523, align 8, !dbg !2868
  call void @note_stores(%struct.rtx_def* %95, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @reload_combine_note_store, i8* null) #6, !dbg !2869
  %bf.load524 = load i32, i32* %23, align 8, !dbg !2870
  %bf.clear525 = and i32 %bf.load524, 65535, !dbg !2870
  %cmp526 = icmp eq i32 %bf.clear525, 10, !dbg !2870
  br i1 %cmp526, label %for.cond529.preheader, label %if.else613, !dbg !2871

for.cond529.preheader:                            ; preds = %if.end519
  %96 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2872
  br label %for.cond529, !dbg !2877

for.cond529:                                      ; preds = %for.cond529.preheader, %for.inc544
  %indvars.iv21 = phi i64 [ 0, %for.cond529.preheader ], [ %indvars.iv.next22, %for.inc544 ], !dbg !2878
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !2564, metadata !DIExpression()), !dbg !2617
  %exitcond23 = icmp eq i64 %indvars.iv21, 53, !dbg !2879
  br i1 %exitcond23, label %for.end546, label %for.body532, !dbg !2877

for.body532:                                      ; preds = %for.cond529
  %arrayidx534 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv21, !dbg !2880
  %97 = load i8, i8* %arrayidx534, align 1, !dbg !2880
  %tobool535 = icmp eq i8 %97, 0, !dbg !2880
  br i1 %tobool535, label %for.inc544, label %if.then536, !dbg !2881

if.then536:                                       ; preds = %for.body532
  %use_index539 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv21, i32 1, !dbg !2882
  store i32 6, i32* %use_index539, align 8, !dbg !2883
  %store_ruid542 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv21, i32 3, !dbg !2884
  store i32 %96, i32* %store_ruid542, align 8, !dbg !2885
  br label %for.inc544, !dbg !2886

for.inc544:                                       ; preds = %for.body532, %if.then536
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i32 undef, metadata !2564, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2617
  br label %for.cond529, !dbg !2888, !llvm.loop !2889

for.end546:                                       ; preds = %for.cond529
  %arrayidx549 = getelementptr inbounds %union.u, %union.u* %u520, i64 1, i32 0, i32 1, !dbg !2891
  %rt_rtx550 = bitcast %struct.object_block** %arrayidx549 to %struct.rtx_def**, !dbg !2891
  br label %for.cond551, !dbg !2892

for.cond551:                                      ; preds = %for.inc607, %for.end546
  %link.0.in = phi %struct.rtx_def** [ %rt_rtx550, %for.end546 ], [ %rt_rtx611, %for.inc607 ]
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2893
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2595, metadata !DIExpression()), !dbg !2894
  %tobool552 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2895
  br i1 %tobool552, label %if.end670.loopexit, label %for.body553, !dbg !2895

for.body553:                                      ; preds = %for.cond551
  %arrayidx556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2896
  %rt_rtx557 = bitcast %union.rtunion_def* %arrayidx556 to %struct.rtx_def**, !dbg !2896
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx557, align 8, !dbg !2896
  %arrayidx560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2896
  %rt_rtx561 = bitcast %union.rtunion_def* %arrayidx560 to %struct.rtx_def**, !dbg !2896
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx561, align 8, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.rtx_def* %99, metadata !2598, metadata !DIExpression()), !dbg !2897
  %100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i64 0, i32 0, !dbg !2898
  %bf.load562 = load i32, i32* %100, align 8, !dbg !2898
  %bf.clear563 = and i32 %bf.load562, 65535, !dbg !2898
  %cmp564 = icmp eq i32 %bf.clear563, 37, !dbg !2898
  br i1 %cmp564, label %if.then566, label %for.inc607, !dbg !2899

if.then566:                                       ; preds = %for.body553
  %call568 = call fastcc i32 @rhs_regno(%struct.rtx_def* %99) #7, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %call568, metadata !2605, metadata !DIExpression()), !dbg !2901
  %idxprom569 = zext i32 %call568 to i64, !dbg !2902
  %bf.load571 = load i32, i32* %100, align 8, !dbg !2903
  %bf.lshr572 = lshr i32 %bf.load571, 16, !dbg !2903
  %bf.clear573 = and i32 %bf.lshr572, 255, !dbg !2903
  %idxprom574 = zext i32 %bf.clear573 to i64, !dbg !2902
  %arrayidx575 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom569, i64 %idxprom574, !dbg !2902
  %101 = load i8, i8* %arrayidx575, align 1, !dbg !2902
  %conv576 = zext i8 %101 to i32, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %conv576, metadata !2606, metadata !DIExpression()), !dbg !2901
  %add577 = add i32 %call568, %conv576, !dbg !2904
  %sub578 = add i32 %add577, -1, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %sub578, metadata !2607, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 %call568, metadata !2602, metadata !DIExpression()), !dbg !2901
  %102 = bitcast %union.rtunion_def* %arrayidx556 to i32**, !dbg !2906
  br label %for.cond579, !dbg !2910

for.cond579:                                      ; preds = %for.inc603, %if.then566
  %i567.0 = phi i32 [ %call568, %if.then566 ], [ %inc604, %for.inc603 ], !dbg !2911
  call void @llvm.dbg.value(metadata i32 %i567.0, metadata !2602, metadata !DIExpression()), !dbg !2901
  %cmp580 = icmp ugt i32 %i567.0, %sub578, !dbg !2912
  br i1 %cmp580, label %for.inc607.loopexit, label %for.body582, !dbg !2913

for.body582:                                      ; preds = %for.cond579
  %103 = load i32*, i32** %102, align 8, !dbg !2914
  %bf.load587 = load i32, i32* %103, align 8, !dbg !2914
  %bf.clear588 = and i32 %bf.load587, 65535, !dbg !2914
  %cmp589 = icmp eq i32 %bf.clear588, 25, !dbg !2915
  %idxprom592 = zext i32 %i567.0 to i64, !dbg !2906
  %use_index594 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom592, i32 1, !dbg !2906
  br i1 %cmp589, label %if.then591, label %if.else598, !dbg !2916

if.then591:                                       ; preds = %for.body582
  store i32 6, i32* %use_index594, align 8, !dbg !2917
  %104 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2919
  %store_ruid597 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom592, i32 3, !dbg !2920
  store i32 %104, i32* %store_ruid597, align 8, !dbg !2921
  br label %for.inc603, !dbg !2922

if.else598:                                       ; preds = %for.body582
  store i32 -1, i32* %use_index594, align 8, !dbg !2923
  br label %for.inc603

for.inc603:                                       ; preds = %if.then591, %if.else598
  %inc604 = add i32 %i567.0, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %inc604, metadata !2602, metadata !DIExpression()), !dbg !2901
  br label %for.cond579, !dbg !2925, !llvm.loop !2926

for.inc607.loopexit:                              ; preds = %for.cond579
  br label %for.inc607, !dbg !2928

for.inc607:                                       ; preds = %for.inc607.loopexit, %for.body553
  %105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2928
  %rt_rtx611 = bitcast %union.rtunion_def* %105 to %struct.rtx_def**, !dbg !2928
  br label %for.cond551, !dbg !2929, !llvm.loop !2930

if.else613:                                       ; preds = %if.end519
  %cmp616 = icmp eq i32 %bf.clear525, 9, !dbg !2932
  br i1 %cmp616, label %land.lhs.true618, label %if.end670, !dbg !2933

land.lhs.true618:                                 ; preds = %if.else613
  %106 = bitcast %union.rtunion_def* %94 to i32**, !dbg !2934
  %107 = load i32*, i32** %106, align 8, !dbg !2934
  %bf.load623 = load i32, i32* %107, align 8, !dbg !2934
  %bf.clear624 = and i32 %bf.load623, 65535, !dbg !2934
  %cmp625 = icmp eq i32 %bf.clear624, 27, !dbg !2935
  br i1 %cmp625, label %if.end670, label %if.then627, !dbg !2936

if.then627:                                       ; preds = %land.lhs.true618
  %call629 = call i32 @condjump_p(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2937
  %tobool630 = icmp eq i32 %call629, 0, !dbg !2937
  br i1 %tobool630, label %lor.lhs.false631, label %land.lhs.true634, !dbg !2939

lor.lhs.false631:                                 ; preds = %if.then627
  %call632 = call i32 @condjump_in_parallel_p(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2940
  %tobool633 = icmp eq i32 %call632, 0, !dbg !2940
  br i1 %tobool633, label %if.end653, label %land.lhs.true634, !dbg !2941

land.lhs.true634:                                 ; preds = %lor.lhs.false631, %if.then627
  %arrayidx637 = getelementptr inbounds %union.u, %union.u* %u520, i64 1, i32 0, i32 1, !dbg !2942
  %rt_rtx638 = bitcast %struct.object_block** %arrayidx637 to %struct.rtx_def**, !dbg !2942
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx638, align 8, !dbg !2942
  %tobool639 = icmp eq %struct.rtx_def* %108, null, !dbg !2942
  br i1 %tobool639, label %if.end653, label %if.then640, !dbg !2943

if.then640:                                       ; preds = %land.lhs.true634
  %u645 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i64 0, i32 1, !dbg !2944
  %109 = getelementptr inbounds %union.u, %union.u* %u645, i64 1, i32 0, i32 0, i64 1, !dbg !2944
  %rt_int648 = bitcast %union.rtunion_def* %109 to i32*, !dbg !2944
  %110 = load i32, i32* %rt_int648, align 8, !dbg !2944
  %sub649 = sub nsw i32 %110, %call, !dbg !2944
  %idxprom650 = sext i32 %sub649 to i64, !dbg !2944
  %arrayidx651 = getelementptr inbounds i64, i64* %6, i64 %idxprom650, !dbg !2944
  call void @llvm.dbg.value(metadata i64* %arrayidx651, metadata !2608, metadata !DIExpression()), !dbg !2945
  br label %if.end653, !dbg !2946

if.end653:                                        ; preds = %land.lhs.true634, %lor.lhs.false631, %if.then640
  %live628.0 = phi i64* [ %arrayidx651, %if.then640 ], [ %ever_live_at_start, %land.lhs.true634 ], [ %ever_live_at_start, %lor.lhs.false631 ], !dbg !2947
  call void @llvm.dbg.value(metadata i64* %live628.0, metadata !2608, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 52, metadata !2562, metadata !DIExpression()), !dbg !2617
  br label %for.cond654, !dbg !2948

for.cond654:                                      ; preds = %for.inc667, %if.end653
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc667 ], [ 52, %if.end653 ], !dbg !2950
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !2562, metadata !DIExpression()), !dbg !2617
  %cmp655 = icmp sgt i64 %indvars.iv19, -1, !dbg !2951
  br i1 %cmp655, label %for.body657, label %if.end670.loopexit3, !dbg !2953

for.body657:                                      ; preds = %for.cond654
  %111 = load i64, i64* %live628.0, align 8, !dbg !2954
  %sh_prom658 = and i64 %indvars.iv19, 4294967295, !dbg !2954
  %shl659 = shl i64 1, %sh_prom658, !dbg !2954
  %and660 = and i64 %111, %shl659, !dbg !2954
  %tobool661 = icmp eq i64 %and660, 0, !dbg !2954
  br i1 %tobool661, label %for.inc667, label %if.then662, !dbg !2956

if.then662:                                       ; preds = %for.body657
  %use_index665 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv19, i32 1, !dbg !2957
  store i32 -1, i32* %use_index665, align 8, !dbg !2958
  br label %for.inc667, !dbg !2959

for.inc667:                                       ; preds = %for.body657, %if.then662
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1, !dbg !2960
  call void @llvm.dbg.value(metadata i32 undef, metadata !2562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2617
  br label %for.cond654, !dbg !2961, !llvm.loop !2962

if.end670.loopexit:                               ; preds = %for.cond551
  br label %if.end670, !dbg !2964

if.end670.loopexit3:                              ; preds = %for.cond654
  br label %if.end670, !dbg !2964

if.end670:                                        ; preds = %if.end670.loopexit3, %if.end670.loopexit, %land.lhs.true618, %if.else613
  call fastcc void @reload_combine_note_use(%struct.rtx_def** nonnull %rt_rtx523, %struct.rtx_def* nonnull %insn.0) #7, !dbg !2965
  %112 = getelementptr inbounds %union.u, %union.u* %u520, i64 1, i32 0, i32 0, i64 2, !dbg !2966
  br label %for.cond679, !dbg !2967

for.cond679:                                      ; preds = %for.inc710, %if.end670
  %note.0.in.in = phi %union.rtunion_def* [ %112, %if.end670 ], [ %118, %for.inc710 ]
  %note.0.in = bitcast %union.rtunion_def* %note.0.in.in to %struct.rtx_def**, !dbg !2968
  %note.0 = load %struct.rtx_def*, %struct.rtx_def** %note.0.in, align 8, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !2578, metadata !DIExpression()), !dbg !2969
  %tobool680 = icmp eq %struct.rtx_def* %note.0, null, !dbg !2970
  br i1 %tobool680, label %cleanup716.loopexit, label %for.body681, !dbg !2970

for.body681:                                      ; preds = %for.cond679
  %113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 0, !dbg !2971
  %bf.load682 = load i32, i32* %113, align 8, !dbg !2971
  %bf.clear684 = and i32 %bf.load682, 16711680, !dbg !2971
  %cmp685 = icmp eq i32 %bf.clear684, 131072, !dbg !2972
  br i1 %cmp685, label %land.lhs.true687, label %for.inc710, !dbg !2973

land.lhs.true687:                                 ; preds = %for.body681
  %arrayidx690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2974
  %114 = bitcast %union.rtunion_def* %arrayidx690 to i32**, !dbg !2974
  %115 = load i32*, i32** %114, align 8, !dbg !2974
  %bf.load692 = load i32, i32* %115, align 8, !dbg !2974
  %bf.clear693 = and i32 %bf.load692, 65535, !dbg !2974
  %cmp694 = icmp eq i32 %bf.clear693, 37, !dbg !2974
  br i1 %cmp694, label %if.then696, label %for.inc710, !dbg !2975

if.then696:                                       ; preds = %land.lhs.true687
  %116 = bitcast i32* %115 to %struct.rtx_def*, !dbg !2975
  %call702 = call fastcc i32 @rhs_regno(%struct.rtx_def* %116) #7, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %call702, metadata !2611, metadata !DIExpression()), !dbg !2977
  %117 = load i32, i32* @reload_combine_ruid, align 4, !dbg !2978
  %idxprom703 = sext i32 %call702 to i64, !dbg !2979
  %store_ruid705 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom703, i32 3, !dbg !2980
  store i32 %117, i32* %store_ruid705, align 8, !dbg !2981
  %use_index708 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom703, i32 1, !dbg !2982
  store i32 -1, i32* %use_index708, align 8, !dbg !2983
  br label %for.inc710, !dbg !2984

for.inc710:                                       ; preds = %for.body681, %land.lhs.true687, %if.then696
  %118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2985
  br label %for.cond679, !dbg !2986, !llvm.loop !2987

cleanup716.loopexit:                              ; preds = %for.cond679
  br label %cleanup716, !dbg !2989

cleanup716:                                       ; preds = %cleanup716.loopexit, %lor.lhs.false96, %cleanup509
  %119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2989
  %rt_rtx723 = bitcast %union.rtunion_def* %119 to %struct.rtx_def**, !dbg !2989
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx723, align 8, !dbg !2989
  call void @llvm.dbg.value(metadata %struct.rtx_def* %120, metadata !2558, metadata !DIExpression()), !dbg !2617
  br label %for.cond52, !dbg !2990, !llvm.loop !2991

for.end724:                                       ; preds = %for.cond52
  call void @free(i8* %call15) #6, !dbg !2993
  br label %cleanup725, !dbg !2994

cleanup725:                                       ; preds = %entry, %for.end, %for.end724
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2994
  ret void, !dbg !2994
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_cse_move2add(%struct.rtx_def* %first) unnamed_addr #5 !dbg !2995 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2997, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 52, metadata !2998, metadata !DIExpression()), !dbg !3060
  br label %for.cond, !dbg !3061

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ 52, %entry ], !dbg !3063
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2998, metadata !DIExpression()), !dbg !3060
  %cmp = icmp sgt i64 %indvars.iv3, -1, !dbg !3064
  br i1 %cmp, label %for.body, label %for.end, !dbg !3066

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %indvars.iv3, !dbg !3067
  store i32 0, i32* %arrayidx, align 4, !dbg !3068
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3069
  call void @llvm.dbg.value(metadata i32 undef, metadata !2998, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3060
  br label %for.cond, !dbg !3070, !llvm.loop !3071

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @move2add_last_label_luid, align 4, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first, metadata !2999, metadata !DIExpression()), !dbg !3060
  br label %for.cond1, !dbg !3074

for.cond1:                                        ; preds = %cleanup609, %for.end
  %0 = phi i32 [ 2, %for.end ], [ %inc618, %cleanup609 ], !dbg !3060
  %insn.0 = phi %struct.rtx_def* [ %first, %for.end ], [ %87, %cleanup609 ], !dbg !3075
  store i32 %0, i32* @move2add_luid, align 4, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2999, metadata !DIExpression()), !dbg !3060
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3076
  br i1 %tobool, label %for.end619, label %for.body2, !dbg !3076

for.body2:                                        ; preds = %for.cond1
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3077
  %bf.load = load i32, i32* %1, align 8, !dbg !3077
  %bf.clear = and i32 %bf.load, 65535, !dbg !3077
  %cmp3 = icmp eq i32 %bf.clear, 12, !dbg !3077
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3079

if.then:                                          ; preds = %for.body2
  store i32 %0, i32* @move2add_last_label_luid, align 4, !dbg !3080
  %inc = add nsw i32 %0, 1, !dbg !3082
  store i32 %inc, i32* @move2add_luid, align 4, !dbg !3082
  br label %cleanup609, !dbg !3083

if.end:                                           ; preds = %for.body2
  %cmp6 = icmp eq i32 %bf.clear, 8, !dbg !3084
  br i1 %cmp6, label %if.end19, label %lor.lhs.false, !dbg !3084

lor.lhs.false:                                    ; preds = %if.end
  %cmp9 = icmp eq i32 %bf.clear, 7, !dbg !3084
  br i1 %cmp9, label %if.end19, label %lor.lhs.false10, !dbg !3084

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp eq i32 %bf.clear, 9, !dbg !3084
  br i1 %cmp13, label %if.end19, label %lor.lhs.false14, !dbg !3084

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %cmp17 = icmp eq i32 %bf.clear, 10, !dbg !3084
  br i1 %cmp17, label %if.end19, label %cleanup609, !dbg !3086

if.end19:                                         ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3087
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3087
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3087
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3000, metadata !DIExpression()), !dbg !3088
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3089
  %bf.load21 = load i32, i32* %4, align 8, !dbg !3089
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !3089
  %cmp23 = icmp eq i32 %bf.clear22, 23, !dbg !3090
  br i1 %cmp23, label %land.lhs.true, label %if.end445, !dbg !3091

land.lhs.true:                                    ; preds = %if.end19
  %arrayidx26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3092
  %5 = bitcast %union.rtunion_def* %arrayidx26 to i32**, !dbg !3092
  %6 = load i32*, i32** %5, align 8, !dbg !3092
  %bf.load28 = load i32, i32* %6, align 8, !dbg !3092
  %bf.clear29 = and i32 %bf.load28, 65535, !dbg !3092
  %cmp30 = icmp eq i32 %bf.clear29, 37, !dbg !3092
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !3093
  br i1 %cmp30, label %if.then31, label %if.end445, !dbg !3093

if.then31:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3005, metadata !DIExpression()), !dbg !3094
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %call, metadata !3008, metadata !DIExpression()), !dbg !3094
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3096
  %rt_rtx39 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3096
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx39, align 8, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3009, metadata !DIExpression()), !dbg !3094
  %idxprom40 = sext i32 %call to i64, !dbg !3097
  %arrayidx41 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom40, !dbg !3097
  %10 = load i32, i32* %arrayidx41, align 4, !dbg !3097
  %11 = load i32, i32* @move2add_last_label_luid, align 4, !dbg !3098
  %cmp42 = icmp sgt i32 %10, %11, !dbg !3099
  br i1 %cmp42, label %land.lhs.true43, label %if.end439, !dbg !3100

land.lhs.true43:                                  ; preds = %if.then31
  %bf.load44 = load i32, i32* %6, align 8, !dbg !3101
  %bf.lshr = lshr i32 %bf.load44, 16, !dbg !3101
  %bf.clear45 = and i32 %bf.lshr, 255, !dbg !3101
  %idxprom46 = zext i32 %bf.clear45 to i64, !dbg !3101
  %arrayidx47 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom46, !dbg !3101
  %12 = load i8, i8* %arrayidx47, align 1, !dbg !3101
  %arrayidx50 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom40, !dbg !3101
  %13 = load i32, i32* %arrayidx50, align 4, !dbg !3101
  %idxprom51 = zext i32 %13 to i64, !dbg !3101
  %arrayidx52 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom51, !dbg !3101
  %14 = load i8, i8* %arrayidx52, align 1, !dbg !3101
  %cmp55 = icmp eq i8 %12, %14, !dbg !3101
  br i1 %cmp55, label %land.lhs.true73, label %lor.lhs.false57, !dbg !3101

lor.lhs.false57:                                  ; preds = %land.lhs.true43
  %cmp71 = icmp ugt i8 %12, %14, !dbg !3101
  br i1 %cmp71, label %if.end439, label %land.lhs.true73, !dbg !3102

land.lhs.true73:                                  ; preds = %lor.lhs.false57, %land.lhs.true43
  %call74 = tail call zeroext i8 @dbg_cnt(i32 3) #6, !dbg !3103
  %tobool76 = icmp eq i8 %call74, 0, !dbg !3103
  br i1 %tobool76, label %if.end439, label %if.then77, !dbg !3104

if.then77:                                        ; preds = %land.lhs.true73
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !3105
  %bf.load78 = load i32, i32* %15, align 8, !dbg !3105
  %bf.clear79 = and i32 %bf.load78, 65535, !dbg !3105
  %cmp80 = icmp eq i32 %bf.clear79, 30, !dbg !3105
  br i1 %cmp80, label %land.lhs.true82, label %if.else209, !dbg !3106

land.lhs.true82:                                  ; preds = %if.then77
  %arrayidx84 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom40, !dbg !3107
  %16 = load i32, i32* %arrayidx84, align 4, !dbg !3107
  %cmp85 = icmp slt i32 %16, 0, !dbg !3108
  br i1 %cmp85, label %if.then87, label %if.else209, !dbg !3109

if.then87:                                        ; preds = %land.lhs.true82
  %u88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 1, !dbg !3110
  %arrayidx89 = bitcast %union.u* %u88 to i64*, !dbg !3110
  %17 = load i64, i64* %arrayidx89, align 8, !dbg !3110
  %arrayidx91 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom40, !dbg !3111
  %18 = load i64, i64* %arrayidx91, align 8, !dbg !3111
  %sub = sub nsw i64 %17, %18, !dbg !3112
  %bf.load92 = load i32, i32* %6, align 8, !dbg !3113
  %bf.lshr93 = lshr i32 %bf.load92, 16, !dbg !3113
  %bf.clear94 = and i32 %bf.lshr93, 255, !dbg !3113
  %call95 = tail call %struct.rtx_def* @gen_int_mode(i64 %sub, i32 %bf.clear94) #6, !dbg !3114
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call95, metadata !3010, metadata !DIExpression()), !dbg !3115
  %arrayidx98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 1, !dbg !3116
  %rt_bb = bitcast %struct.object_block** %arrayidx98 to %struct.basic_block_def**, !dbg !3116
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3116
  %call99 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %19) #6, !dbg !3117
  call void @llvm.dbg.value(metadata i8 %call99, metadata !3015, metadata !DIExpression()), !dbg !3115
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3118
  %cmp100 = icmp eq %struct.rtx_def* %call95, %20, !dbg !3119
  br i1 %cmp100, label %if.then102, label %if.else, !dbg !3120

if.then102:                                       ; preds = %if.then87
  %21 = load i64, i64* %arrayidx89, align 8, !dbg !3121
  %22 = load i64, i64* %arrayidx91, align 8, !dbg !3124
  %cmp108 = icmp eq i64 %21, %22, !dbg !3125
  br i1 %cmp108, label %if.then110, label %if.end194, !dbg !3126

if.then110:                                       ; preds = %if.then102
  %call115 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx39, %struct.rtx_def* %7, i8 zeroext 0) #6, !dbg !3127
  br label %if.end194, !dbg !3127

if.else:                                          ; preds = %if.then87
  %call117 = tail call i32 @rtx_cost(%struct.rtx_def* %call95, i32 49, i8 zeroext %call99) #6, !dbg !3128
  %call118 = tail call i32 @rtx_cost(%struct.rtx_def* %9, i32 23, i8 zeroext %call99) #6, !dbg !3129
  %cmp119 = icmp slt i32 %call117, %call118, !dbg !3130
  br i1 %cmp119, label %land.lhs.true121, label %if.else134, !dbg !3131

land.lhs.true121:                                 ; preds = %if.else
  %call122 = tail call i32 @have_add2_insn(%struct.rtx_def* %7, %struct.rtx_def* %call95) #6, !dbg !3132
  %tobool123 = icmp eq i32 %call122, 0, !dbg !3132
  br i1 %tobool123, label %if.else134, label %if.then124, !dbg !3133

if.then124:                                       ; preds = %land.lhs.true121
  %bf.load125 = load i32, i32* %6, align 8, !dbg !3134
  %bf.lshr126 = lshr i32 %bf.load125, 16, !dbg !3134
  %bf.clear127 = and i32 %bf.lshr126, 255, !dbg !3134
  %call128 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear127, %struct.rtx_def* %7, %struct.rtx_def* %call95) #6, !dbg !3134
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call128, metadata !3016, metadata !DIExpression()), !dbg !3135
  %call133 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx39, %struct.rtx_def* %call128, i8 zeroext 0) #6, !dbg !3136
  br label %if.end194, !dbg !3137

if.else134:                                       ; preds = %land.lhs.true121, %if.else
  %bf.load135 = load i32, i32* %6, align 8, !dbg !3138
  %bf.clear137 = and i32 %bf.load135, 16711680, !dbg !3138
  %cmp138 = icmp eq i32 %bf.clear137, 851968, !dbg !3139
  br i1 %cmp138, label %if.end194, label %if.then140, !dbg !3140

if.then140:                                       ; preds = %if.else134
  br label %for.cond142, !dbg !3141

for.cond142:                                      ; preds = %for.inc187, %if.then140
  %narrow_mode.0.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %if.then140 ], [ %arrayidx189, %for.inc187 ]
  %narrow_mode.0.in = load i8, i8* %narrow_mode.0.in.in, align 1, !dbg !3142
  %narrow_mode.0 = zext i8 %narrow_mode.0.in to i32, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %narrow_mode.0, metadata !3020, metadata !DIExpression()), !dbg !3143
  %cmp143 = icmp eq i8 %narrow_mode.0.in, 0, !dbg !3144
  br i1 %cmp143, label %if.end194.loopexit, label %land.rhs, !dbg !3145

land.rhs:                                         ; preds = %for.cond142
  %bf.load145 = load i32, i32* %6, align 8, !dbg !3146
  %bf.lshr146 = lshr i32 %bf.load145, 16, !dbg !3146
  %bf.clear147 = and i32 %bf.lshr146, 255, !dbg !3146
  %cmp148 = icmp eq i32 %bf.clear147, %narrow_mode.0, !dbg !3147
  br i1 %cmp148, label %if.end194.loopexit, label %for.body150, !dbg !3148

for.body150:                                      ; preds = %land.rhs
  %call151 = tail call i32 @have_insn_for(i32 40, i32 %narrow_mode.0) #6, !dbg !3149
  %tobool152 = icmp eq i32 %call151, 0, !dbg !3149
  br i1 %tobool152, label %for.body150.for.inc187_crit_edge, label %land.lhs.true153, !dbg !3150

for.body150.for.inc187_crit_edge:                 ; preds = %for.body150
  %.pre = zext i8 %narrow_mode.0.in to i64, !dbg !3151
  br label %for.inc187, !dbg !3150

land.lhs.true153:                                 ; preds = %for.body150
  %23 = load i64, i64* %arrayidx91, align 8, !dbg !3152
  %idxprom156 = zext i8 %narrow_mode.0.in to i64, !dbg !3153
  %arrayidx157 = getelementptr inbounds [87 x i64], [87 x i64]* @mode_mask_array, i64 0, i64 %idxprom156, !dbg !3153
  %24 = load i64, i64* %arrayidx157, align 8, !dbg !3153
  %neg = xor i64 %24, -1, !dbg !3154
  %25 = load i64, i64* %arrayidx89, align 8, !dbg !3155
  %26 = xor i64 %23, %25, !dbg !3156
  %27 = and i64 %26, %neg, !dbg !3156
  %cmp165 = icmp eq i64 %27, 0, !dbg !3156
  br i1 %cmp165, label %if.then167, label %for.inc187, !dbg !3157

if.then167:                                       ; preds = %land.lhs.true153
  %call168 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !3158
  %call169 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %narrow_mode.0, i32 %call168) #6, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call169, metadata !3023, metadata !DIExpression()), !dbg !3160
  %28 = load i64, i64* %arrayidx89, align 8, !dbg !3161
  %call173 = tail call %struct.rtx_def* @gen_int_mode(i64 %28, i32 %narrow_mode.0) #6, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call173, metadata !3029, metadata !DIExpression()), !dbg !3160
  %call174 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 40, i32 0, %struct.rtx_def* %call169) #6, !dbg !3163
  %call175 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %call174, %struct.rtx_def* %call173) #6, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call175, metadata !3030, metadata !DIExpression()), !dbg !3160
  %call180 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx, %struct.rtx_def* %call175, i8 zeroext 0) #6, !dbg !3164
  %tobool181 = icmp eq i8 %call180, 0, !dbg !3164
  br i1 %tobool181, label %for.inc187, label %if.end194.loopexit

for.inc187:                                       ; preds = %for.body150.for.inc187_crit_edge, %if.then167, %land.lhs.true153
  %idxprom188.pre-phi = phi i64 [ %.pre, %for.body150.for.inc187_crit_edge ], [ %idxprom156, %if.then167 ], [ %idxprom156, %land.lhs.true153 ], !dbg !3151
  %arrayidx189 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom188.pre-phi, !dbg !3151
  br label %for.cond142, !dbg !3166, !llvm.loop !3167

if.end194.loopexit:                               ; preds = %for.cond142, %land.rhs, %if.then167
  br label %if.end194, !dbg !3169

if.end194:                                        ; preds = %if.end194.loopexit, %if.else134, %if.then124, %if.then102, %if.then110
  %29 = load i32, i32* @move2add_luid, align 4, !dbg !3169
  store i32 %29, i32* %arrayidx41, align 4, !dbg !3170
  %bf.load197 = load i32, i32* %6, align 8, !dbg !3171
  %bf.lshr198 = lshr i32 %bf.load197, 16, !dbg !3171
  %bf.clear199 = and i32 %bf.lshr198, 255, !dbg !3171
  store i32 %bf.clear199, i32* %arrayidx50, align 4, !dbg !3172
  %30 = load i64, i64* %arrayidx89, align 8, !dbg !3173
  store i64 %30, i64* %arrayidx91, align 8, !dbg !3174
  br label %cleanup440

if.else209:                                       ; preds = %land.lhs.true82, %if.then77
  %cmp212 = icmp eq i32 %bf.clear79, 37, !dbg !3175
  br i1 %cmp212, label %land.lhs.true214, label %if.end439, !dbg !3176

land.lhs.true214:                                 ; preds = %if.else209
  %31 = load i32, i32* %arrayidx41, align 4, !dbg !3177
  %call217 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3178
  %idxprom218 = zext i32 %call217 to i64, !dbg !3179
  %arrayidx219 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom218, !dbg !3179
  %32 = load i32, i32* %arrayidx219, align 4, !dbg !3179
  %cmp220 = icmp eq i32 %31, %32, !dbg !3180
  br i1 %cmp220, label %land.lhs.true222, label %if.end439, !dbg !3181

land.lhs.true222:                                 ; preds = %land.lhs.true214
  %arrayidx224 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom40, !dbg !3182
  %33 = load i32, i32* %arrayidx224, align 4, !dbg !3182
  %call225 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3183
  %idxprom226 = zext i32 %call225 to i64, !dbg !3184
  %arrayidx227 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom226, !dbg !3184
  %34 = load i32, i32* %arrayidx227, align 4, !dbg !3184
  %cmp228 = icmp eq i32 %33, %34, !dbg !3185
  br i1 %cmp228, label %land.lhs.true230, label %if.end439, !dbg !3186

land.lhs.true230:                                 ; preds = %land.lhs.true222
  %bf.load231 = load i32, i32* %6, align 8, !dbg !3187
  %bf.lshr232 = lshr i32 %bf.load231, 16, !dbg !3187
  %bf.clear233 = and i32 %bf.lshr232, 255, !dbg !3187
  %idxprom234 = zext i32 %bf.clear233 to i64, !dbg !3187
  %arrayidx235 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom234, !dbg !3187
  %35 = load i8, i8* %arrayidx235, align 1, !dbg !3187
  %call238 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3187
  %idxprom239 = zext i32 %call238 to i64, !dbg !3187
  %arrayidx240 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom239, !dbg !3187
  %36 = load i32, i32* %arrayidx240, align 4, !dbg !3187
  %idxprom241 = zext i32 %36 to i64, !dbg !3187
  %arrayidx242 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom241, !dbg !3187
  %37 = load i8, i8* %arrayidx242, align 1, !dbg !3187
  %cmp245 = icmp eq i8 %35, %37, !dbg !3187
  br i1 %cmp245, label %if.then264, label %lor.lhs.false247, !dbg !3187

lor.lhs.false247:                                 ; preds = %land.lhs.true230
  %bf.load248 = load i32, i32* %6, align 8, !dbg !3187
  %bf.lshr249 = lshr i32 %bf.load248, 16, !dbg !3187
  %bf.clear250 = and i32 %bf.lshr249, 255, !dbg !3187
  %idxprom251 = zext i32 %bf.clear250 to i64, !dbg !3187
  %arrayidx252 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom251, !dbg !3187
  %38 = load i8, i8* %arrayidx252, align 1, !dbg !3187
  %call255 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3187
  %idxprom256 = zext i32 %call255 to i64, !dbg !3187
  %arrayidx257 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom256, !dbg !3187
  %39 = load i32, i32* %arrayidx257, align 4, !dbg !3187
  %idxprom258 = zext i32 %39 to i64, !dbg !3187
  %arrayidx259 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom258, !dbg !3187
  %40 = load i8, i8* %arrayidx259, align 1, !dbg !3187
  %cmp262 = icmp ugt i8 %38, %40, !dbg !3187
  br i1 %cmp262, label %if.end439, label %if.then264, !dbg !3188

if.then264:                                       ; preds = %lor.lhs.false247, %land.lhs.true230
  %call265 = tail call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %insn.0) #6, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call265, metadata !3031, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3034, metadata !DIExpression()), !dbg !3190
  %tobool266 = icmp eq %struct.rtx_def* %call265, null, !dbg !3191
  br i1 %tobool266, label %if.end308, label %if.then267, !dbg !3193

if.then267:                                       ; preds = %if.then264
  %41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call265, i64 0, i32 0, !dbg !3194
  %bf.load268 = load i32, i32* %41, align 8, !dbg !3194
  %bf.clear269 = and i32 %bf.load268, 65535, !dbg !3194
  %cmp270 = icmp eq i32 %bf.clear269, 8, !dbg !3194
  br i1 %cmp270, label %cond.true, label %lor.lhs.false272, !dbg !3194

lor.lhs.false272:                                 ; preds = %if.then267
  %cmp275 = icmp eq i32 %bf.clear269, 7, !dbg !3194
  br i1 %cmp275, label %cond.true, label %lor.lhs.false277, !dbg !3194

lor.lhs.false277:                                 ; preds = %lor.lhs.false272
  %cmp280 = icmp eq i32 %bf.clear269, 9, !dbg !3194
  br i1 %cmp280, label %cond.true, label %lor.lhs.false282, !dbg !3194

lor.lhs.false282:                                 ; preds = %lor.lhs.false277
  %cmp285 = icmp eq i32 %bf.clear269, 10, !dbg !3194
  br i1 %cmp285, label %cond.true, label %if.end308, !dbg !3194

cond.true:                                        ; preds = %lor.lhs.false282, %lor.lhs.false277, %lor.lhs.false272, %if.then267
  %u287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call265, i64 0, i32 1, !dbg !3194
  %42 = getelementptr inbounds %union.u, %union.u* %u287, i64 1, i32 0, i32 0, i64 0, !dbg !3194
  %43 = bitcast %union.rtunion_def* %42 to i32**, !dbg !3194
  %44 = load i32*, i32** %43, align 8, !dbg !3194
  %bf.load291 = load i32, i32* %44, align 8, !dbg !3194
  %bf.clear292 = and i32 %bf.load291, 65535, !dbg !3194
  %cmp293 = icmp eq i32 %bf.clear292, 23, !dbg !3194
  %45 = bitcast i32* %44 to %struct.rtx_def*, !dbg !3194
  br i1 %cmp293, label %if.end308, label %cond.false, !dbg !3194

cond.false:                                       ; preds = %cond.true
  %call304 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %call265, %struct.rtx_def* %45) #6, !dbg !3194
  br label %if.end308, !dbg !3194

if.end308:                                        ; preds = %if.then264, %cond.true, %cond.false, %lor.lhs.false282
  %set.0 = phi %struct.rtx_def* [ null, %if.then264 ], [ %call304, %cond.false ], [ %45, %cond.true ], [ null, %lor.lhs.false282 ], !dbg !3190
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set.0, metadata !3034, metadata !DIExpression()), !dbg !3190
  %tobool309 = icmp eq %struct.rtx_def* %set.0, null, !dbg !3195
  br i1 %tobool309, label %cleanup433, label %land.lhs.true310, !dbg !3196

land.lhs.true310:                                 ; preds = %if.end308
  %arrayidx313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3197
  %rt_rtx314 = bitcast %union.rtunion_def* %arrayidx313 to %struct.rtx_def**, !dbg !3197
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx314, align 8, !dbg !3197
  %cmp315 = icmp eq %struct.rtx_def* %46, %7, !dbg !3198
  br i1 %cmp315, label %land.lhs.true317, label %cleanup433, !dbg !3199

land.lhs.true317:                                 ; preds = %land.lhs.true310
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3200
  %48 = bitcast %union.rtunion_def* %47 to i32**, !dbg !3200
  %49 = load i32*, i32** %48, align 8, !dbg !3200
  %bf.load322 = load i32, i32* %49, align 8, !dbg !3200
  %bf.clear323 = and i32 %bf.load322, 65535, !dbg !3200
  %cmp324 = icmp eq i32 %bf.clear323, 49, !dbg !3201
  br i1 %cmp324, label %land.lhs.true326, label %cleanup433, !dbg !3202

land.lhs.true326:                                 ; preds = %land.lhs.true317
  %rt_rtx330 = bitcast %union.rtunion_def* %47 to %struct.rtx_def**, !dbg !3203
  %arrayidx333 = getelementptr inbounds i32, i32* %49, i64 2, !dbg !3203
  %rt_rtx334 = bitcast i32* %arrayidx333 to %struct.rtx_def**, !dbg !3203
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx334, align 8, !dbg !3203
  %cmp335 = icmp eq %struct.rtx_def* %50, %7, !dbg !3204
  br i1 %cmp335, label %land.lhs.true337, label %cleanup433, !dbg !3205

land.lhs.true337:                                 ; preds = %land.lhs.true326
  %51 = getelementptr inbounds i32, i32* %49, i64 4, !dbg !3206
  %52 = bitcast i32* %51 to i32**, !dbg !3206
  %53 = load i32*, i32** %52, align 8, !dbg !3206
  %bf.load346 = load i32, i32* %53, align 8, !dbg !3206
  %bf.clear347 = and i32 %bf.load346, 65535, !dbg !3206
  %cmp348 = icmp eq i32 %bf.clear347, 30, !dbg !3206
  %54 = bitcast i32* %53 to %struct.rtx_def*, !dbg !3207
  br i1 %cmp348, label %if.then350, label %cleanup433, !dbg !3207

if.then350:                                       ; preds = %land.lhs.true337
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !3035, metadata !DIExpression()), !dbg !3208
  %u359 = getelementptr inbounds i32, i32* %53, i64 2, !dbg !3209
  %arrayidx361 = bitcast i32* %u359 to i64*, !dbg !3209
  %55 = load i64, i64* %arrayidx361, align 8, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %55, metadata !3038, metadata !DIExpression()), !dbg !3208
  %call362 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3210
  %idxprom363 = zext i32 %call362 to i64, !dbg !3211
  %arrayidx364 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom363, !dbg !3211
  %56 = load i64, i64* %arrayidx364, align 8, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %56, metadata !3039, metadata !DIExpression()), !dbg !3208
  %arrayidx366 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom40, !dbg !3212
  %57 = load i64, i64* %arrayidx366, align 8, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %57, metadata !3040, metadata !DIExpression()), !dbg !3208
  %add = add nsw i64 %55, %56, !dbg !3213
  %sub368 = sub nsw i64 %add, %57, !dbg !3214
  %bf.load369 = load i32, i32* %6, align 8, !dbg !3215
  %bf.lshr370 = lshr i32 %bf.load369, 16, !dbg !3215
  %bf.clear371 = and i32 %bf.lshr370, 255, !dbg !3215
  %call372 = tail call %struct.rtx_def* @gen_int_mode(i64 %sub368, i32 %bf.clear371) #6, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call372, metadata !3041, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8 0, metadata !3042, metadata !DIExpression()), !dbg !3208
  %arrayidx376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 1, !dbg !3217
  %rt_bb377 = bitcast %struct.object_block** %arrayidx376 to %struct.basic_block_def**, !dbg !3217
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb377, align 8, !dbg !3217
  %call378 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %58) #6, !dbg !3218
  call void @llvm.dbg.value(metadata i8 %call378, metadata !3043, metadata !DIExpression()), !dbg !3208
  %59 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3219
  %cmp379 = icmp eq %struct.rtx_def* %call372, %59, !dbg !3220
  br i1 %cmp379, label %if.then381, label %if.else387, !dbg !3221

if.then381:                                       ; preds = %if.then350
  %call386 = tail call zeroext i8 @validate_change(%struct.rtx_def* %call265, %struct.rtx_def** nonnull %rt_rtx330, %struct.rtx_def* %7, i8 zeroext 0) #6, !dbg !3222
  call void @llvm.dbg.value(metadata i8 %call386, metadata !3042, metadata !DIExpression()), !dbg !3208
  br label %if.end408, !dbg !3223

if.else387:                                       ; preds = %if.then350
  %call388 = tail call i32 @rtx_cost(%struct.rtx_def* %call372, i32 49, i8 zeroext %call378) #6, !dbg !3224
  %call389 = tail call i32 @rtx_cost(%struct.rtx_def* %54, i32 23, i8 zeroext %call378) #6, !dbg !3225
  %add390 = add nsw i32 %call389, 4, !dbg !3226
  %cmp391 = icmp slt i32 %call388, %add390, !dbg !3227
  br i1 %cmp391, label %land.lhs.true393, label %if.end408, !dbg !3228

land.lhs.true393:                                 ; preds = %if.else387
  %call394 = tail call i32 @have_add2_insn(%struct.rtx_def* %7, %struct.rtx_def* %call372) #6, !dbg !3229
  %tobool395 = icmp eq i32 %call394, 0, !dbg !3229
  br i1 %tobool395, label %if.end408, label %if.then396, !dbg !3230

if.then396:                                       ; preds = %land.lhs.true393
  %bf.load397 = load i32, i32* %6, align 8, !dbg !3231
  %bf.lshr398 = lshr i32 %bf.load397, 16, !dbg !3231
  %bf.clear399 = and i32 %bf.lshr398, 255, !dbg !3231
  %call400 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear399, %struct.rtx_def* %7, %struct.rtx_def* %call372) #6, !dbg !3231
  %call401 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %7, %struct.rtx_def* %call400) #6, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call401, metadata !3044, metadata !DIExpression()), !dbg !3232
  %u402 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call265, i64 0, i32 1, !dbg !3233
  %60 = getelementptr inbounds %union.u, %union.u* %u402, i64 1, i32 0, i32 0, i64 0, !dbg !3233
  %rt_rtx405 = bitcast %union.rtunion_def* %60 to %struct.rtx_def**, !dbg !3233
  %call406 = tail call zeroext i8 @validate_change(%struct.rtx_def* %call265, %struct.rtx_def** nonnull %rt_rtx405, %struct.rtx_def* %call401, i8 zeroext 0) #6, !dbg !3234
  call void @llvm.dbg.value(metadata i8 %call406, metadata !3042, metadata !DIExpression()), !dbg !3208
  br label %if.end408, !dbg !3235

if.end408:                                        ; preds = %land.lhs.true393, %if.else387, %if.then396, %if.then381
  %success.1 = phi i8 [ %call386, %if.then381 ], [ %call406, %if.then396 ], [ 0, %land.lhs.true393 ], [ 0, %if.else387 ], !dbg !3236
  call void @llvm.dbg.value(metadata i8 %success.1, metadata !3042, metadata !DIExpression()), !dbg !3208
  %tobool409 = icmp eq i8 %success.1, 0, !dbg !3237
  br i1 %tobool409, label %if.end412, label %if.then410, !dbg !3239

if.then410:                                       ; preds = %if.end408
  %call411 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn.0) #6, !dbg !3240
  br label %if.end412, !dbg !3240

if.end412:                                        ; preds = %if.end408, %if.then410
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call265, metadata !2999, metadata !DIExpression()), !dbg !3060
  %bf.load413 = load i32, i32* %6, align 8, !dbg !3241
  %bf.lshr414 = lshr i32 %bf.load413, 16, !dbg !3241
  %bf.clear415 = and i32 %bf.lshr414, 255, !dbg !3241
  store i32 %bf.clear415, i32* %arrayidx50, align 4, !dbg !3242
  %bf.load419 = load i32, i32* %6, align 8, !dbg !3243
  %bf.lshr420 = lshr i32 %bf.load419, 16, !dbg !3243
  %bf.clear421 = and i32 %bf.lshr420, 255, !dbg !3243
  %call422 = tail call i64 @trunc_int_for_mode(i64 %add, i32 %bf.clear421) #6, !dbg !3244
  store i64 %call422, i64* %arrayidx366, align 8, !dbg !3245
  br label %cleanup433

cleanup433:                                       ; preds = %if.end308, %land.lhs.true310, %land.lhs.true317, %land.lhs.true326, %land.lhs.true337, %if.end412
  %cleanup.dest.slot.1 = phi i32 [ 7, %if.end412 ], [ 0, %land.lhs.true337 ], [ 0, %land.lhs.true326 ], [ 0, %land.lhs.true317 ], [ 0, %land.lhs.true310 ], [ 0, %if.end308 ]
  %insn.1 = phi %struct.rtx_def* [ %call265, %if.end412 ], [ %insn.0, %land.lhs.true337 ], [ %insn.0, %land.lhs.true326 ], [ %insn.0, %land.lhs.true317 ], [ %insn.0, %land.lhs.true310 ], [ %insn.0, %if.end308 ], !dbg !3075
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2999, metadata !DIExpression()), !dbg !3060
  %cond2 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond2, label %if.end439, label %cleanup440

if.end439:                                        ; preds = %lor.lhs.false247, %land.lhs.true73, %lor.lhs.false57, %cleanup433, %land.lhs.true222, %land.lhs.true214, %if.else209, %if.then31
  %insn.3 = phi %struct.rtx_def* [ %insn.0, %land.lhs.true73 ], [ %insn.0, %lor.lhs.false57 ], [ %insn.0, %if.then31 ], [ %insn.0, %lor.lhs.false247 ], [ %insn.0, %land.lhs.true222 ], [ %insn.0, %land.lhs.true214 ], [ %insn.0, %if.else209 ], [ %insn.1, %cleanup433 ], !dbg !3075
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.3, metadata !2999, metadata !DIExpression()), !dbg !3060
  br label %cleanup440, !dbg !3246

cleanup440:                                       ; preds = %cleanup433, %if.end439, %if.end194
  %cleanup.dest.slot.2 = phi i32 [ 7, %if.end194 ], [ %cleanup.dest.slot.1, %cleanup433 ], [ 0, %if.end439 ]
  %insn.4 = phi %struct.rtx_def* [ %insn.0, %if.end194 ], [ %insn.1, %cleanup433 ], [ %insn.3, %if.end439 ], !dbg !3075
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.4, metadata !2999, metadata !DIExpression()), !dbg !3060
  %cond1 = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond1, label %if.end445, label %cleanup609

if.end445:                                        ; preds = %cleanup440, %land.lhs.true, %if.end19
  %insn.5 = phi %struct.rtx_def* [ %insn.0, %land.lhs.true ], [ %insn.0, %if.end19 ], [ %insn.4, %cleanup440 ], !dbg !3247
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.5, metadata !2999, metadata !DIExpression()), !dbg !3060
  %u446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.5, i64 0, i32 1, !dbg !3248
  %61 = getelementptr inbounds %union.u, %union.u* %u446, i64 1, i32 0, i32 0, i64 2, !dbg !3248
  br label %for.cond450, !dbg !3249

for.cond450:                                      ; preds = %for.inc481, %if.end445
  %note.0.in.in = phi %union.rtunion_def* [ %61, %if.end445 ], [ %66, %for.inc481 ]
  %note.0.in = bitcast %union.rtunion_def* %note.0.in.in to %struct.rtx_def**, !dbg !3250
  %note.0 = load %struct.rtx_def*, %struct.rtx_def** %note.0.in, align 8, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !3004, metadata !DIExpression()), !dbg !3088
  %tobool451 = icmp eq %struct.rtx_def* %note.0, null, !dbg !3251
  br i1 %tobool451, label %for.end486, label %for.body452, !dbg !3251

for.body452:                                      ; preds = %for.cond450
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 0, !dbg !3252
  %bf.load453 = load i32, i32* %62, align 8, !dbg !3252
  %bf.clear455 = and i32 %bf.load453, 16711680, !dbg !3252
  %cmp456 = icmp eq i32 %bf.clear455, 131072, !dbg !3253
  br i1 %cmp456, label %land.lhs.true458, label %for.inc481, !dbg !3254

land.lhs.true458:                                 ; preds = %for.body452
  %arrayidx461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3255
  %63 = bitcast %union.rtunion_def* %arrayidx461 to i32**, !dbg !3255
  %64 = load i32*, i32** %63, align 8, !dbg !3255
  %bf.load463 = load i32, i32* %64, align 8, !dbg !3255
  %bf.clear464 = and i32 %bf.load463, 65535, !dbg !3255
  %cmp465 = icmp eq i32 %bf.clear464, 37, !dbg !3255
  br i1 %cmp465, label %if.then467, label %for.inc481, !dbg !3256

if.then467:                                       ; preds = %land.lhs.true458
  %65 = bitcast i32* %64 to %struct.rtx_def*, !dbg !3256
  %call473 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %65) #7, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %call473, metadata !3048, metadata !DIExpression()), !dbg !3258
  %cmp474 = icmp slt i32 %call473, 53, !dbg !3259
  br i1 %cmp474, label %if.then476, label %for.inc481, !dbg !3261

if.then476:                                       ; preds = %if.then467
  %idxprom477 = sext i32 %call473 to i64, !dbg !3262
  %arrayidx478 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom477, !dbg !3262
  store i32 0, i32* %arrayidx478, align 4, !dbg !3263
  br label %for.inc481, !dbg !3262

for.inc481:                                       ; preds = %for.body452, %land.lhs.true458, %if.then476, %if.then467
  %66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3264
  br label %for.cond450, !dbg !3265, !llvm.loop !3266

for.end486:                                       ; preds = %for.cond450
  %67 = getelementptr inbounds %union.u, %union.u* %u446, i64 1, i32 0, i32 0, i64 0, !dbg !3268
  %rt_rtx490 = bitcast %union.rtunion_def* %67 to %struct.rtx_def**, !dbg !3268
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx490, align 8, !dbg !3268
  tail call void @note_stores(%struct.rtx_def* %68, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @move2add_note_store, i8* null) #6, !dbg !3269
  %call491 = tail call i32 @any_condjump_p(%struct.rtx_def* %insn.5) #6, !dbg !3270
  %tobool492 = icmp eq i32 %call491, 0, !dbg !3270
  br i1 %tobool492, label %if.end588, label %if.then493, !dbg !3271

if.then493:                                       ; preds = %for.end486
  %call494 = tail call %struct.rtx_def* @fis_get_condition(%struct.rtx_def* %insn.5) #6, !dbg !3272
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call494, metadata !3054, metadata !DIExpression()), !dbg !3273
  %cmp495 = icmp eq %struct.rtx_def* %call494, null, !dbg !3274
  br i1 %cmp495, label %if.end588, label %land.lhs.true497, !dbg !3275

land.lhs.true497:                                 ; preds = %if.then493
  %69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call494, i64 0, i32 0, !dbg !3276
  %bf.load498 = load i32, i32* %69, align 8, !dbg !3276
  %bf.clear499 = and i32 %bf.load498, 65535, !dbg !3276
  %cmp500 = icmp eq i32 %bf.clear499, 80, !dbg !3277
  br i1 %cmp500, label %land.lhs.true502, label %if.end588, !dbg !3278

land.lhs.true502:                                 ; preds = %land.lhs.true497
  %arrayidx505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call494, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3279
  %70 = bitcast %union.rtunion_def* %arrayidx505 to i32**, !dbg !3279
  %71 = load i32*, i32** %70, align 8, !dbg !3279
  %bf.load507 = load i32, i32* %71, align 8, !dbg !3279
  %bf.clear508 = and i32 %bf.load507, 65535, !dbg !3279
  %cmp509 = icmp eq i32 %bf.clear508, 37, !dbg !3279
  br i1 %cmp509, label %land.lhs.true511, label %if.end588, !dbg !3280

land.lhs.true511:                                 ; preds = %land.lhs.true502
  %72 = bitcast i32* %71 to %struct.rtx_def*, !dbg !3280
  %call516 = tail call i32 @reg_set_p(%struct.rtx_def* %72, %struct.rtx_def* %insn.5) #6, !dbg !3281
  %tobool517 = icmp eq i32 %call516, 0, !dbg !3281
  br i1 %tobool517, label %land.lhs.true518, label %if.end588, !dbg !3282

land.lhs.true518:                                 ; preds = %land.lhs.true511
  %73 = load i32*, i32** %70, align 8, !dbg !3283
  %bf.load523 = load i32, i32* %73, align 8, !dbg !3283
  %bf.lshr524 = lshr i32 %bf.load523, 16, !dbg !3283
  %bf.clear525 = and i32 %bf.lshr524, 255, !dbg !3283
  %idxprom526 = zext i32 %bf.clear525 to i64, !dbg !3283
  %arrayidx527 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom526, !dbg !3283
  %74 = load i8, i8* %arrayidx527, align 1, !dbg !3283
  %cmp529 = icmp eq i8 %74, 2, !dbg !3283
  %75 = bitcast i32* %73 to %struct.rtx_def*, !dbg !3283
  br i1 %cmp529, label %land.lhs.true544, label %lor.lhs.false531, !dbg !3283

lor.lhs.false531:                                 ; preds = %land.lhs.true518
  %cmp542 = icmp eq i8 %74, 3, !dbg !3283
  br i1 %cmp542, label %land.lhs.true544, label %if.end588, !dbg !3284

land.lhs.true544:                                 ; preds = %lor.lhs.false531, %land.lhs.true518
  %call549 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %75) #7, !dbg !3285
  %idxprom550 = zext i32 %call549 to i64, !dbg !3286
  %76 = load i32*, i32** %70, align 8, !dbg !3287
  %bf.load556 = load i32, i32* %76, align 8, !dbg !3287
  %bf.lshr557 = lshr i32 %bf.load556, 16, !dbg !3287
  %bf.clear558 = and i32 %bf.lshr557, 255, !dbg !3287
  %idxprom559 = zext i32 %bf.clear558 to i64, !dbg !3286
  %arrayidx560 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom550, i64 %idxprom559, !dbg !3286
  %77 = load i8, i8* %arrayidx560, align 1, !dbg !3286
  %cmp562 = icmp eq i8 %77, 1, !dbg !3288
  %78 = bitcast i32* %76 to %struct.rtx_def*, !dbg !3289
  br i1 %cmp562, label %land.lhs.true564, label %if.end588, !dbg !3289

land.lhs.true564:                                 ; preds = %land.lhs.true544
  %79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call494, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3290
  %80 = bitcast %union.rtunion_def* %79 to i32**, !dbg !3290
  %81 = load i32*, i32** %80, align 8, !dbg !3290
  %bf.load569 = load i32, i32* %81, align 8, !dbg !3290
  %bf.clear570 = and i32 %bf.load569, 65535, !dbg !3290
  %cmp571 = icmp eq i32 %bf.clear570, 30, !dbg !3290
  br i1 %cmp571, label %if.then573, label %if.end588, !dbg !3291

if.then573:                                       ; preds = %land.lhs.true564
  %82 = bitcast i32* %81 to %struct.rtx_def*, !dbg !3291
  %call582 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %78, %struct.rtx_def* %82) #6, !dbg !3292
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call582, metadata !3057, metadata !DIExpression()), !dbg !3293
  %arrayidx585 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call582, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3294
  %rt_rtx586 = bitcast %union.rtunion_def* %arrayidx585 to %struct.rtx_def**, !dbg !3294
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx586, align 8, !dbg !3294
  tail call void @move2add_note_store(%struct.rtx_def* %83, %struct.rtx_def* %call582, i8* null) #7, !dbg !3295
  br label %if.end588, !dbg !3296

if.end588:                                        ; preds = %land.lhs.true511, %if.then493, %for.end486, %land.lhs.true497, %land.lhs.true502, %lor.lhs.false531, %land.lhs.true544, %land.lhs.true564, %if.then573
  %84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.5, i64 0, i32 0, !dbg !3297
  %bf.load589 = load i32, i32* %84, align 8, !dbg !3297
  %bf.clear590 = and i32 %bf.load589, 65535, !dbg !3297
  %cmp591 = icmp eq i32 %bf.clear590, 10, !dbg !3297
  br i1 %cmp591, label %for.cond594.preheader, label %cleanup609, !dbg !3299

for.cond594.preheader:                            ; preds = %if.end588
  br label %for.cond594, !dbg !3300

for.cond594:                                      ; preds = %for.cond594.preheader, %for.inc605
  %indvars.iv = phi i64 [ 52, %for.cond594.preheader ], [ %indvars.iv.next, %for.inc605 ], !dbg !3303
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2998, metadata !DIExpression()), !dbg !3060
  %cmp595 = icmp sgt i64 %indvars.iv, -1, !dbg !3304
  br i1 %cmp595, label %for.body597, label %cleanup609.loopexit, !dbg !3300

for.body597:                                      ; preds = %for.cond594
  %arrayidx599 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv, !dbg !3306
  %85 = load i8, i8* %arrayidx599, align 1, !dbg !3306
  %tobool600 = icmp eq i8 %85, 0, !dbg !3306
  br i1 %tobool600, label %for.inc605, label %if.then601, !dbg !3309

if.then601:                                       ; preds = %for.body597
  %arrayidx603 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %indvars.iv, !dbg !3310
  store i32 0, i32* %arrayidx603, align 4, !dbg !3311
  br label %for.inc605, !dbg !3310

for.inc605:                                       ; preds = %for.body597, %if.then601
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3312
  call void @llvm.dbg.value(metadata i32 undef, metadata !2998, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3060
  br label %for.cond594, !dbg !3313, !llvm.loop !3314

cleanup609.loopexit:                              ; preds = %for.cond594
  br label %cleanup609, !dbg !3316

cleanup609:                                       ; preds = %cleanup609.loopexit, %if.end588, %lor.lhs.false14, %cleanup440, %if.then
  %insn.6 = phi %struct.rtx_def* [ %insn.0, %if.then ], [ %insn.4, %cleanup440 ], [ %insn.0, %lor.lhs.false14 ], [ %insn.5, %if.end588 ], [ %insn.5, %cleanup609.loopexit ], !dbg !3247
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.6, metadata !2999, metadata !DIExpression()), !dbg !3060
  %86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.6, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3316
  %rt_rtx617 = bitcast %union.rtunion_def* %86 to %struct.rtx_def**, !dbg !3316
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx617, align 8, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.rtx_def* %87, metadata !2999, metadata !DIExpression()), !dbg !3060
  %88 = load i32, i32* @move2add_luid, align 4, !dbg !3317
  %inc618 = add nsw i32 %88, 1, !dbg !3317
  br label %for.cond1, !dbg !3318, !llvm.loop !3319

for.end619:                                       ; preds = %for.cond1
  ret void, !dbg !3321
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_postreload() #5 !dbg !3322 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !3323
  %cmp = icmp sgt i32 %0, 0, !dbg !3324
  %1 = load i32, i32* @reload_completed, align 4, !dbg !3325
  %tobool = icmp ne i32 %1, 0, !dbg !3325
  %2 = and i1 %cmp, %tobool, !dbg !3325
  %conv = zext i1 %2 to i8, !dbg !3326
  ret i8 %conv, !dbg !3327
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_postreload() #5 !dbg !3328 {
entry:
  %call = tail call zeroext i8 @dbg_cnt(i32 22) #6, !dbg !3329
  %tobool = icmp eq i8 %call, 0, !dbg !3329
  br i1 %tobool, label %return, label %if.end, !dbg !3331

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3332
  tail call void @reload_cse_regs(%struct.rtx_def* %call1) #7, !dbg !3333
  %0 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !3334
  %tobool2 = icmp eq i32 %0, 0, !dbg !3334
  br i1 %tobool2, label %return, label %if.then3, !dbg !3336

if.then3:                                         ; preds = %if.end
  %call4 = tail call zeroext i8 @purge_all_dead_edges() #6, !dbg !3337
  br label %return, !dbg !3337

return:                                           ; preds = %if.end, %entry, %if.then3
  ret i32 0, !dbg !3338
}

declare dso_local %struct.rtx_def* @gen_rtx_REG(i32, i32) local_unnamed_addr #2

declare dso_local void @cselib_init(i32) local_unnamed_addr #2

declare dso_local void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_cse_simplify(%struct.rtx_def* %insn, %struct.rtx_def* %testreg) unnamed_addr #5 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3343, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata %struct.rtx_def* %testreg, metadata !3344, metadata !DIExpression()), !dbg !3367
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3368
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3368
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3368
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3345, metadata !DIExpression()), !dbg !3367
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3369
  %bf.load = load i32, i32* %2, align 8, !dbg !3369
  %bf.clear = and i32 %bf.load, 65535, !dbg !3369
  %cmp = icmp eq i32 %bf.clear, 23, !dbg !3370
  br i1 %cmp, label %if.then, label %if.else22, !dbg !3371

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()), !dbg !3372
  %call = tail call fastcc i32 @reload_cse_simplify_set(%struct.rtx_def* %1, %struct.rtx_def* %insn) #7, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %call, metadata !3346, metadata !DIExpression()), !dbg !3372
  %tobool = icmp eq i32 %call, 0, !dbg !3374
  br i1 %tobool, label %land.lhs.true, label %if.end16, !dbg !3375

land.lhs.true:                                    ; preds = %if.then
  %call1 = tail call fastcc i32 @reload_cse_noop_set_p(%struct.rtx_def* %1) #7, !dbg !3376
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3376
  br i1 %tobool2, label %if.end16, label %if.then3, !dbg !3377

if.then3:                                         ; preds = %land.lhs.true
  %call15 = tail call %struct.rtx_def* @delete_insn_and_edges(%struct.rtx_def* %insn) #6, !dbg !3378
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true, %if.then
  %cmp17 = icmp sgt i32 %call, 0, !dbg !3379
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !3381

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @apply_change_group() #6, !dbg !3382
  br label %cleanup, !dbg !3382

if.else:                                          ; preds = %if.end16
  %call20 = tail call fastcc i32 @reload_cse_simplify_operands(%struct.rtx_def* %insn, %struct.rtx_def* %testreg) #7, !dbg !3383
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.else, %if.then3
  ret void

if.else22:                                        ; preds = %entry
  %cmp25 = icmp eq i32 %bf.clear, 15, !dbg !3384
  br i1 %cmp25, label %if.then26, label %cleanup.cont173, !dbg !3385

if.then26:                                        ; preds = %if.else22
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3356, metadata !DIExpression()), !dbg !3386
  %call29 = tail call i32 @asm_noperands(%struct.rtx_def* %1) #6, !dbg !3387
  %cmp30 = icmp sgt i32 %call29, -1, !dbg !3388
  br i1 %cmp30, label %if.then31, label %if.then26.if.end58_crit_edge, !dbg !3389

if.then26.if.end58_crit_edge:                     ; preds = %if.then26
  br label %if.end58, !dbg !3389

if.then31:                                        ; preds = %if.then26
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3390
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**, !dbg !3390
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3390
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i64 0, i32 0, !dbg !3390
  %4 = load i32, i32* %num_elem, align 8, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %4, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %5 = sext i32 %4 to i64, !dbg !3391
  br label %for.cond, !dbg !3391

for.cond:                                         ; preds = %for.inc, %if.then31
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc ], [ %5, %if.then31 ]
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, -1, !dbg !3392
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %cmp35 = icmp sgt i64 %indvars.iv4, 0, !dbg !3393
  br i1 %cmp35, label %for.body, label %if.end58.loopexit, !dbg !3394

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3395
  %arrayidx40 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 1, i64 %indvars.iv.next5, !dbg !3395
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8, !dbg !3395
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3357, metadata !DIExpression()), !dbg !3396
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3397
  %bf.load41 = load i32, i32* %8, align 8, !dbg !3397
  %bf.clear42 = and i32 %bf.load41, 65535, !dbg !3397
  %cmp43 = icmp eq i32 %bf.clear42, 25, !dbg !3399
  br i1 %cmp43, label %land.lhs.true44, label %for.inc, !dbg !3400

land.lhs.true44:                                  ; preds = %for.body
  %arrayidx47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3401
  %9 = bitcast %union.rtunion_def* %arrayidx47 to i32**, !dbg !3401
  %10 = load i32*, i32** %9, align 8, !dbg !3401
  %bf.load49 = load i32, i32* %10, align 8, !dbg !3401
  %bf.clear50 = and i32 %bf.load49, 65535, !dbg !3401
  %cmp51 = icmp eq i32 %bf.clear50, 37, !dbg !3401
  br i1 %cmp51, label %if.then52, label %for.inc, !dbg !3402

if.then52:                                        ; preds = %land.lhs.true44
  %11 = bitcast i32* %10 to %struct.rtx_def*, !dbg !3402
  tail call void @cselib_invalidate_rtx(%struct.rtx_def* %11) #6, !dbg !3403
  br label %for.inc, !dbg !3403

for.inc:                                          ; preds = %for.body, %land.lhs.true44, %if.then52
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  br label %for.cond, !dbg !3404, !llvm.loop !3405

if.end58.loopexit:                                ; preds = %for.cond
  br label %if.end58, !dbg !3407

if.end58:                                         ; preds = %if.then26.if.end58_crit_edge, %if.end58.loopexit
  %arrayidx61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3407
  %rt_rtvec62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtvec_def**, !dbg !3407
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec62, align 8, !dbg !3407
  %num_elem63 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 0, !dbg !3407
  %13 = load i32, i32* %num_elem63, align 8, !dbg !3407
  call void @llvm.dbg.value(metadata i32 %13, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %14 = sext i32 %13 to i64, !dbg !3408
  br label %for.cond65, !dbg !3408

for.cond65:                                       ; preds = %for.inc118, %if.end58
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc118 ], [ %14, %if.end58 ]
  %value28.0 = phi %struct.rtx_def* [ %value28.3, %for.inc118 ], [ null, %if.end58 ], !dbg !3409
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.rtx_def* %value28.0, metadata !3356, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %cmp66 = icmp sgt i64 %indvars.iv2, 0, !dbg !3411
  %15 = trunc i64 %indvars.iv2 to i32, !dbg !3412
  br i1 %cmp66, label %for.body67, label %for.end120, !dbg !3412

for.body67:                                       ; preds = %for.cond65
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec62, align 8, !dbg !3413
  %arrayidx75 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i64 0, i32 1, i64 %indvars.iv.next3, !dbg !3413
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx75, align 8, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !3363, metadata !DIExpression()), !dbg !3414
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 0, !dbg !3415
  %bf.load76 = load i32, i32* %18, align 8, !dbg !3415
  %bf.clear77 = and i32 %bf.load76, 65535, !dbg !3415
  %cmp78 = icmp eq i32 %bf.clear77, 23, !dbg !3417
  br i1 %cmp78, label %if.then79, label %if.else108, !dbg !3418

if.then79:                                        ; preds = %for.body67
  %call80 = tail call fastcc i32 @reload_cse_noop_set_p(%struct.rtx_def* %17) #7, !dbg !3419
  %tobool81 = icmp eq i32 %call80, 0, !dbg !3419
  br i1 %tobool81, label %cleanup115, label %if.end83, !dbg !3422

if.end83:                                         ; preds = %if.then79
  %arrayidx86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3423
  %19 = bitcast %union.rtunion_def* %arrayidx86 to i32**, !dbg !3423
  %20 = load i32*, i32** %19, align 8, !dbg !3423
  %bf.load88 = load i32, i32* %20, align 8, !dbg !3423
  %bf.clear89 = and i32 %bf.load88, 65535, !dbg !3423
  %cmp90 = icmp eq i32 %bf.clear89, 37, !dbg !3423
  %21 = bitcast i32* %20 to %struct.rtx_def*, !dbg !3425
  br i1 %cmp90, label %land.lhs.true91, label %if.end114, !dbg !3425

land.lhs.true91:                                  ; preds = %if.end83
  %tobool98 = icmp slt i32 %bf.load88, 0, !dbg !3426
  br i1 %tobool98, label %if.then99, label %if.end114, !dbg !3427

if.then99:                                        ; preds = %land.lhs.true91
  %tobool100 = icmp eq %struct.rtx_def* %value28.0, null, !dbg !3428
  br i1 %tobool100, label %if.end102, label %cleanup115, !dbg !3431

if.end102:                                        ; preds = %if.then99
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !3356, metadata !DIExpression()), !dbg !3386
  br label %if.end114, !dbg !3432

if.else108:                                       ; preds = %for.body67
  %cmp111 = icmp eq i32 %bf.clear77, 25, !dbg !3433
  br i1 %cmp111, label %if.end114, label %cleanup115, !dbg !3435

if.end114:                                        ; preds = %if.else108, %if.end83, %land.lhs.true91, %if.end102
  %value28.2 = phi %struct.rtx_def* [ %21, %if.end102 ], [ %value28.0, %land.lhs.true91 ], [ %value28.0, %if.end83 ], [ %value28.0, %if.else108 ], !dbg !3386
  call void @llvm.dbg.value(metadata %struct.rtx_def* %value28.2, metadata !3356, metadata !DIExpression()), !dbg !3386
  br label %cleanup115, !dbg !3436

cleanup115:                                       ; preds = %if.then99, %if.then79, %if.else108, %if.end114
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end114 ], [ false, %if.then79 ], [ false, %if.then99 ], [ false, %if.else108 ]
  %value28.3 = phi %struct.rtx_def* [ %value28.2, %if.end114 ], [ %value28.0, %if.then79 ], [ %value28.0, %if.then99 ], [ %value28.0, %if.else108 ], !dbg !3386
  call void @llvm.dbg.value(metadata %struct.rtx_def* %value28.3, metadata !3356, metadata !DIExpression()), !dbg !3386
  br i1 %cleanup.dest.slot.1, label %for.inc118, label %for.end120

for.inc118:                                       ; preds = %cleanup115
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  br label %for.cond65, !dbg !3437, !llvm.loop !3438

for.end120:                                       ; preds = %cleanup115, %for.cond65
  %.lcssa = phi i32 [ %15, %cleanup115 ], [ %15, %for.cond65 ], !dbg !3412
  %cmp121 = icmp slt i32 %.lcssa, 1, !dbg !3440
  br i1 %cmp121, label %if.then122, label %if.end124, !dbg !3442

if.then122:                                       ; preds = %for.end120
  %call123 = tail call %struct.rtx_def* @delete_insn_and_edges(%struct.rtx_def* %insn) #6, !dbg !3443
  br label %cleanup.cont173, !dbg !3445

if.end124:                                        ; preds = %for.end120
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec62, align 8, !dbg !3446
  %num_elem129 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i64 0, i32 0, !dbg !3446
  %23 = load i32, i32* %num_elem129, align 8, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %23, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %24 = sext i32 %23 to i64, !dbg !3448
  br label %for.cond131, !dbg !3448

for.cond131:                                      ; preds = %for.inc155, %if.end124
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc155 ], [ %24, %if.end124 ]
  %count27.0 = phi i32 [ %count27.1, %for.inc155 ], [ 0, %if.end124 ], !dbg !3386
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %count27.0, metadata !3355, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  %cmp132 = icmp sgt i64 %indvars.iv, 0, !dbg !3450
  br i1 %cmp132, label %for.body133, label %for.end157, !dbg !3452

for.body133:                                      ; preds = %for.cond131
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec62, align 8, !dbg !3453
  %arrayidx140 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3453
  %26 = bitcast %struct.rtx_def** %arrayidx140 to i32**, !dbg !3453
  %27 = load i32*, i32** %26, align 8, !dbg !3453
  %bf.load141 = load i32, i32* %27, align 8, !dbg !3453
  %bf.clear142 = and i32 %bf.load141, 65535, !dbg !3453
  %cmp143 = icmp eq i32 %bf.clear142, 23, !dbg !3455
  br i1 %cmp143, label %if.then144, label %for.inc155, !dbg !3456

if.then144:                                       ; preds = %for.body133
  %28 = bitcast i32* %27 to %struct.rtx_def*, !dbg !3456
  %call152 = tail call fastcc i32 @reload_cse_simplify_set(%struct.rtx_def* %28, %struct.rtx_def* %insn) #7, !dbg !3457
  %add153 = add nsw i32 %count27.0, %call152, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %add153, metadata !3355, metadata !DIExpression()), !dbg !3386
  br label %for.inc155, !dbg !3459

for.inc155:                                       ; preds = %for.body133, %if.then144
  %count27.1 = phi i32 [ %add153, %if.then144 ], [ %count27.0, %for.body133 ], !dbg !3386
  call void @llvm.dbg.value(metadata i32 %count27.1, metadata !3355, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 undef, metadata !3352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3386
  br label %for.cond131, !dbg !3460, !llvm.loop !3461

for.end157:                                       ; preds = %for.cond131
  %count27.0.lcssa = phi i32 [ %count27.0, %for.cond131 ], !dbg !3386
  call void @llvm.dbg.value(metadata i32 %count27.0.lcssa, metadata !3355, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %count27.0.lcssa, metadata !3355, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %count27.0.lcssa, metadata !3355, metadata !DIExpression()), !dbg !3386
  %cmp158 = icmp sgt i32 %count27.0.lcssa, 0, !dbg !3463
  br i1 %cmp158, label %if.then159, label %if.else161, !dbg !3465

if.then159:                                       ; preds = %for.end157
  %call160 = tail call i32 @apply_change_group() #6, !dbg !3466
  br label %cleanup.cont173, !dbg !3466

if.else161:                                       ; preds = %for.end157
  %call162 = tail call fastcc i32 @reload_cse_simplify_operands(%struct.rtx_def* %insn, %struct.rtx_def* %testreg) #7, !dbg !3467
  br label %cleanup.cont173

cleanup.cont173:                                  ; preds = %if.then122, %if.else161, %if.then159, %if.else22
  ret void, !dbg !3468
}

declare dso_local void @cselib_process_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @end_alias_analysis() local_unnamed_addr #2

declare dso_local void @cselib_finish() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reload_cse_simplify_set(%struct.rtx_def* %set, %struct.rtx_def* %insn) unnamed_addr #5 !dbg !3469 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3473, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3474, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3488
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3489
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3489
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3489
  %call = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %0) #6, !dbg !3490
  call void @llvm.dbg.value(metadata i8 %call, metadata !3482, metadata !DIExpression()), !dbg !3488
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3491
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**, !dbg !3491
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3491
  %call4 = tail call i32 @true_regnum(%struct.rtx_def* %1) #6, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3476, metadata !DIExpression()), !dbg !3488
  %cmp = icmp slt i32 %call4, 0, !dbg !3493
  br i1 %cmp, label %cleanup94, label %if.end, !dbg !3495

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3496
  %rt_rtx8 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3496
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3477, metadata !DIExpression()), !dbg !3488
  %call9 = tail call i32 @side_effects_p(%struct.rtx_def* %3) #6, !dbg !3497
  %tobool = icmp eq i32 %call9, 0, !dbg !3497
  br i1 %tobool, label %lor.lhs.false, label %cleanup94, !dbg !3499

lor.lhs.false:                                    ; preds = %if.end
  %call10 = tail call i32 @true_regnum(%struct.rtx_def* %3) #6, !dbg !3500
  %cmp11 = icmp sgt i32 %call10, -1, !dbg !3501
  br i1 %cmp11, label %cleanup94, label %if.end13, !dbg !3502

if.end13:                                         ; preds = %lor.lhs.false
  %idxprom = sext i32 %call4 to i64, !dbg !3503
  %arrayidx14 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom, !dbg !3503
  %4 = load i32, i32* %arrayidx14, align 4, !dbg !3503
  call void @llvm.dbg.value(metadata i32 %4, metadata !3478, metadata !DIExpression()), !dbg !3488
  %5 = bitcast %union.rtunion_def* %arrayidx3 to i32**, !dbg !3504
  %6 = load i32*, i32** %5, align 8, !dbg !3504
  %bf.load = load i32, i32* %6, align 8, !dbg !3504
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3504
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3504
  %call19 = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %3, i32 %bf.clear, i32 0) #6, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call19, metadata !3480, metadata !DIExpression()), !dbg !3488
  %tobool20 = icmp eq %struct.cselib_val_struct* %call19, null, !dbg !3506
  br i1 %tobool20, label %cleanup94, label %if.end22, !dbg !3508

if.end22:                                         ; preds = %if.end13
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3509
  %bf.load23 = load i32, i32* %7, align 8, !dbg !3509
  %bf.clear24 = and i32 %bf.load23, 65535, !dbg !3509
  %cmp25 = icmp eq i32 %bf.clear24, 43, !dbg !3509
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !3511

if.then26:                                        ; preds = %if.end22
  %bf.lshr28 = lshr i32 %bf.load23, 16, !dbg !3512
  %bf.clear29 = and i32 %bf.lshr28, 255, !dbg !3512
  %call30 = tail call i32 @ix86_memory_move_cost(i32 %bf.clear29, i32 %4, i32 1) #6, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %call30, metadata !3479, metadata !DIExpression()), !dbg !3488
  br label %if.end45, !dbg !3513

if.else:                                          ; preds = %if.end22
  %cmp33 = icmp eq i32 %bf.clear24, 37, !dbg !3514
  br i1 %cmp33, label %if.then34, label %if.else42, !dbg !3516

if.then34:                                        ; preds = %if.else
  %bf.lshr36 = lshr i32 %bf.load23, 16, !dbg !3517
  %bf.clear37 = and i32 %bf.lshr36, 255, !dbg !3517
  %call38 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %3) #7, !dbg !3517
  %idxprom39 = zext i32 %call38 to i64, !dbg !3517
  %arrayidx40 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom39, !dbg !3517
  %8 = load i32, i32* %arrayidx40, align 4, !dbg !3517
  %call41 = tail call i32 @ix86_register_move_cost(i32 %bf.clear37, i32 %8, i32 %4) #6, !dbg !3517
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3479, metadata !DIExpression()), !dbg !3488
  br label %if.end45, !dbg !3518

if.else42:                                        ; preds = %if.else
  %call43 = tail call i32 @rtx_cost(%struct.rtx_def* %3, i32 23, i8 zeroext %call) #6, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %call43, metadata !3479, metadata !DIExpression()), !dbg !3488
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %if.else42, %if.then26
  %old_cost.1 = phi i32 [ %call30, %if.then26 ], [ %call41, %if.then34 ], [ %call43, %if.else42 ], !dbg !3520
  call void @llvm.dbg.value(metadata i32 %old_cost.1, metadata !3479, metadata !DIExpression()), !dbg !3488
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call19, i64 0, i32 3, !dbg !3521
  %9 = bitcast %union.rtunion_def* %2 to i32**, !dbg !3522
  br label %for.cond, !dbg !3524

for.cond:                                         ; preds = %cleanup, %if.end45
  %old_cost.2 = phi i32 [ %old_cost.1, %if.end45 ], [ %old_cost.4, %cleanup ], !dbg !3488
  %l.0.in = phi %struct.elt_loc_list** [ %locs, %if.end45 ], [ %next, %cleanup ]
  %did_change.0 = phi i32 [ 0, %if.end45 ], [ %did_change.2, %cleanup ], !dbg !3488
  %l.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l.0.in, align 8, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %did_change.0, metadata !3475, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !3481, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %old_cost.2, metadata !3479, metadata !DIExpression()), !dbg !3488
  %tobool46 = icmp eq %struct.elt_loc_list* %l.0, null, !dbg !3526
  br i1 %tobool46, label %cleanup94.loopexit, label %for.body, !dbg !3526

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !3527
  %10 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3527
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3483, metadata !DIExpression()), !dbg !3528
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !3529
  %bf.load47 = load i32, i32* %11, align 8, !dbg !3529
  %bf.clear48 = and i32 %bf.load47, 65535, !dbg !3529
  %idxprom49 = zext i32 %bf.clear48 to i64, !dbg !3529
  %arrayidx50 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom49, !dbg !3529
  %12 = load i32, i32* %arrayidx50, align 4, !dbg !3529
  %cmp51 = icmp eq i32 %12, 9, !dbg !3529
  br i1 %cmp51, label %land.lhs.true, label %if.else56, !dbg !3531

land.lhs.true:                                    ; preds = %for.body
  %call52 = tail call i32 @references_value_p(%struct.rtx_def* %10, i32 0) #6, !dbg !3532
  %tobool53 = icmp eq i32 %call52, 0, !dbg !3532
  br i1 %tobool53, label %if.then54, label %land.lhs.true.if.else56_crit_edge, !dbg !3533

land.lhs.true.if.else56_crit_edge:                ; preds = %land.lhs.true
  %bf.load57.pre = load i32, i32* %11, align 8, !dbg !3534
  br label %if.else56, !dbg !3533

if.then54:                                        ; preds = %land.lhs.true
  %call55 = tail call i32 @rtx_cost(%struct.rtx_def* %10, i32 23, i8 zeroext %call) #6, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %call55, metadata !3487, metadata !DIExpression()), !dbg !3528
  br label %if.end70, !dbg !3538

if.else56:                                        ; preds = %land.lhs.true.if.else56_crit_edge, %for.body
  %bf.load61 = phi i32 [ %bf.load57.pre, %land.lhs.true.if.else56_crit_edge ], [ %bf.load47, %for.body ], !dbg !3534
  %bf.clear58 = and i32 %bf.load61, 65535, !dbg !3534
  %cmp59 = icmp eq i32 %bf.clear58, 37, !dbg !3534
  br i1 %cmp59, label %if.then60, label %cleanup, !dbg !3539

if.then60:                                        ; preds = %if.else56
  %bf.lshr62 = lshr i32 %bf.load61, 16, !dbg !3540
  %bf.clear63 = and i32 %bf.lshr62, 255, !dbg !3540
  %call64 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %10) #7, !dbg !3540
  %idxprom65 = zext i32 %call64 to i64, !dbg !3540
  %arrayidx66 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom65, !dbg !3540
  %13 = load i32, i32* %arrayidx66, align 4, !dbg !3540
  %call67 = tail call i32 @ix86_register_move_cost(i32 %bf.clear63, i32 %13, i32 %4) #6, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %call67, metadata !3487, metadata !DIExpression()), !dbg !3528
  br label %if.end70

if.end70:                                         ; preds = %if.then60, %if.then54
  %this_cost.0 = phi i32 [ %call67, %if.then60 ], [ %call55, %if.then54 ], !dbg !3542
  call void @llvm.dbg.value(metadata i32 %this_cost.0, metadata !3487, metadata !DIExpression()), !dbg !3528
  %cmp71 = icmp slt i32 %this_cost.0, %old_cost.2, !dbg !3543
  br i1 %cmp71, label %if.then86, label %lor.lhs.false72, !dbg !3544

lor.lhs.false72:                                  ; preds = %if.end70
  %cmp73 = icmp eq i32 %this_cost.0, %old_cost.2, !dbg !3545
  br i1 %cmp73, label %land.lhs.true74, label %cleanup, !dbg !3546

land.lhs.true74:                                  ; preds = %lor.lhs.false72
  %bf.load75 = load i32, i32* %11, align 8, !dbg !3547
  %bf.clear76 = and i32 %bf.load75, 65535, !dbg !3547
  %cmp77 = icmp eq i32 %bf.clear76, 37, !dbg !3547
  br i1 %cmp77, label %land.lhs.true78, label %cleanup, !dbg !3548

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %14 = load i32*, i32** %9, align 8, !dbg !3549
  %bf.load83 = load i32, i32* %14, align 8, !dbg !3549
  %bf.clear84 = and i32 %bf.load83, 65535, !dbg !3549
  %cmp85 = icmp eq i32 %bf.clear84, 37, !dbg !3549
  br i1 %cmp85, label %cleanup, label %if.then86, !dbg !3550

if.then86:                                        ; preds = %land.lhs.true78, %if.end70
  %call91 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx8, %struct.rtx_def* %10, i8 zeroext 1) #6, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %this_cost.0, metadata !3479, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 1, metadata !3475, metadata !DIExpression()), !dbg !3488
  br label %cleanup, !dbg !3553

cleanup:                                          ; preds = %lor.lhs.false72, %land.lhs.true74, %land.lhs.true78, %if.then86, %if.else56
  %old_cost.4 = phi i32 [ %old_cost.2, %if.else56 ], [ %this_cost.0, %if.then86 ], [ %old_cost.2, %land.lhs.true78 ], [ %old_cost.2, %land.lhs.true74 ], [ %old_cost.2, %lor.lhs.false72 ], !dbg !3488
  %did_change.2 = phi i32 [ %did_change.0, %if.else56 ], [ 1, %if.then86 ], [ %did_change.0, %land.lhs.true78 ], [ %did_change.0, %land.lhs.true74 ], [ %did_change.0, %lor.lhs.false72 ], !dbg !3488
  call void @llvm.dbg.value(metadata i32 %did_change.2, metadata !3475, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %old_cost.4, metadata !3479, metadata !DIExpression()), !dbg !3488
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !3554
  br label %for.cond, !dbg !3555, !llvm.loop !3556

cleanup94.loopexit:                               ; preds = %for.cond
  %did_change.0.lcssa = phi i32 [ %did_change.0, %for.cond ], !dbg !3488
  call void @llvm.dbg.value(metadata i32 %did_change.0.lcssa, metadata !3475, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %did_change.0.lcssa, metadata !3475, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %did_change.0.lcssa, metadata !3475, metadata !DIExpression()), !dbg !3488
  br label %cleanup94, !dbg !3558

cleanup94:                                        ; preds = %cleanup94.loopexit, %if.end13, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end13 ], [ %did_change.0.lcssa, %cleanup94.loopexit ], !dbg !3488
  ret i32 %retval.0, !dbg !3558
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reload_cse_noop_set_p(%struct.rtx_def* %set) unnamed_addr #5 !dbg !3559 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3563, metadata !DIExpression()), !dbg !3564
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3565
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3565
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3565
  %call = tail call i32 @cselib_reg_set_mode(%struct.rtx_def* %0) #6, !dbg !3567
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3568
  %2 = load i32*, i32** %1, align 8, !dbg !3568
  %bf.load = load i32, i32* %2, align 8, !dbg !3568
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3568
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3568
  %cmp = icmp eq i32 %call, %bf.clear, !dbg !3569
  br i1 %cmp, label %if.end, label %return, !dbg !3570

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %2 to %struct.rtx_def*, !dbg !3570
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3571
  %rt_rtx12 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3571
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx12, align 8, !dbg !3571
  %call13 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %3, %struct.rtx_def* %5) #6, !dbg !3572
  br label %return, !dbg !3573

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call13, %if.end ], [ 0, %entry ], !dbg !3564
  ret i32 %retval.0, !dbg !3574
}

declare dso_local %struct.rtx_def* @delete_insn_and_edges(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reload_cse_simplify_operands(%struct.rtx_def* %insn, %struct.rtx_def* %testreg) unnamed_addr #5 !dbg !3575 {
entry:
  %equiv_regs = alloca [30 x i64], align 16
  %op_alt_regno = alloca [30 x i32*], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3577, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata %struct.rtx_def* %testreg, metadata !3578, metadata !DIExpression()), !dbg !3635
  %0 = bitcast [30 x i64]* %equiv_regs to i8*, !dbg !3636
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #8, !dbg !3636
  call void @llvm.dbg.declare(metadata [30 x i64]* %equiv_regs, metadata !3581, metadata !DIExpression()), !dbg !3637
  %1 = bitcast [30 x i32*]* %op_alt_regno to i8*, !dbg !3638
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %1) #8, !dbg !3638
  call void @llvm.dbg.declare(metadata [30 x i32*]* %op_alt_regno, metadata !3589, metadata !DIExpression()), !dbg !3639
  tail call void @extract_insn(%struct.rtx_def* %insn) #6, !dbg !3640
  %2 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3641
  %cmp = icmp eq i8 %2, 0, !dbg !3643
  br i1 %cmp, label %cleanup373, label %lor.lhs.false, !dbg !3644

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3645
  %cmp3 = icmp eq i8 %3, 0, !dbg !3646
  br i1 %cmp3, label %cleanup373, label %if.end, !dbg !3647

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @constrain_operands(i32 1) #6, !dbg !3648
  %tobool = icmp eq i32 %call, 0, !dbg !3648
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !3650

if.then5:                                         ; preds = %if.end
  tail call void @_fatal_insn_not_found(%struct.rtx_def* %insn, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3651
  br label %if.end6, !dbg !3651

if.end6:                                          ; preds = %if.end, %if.then5
  %4 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3652
  %conv7 = sext i8 %4 to i64, !dbg !3652
  %5 = alloca i32, i64 %conv7, align 16, !dbg !3652
  call void @llvm.dbg.value(metadata i32* %5, metadata !3587, metadata !DIExpression()), !dbg !3635
  %6 = alloca i32, i64 %conv7, align 16, !dbg !3653
  call void @llvm.dbg.value(metadata i32* %6, metadata !3588, metadata !DIExpression()), !dbg !3635
  %7 = alloca i32, i64 %conv7, align 16, !dbg !3654
  call void @llvm.dbg.value(metadata i32* %7, metadata !3591, metadata !DIExpression()), !dbg !3635
  %8 = bitcast i32* %5 to i8*, !dbg !3655
  %mul13 = shl nsw i64 %conv7, 2, !dbg !3656
  %call14 = call i8* @memset(i8* nonnull %8, i32 0, i64 %mul13) #6, !dbg !3657
  %9 = bitcast i32* %6 to i8*, !dbg !3658
  %10 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3659
  %conv15 = sext i8 %10 to i64, !dbg !3660
  %mul16 = shl nsw i64 %conv15, 2, !dbg !3661
  %call17 = call i8* @memset(i8* nonnull %9, i32 0, i64 %mul16) #6, !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()), !dbg !3635
  br label %for.cond, !dbg !3663

for.cond:                                         ; preds = %cleanup, %if.end6
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %cleanup ], [ 0, %if.end6 ], !dbg !3664
  call void @llvm.dbg.value(metadata i64 %indvars.iv30, metadata !3579, metadata !DIExpression()), !dbg !3635
  %11 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3665
  %12 = sext i8 %11 to i64, !dbg !3666
  %cmp19 = icmp slt i64 %indvars.iv30, %12, !dbg !3666
  br i1 %cmp19, label %for.body, label %for.cond65.preheader, !dbg !3667

for.cond65.preheader:                             ; preds = %for.cond
  %.lcssa32 = phi i8 [ %11, %for.cond ], !dbg !3665
  %arrayidx150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %testreg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3668
  %rt_uint = bitcast %union.rtunion_def* %arrayidx150 to i32*, !dbg !3668
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %testreg, i64 0, i32 0, !dbg !3668
  %arrayidx190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3669
  %rt_bb = bitcast %struct.object_block** %arrayidx190 to %struct.basic_block_def**, !dbg !3669
  br label %for.cond65, !dbg !3672

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [30 x i64], [30 x i64]* %equiv_regs, i64 0, i64 %indvars.iv30, !dbg !3673
  store i64 0, i64* %arrayidx, align 8, !dbg !3673
  %arrayidx22 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv30, !dbg !3674
  %14 = bitcast %struct.rtx_def** %arrayidx22 to i32**, !dbg !3674
  %15 = load i32*, i32** %14, align 8, !dbg !3674
  %bf.load = load i32, i32* %15, align 8, !dbg !3674
  %bf.clear = and i32 %bf.load, 65535, !dbg !3674
  %cmp23 = icmp eq i32 %bf.clear, 12, !dbg !3674
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !3676
  br i1 %cmp23, label %cleanup, label %lor.lhs.false25, !dbg !3676

lor.lhs.false25:                                  ; preds = %for.body
  %idxprom30 = zext i32 %bf.clear to i64, !dbg !3677
  %arrayidx31 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom30, !dbg !3677
  %17 = load i32, i32* %arrayidx31, align 4, !dbg !3677
  %cmp32 = icmp eq i32 %17, 9, !dbg !3677
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false25.if.end39_crit_edge, !dbg !3678

lor.lhs.false25.if.end39_crit_edge:               ; preds = %lor.lhs.false25
  %arrayidx43.phi.trans.insert = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv30, !dbg !3679
  %.pre12 = load i32, i32* %arrayidx43.phi.trans.insert, align 4, !dbg !3680
  br label %if.end39, !dbg !3678

land.lhs.true:                                    ; preds = %lor.lhs.false25
  %arrayidx35 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv30, !dbg !3681
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !3681
  %cmp36 = icmp eq i32 %18, 0, !dbg !3682
  br i1 %cmp36, label %cleanup, label %if.end39, !dbg !3683

if.end39:                                         ; preds = %lor.lhs.false25.if.end39_crit_edge, %land.lhs.true
  %19 = phi i32 [ %.pre12, %lor.lhs.false25.if.end39_crit_edge ], [ %18, %land.lhs.true ], !dbg !3680
  call void @llvm.dbg.value(metadata %struct.rtx_def* %16, metadata !3597, metadata !DIExpression()), !dbg !3679
  %call44 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %16, i32 %19, i32 0) #6, !dbg !3684
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call44, metadata !3592, metadata !DIExpression()), !dbg !3679
  %tobool45 = icmp eq %struct.cselib_val_struct* %call44, null, !dbg !3685
  br i1 %tobool45, label %cleanup, label %if.end47, !dbg !3687

if.end47:                                         ; preds = %if.end39
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call44, i64 0, i32 3, !dbg !3688
  br label %for.cond48, !dbg !3690

for.cond48:                                       ; preds = %for.inc, %if.end47
  %20 = phi i64 [ 0, %if.end47 ], [ %24, %for.inc ]
  %l.0.in = phi %struct.elt_loc_list** [ %locs, %if.end47 ], [ %next, %for.inc ]
  %l.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l.0.in, align 8, !dbg !3691
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !3596, metadata !DIExpression()), !dbg !3679
  %tobool49 = icmp eq %struct.elt_loc_list* %l.0, null, !dbg !3692
  br i1 %tobool49, label %cleanup.loopexit, label %for.body50, !dbg !3692

for.body50:                                       ; preds = %for.cond48
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !3693
  %21 = bitcast %struct.rtx_def** %loc to i32**, !dbg !3693
  %22 = load i32*, i32** %21, align 8, !dbg !3693
  %bf.load51 = load i32, i32* %22, align 8, !dbg !3693
  %bf.clear52 = and i32 %bf.load51, 65535, !dbg !3693
  %cmp53 = icmp eq i32 %bf.clear52, 37, !dbg !3693
  br i1 %cmp53, label %if.then55, label %for.inc, !dbg !3696

if.then55:                                        ; preds = %for.body50
  %23 = bitcast i32* %22 to %struct.rtx_def*, !dbg !3696
  %call57 = call fastcc i32 @rhs_regno(%struct.rtx_def* %23) #7, !dbg !3697
  %sh_prom = zext i32 %call57 to i64, !dbg !3697
  %shl = shl i64 1, %sh_prom, !dbg !3697
  %or = or i64 %20, %shl, !dbg !3697
  store i64 %or, i64* %arrayidx, align 8, !dbg !3697
  br label %for.inc, !dbg !3697

for.inc:                                          ; preds = %for.body50, %if.then55
  %24 = phi i64 [ %20, %for.body50 ], [ %or, %if.then55 ]
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !3698
  br label %for.cond48, !dbg !3699, !llvm.loop !3700

cleanup.loopexit:                                 ; preds = %for.cond48
  br label %cleanup, !dbg !3702

cleanup:                                          ; preds = %cleanup.loopexit, %if.end39, %for.body, %land.lhs.true
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !3702
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond, !dbg !3703, !llvm.loop !3704

for.cond65:                                       ; preds = %for.cond65.preheader, %cleanup227
  %indvars.iv28 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next29, %cleanup227 ], !dbg !3706
  %25 = phi i8 [ %.lcssa32, %for.cond65.preheader ], [ %.pre, %cleanup227 ], !dbg !3706
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !3579, metadata !DIExpression()), !dbg !3635
  %26 = sext i8 %25 to i64, !dbg !3707
  %cmp67 = icmp slt i64 %indvars.iv28, %26, !dbg !3707
  br i1 %cmp67, label %for.body69, label %for.cond235.preheader, !dbg !3672

for.cond235.preheader:                            ; preds = %for.cond65
  %.lcssa = phi i8 [ %25, %for.cond65 ], !dbg !3706
  %27 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3708
  %28 = load i32, i32* @which_alternative, align 4, !dbg !3711
  %idxprom242 = sext i32 %28 to i64, !dbg !3711
  %arrayidx243 = getelementptr inbounds i32, i32* %5, i64 %idxprom242, !dbg !3711
  %29 = sext i8 %27 to i64, !dbg !3713
  br label %for.cond235, !dbg !3713

for.body69:                                       ; preds = %for.cond65
  %30 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3714
  %conv70 = sext i8 %30 to i64, !dbg !3714
  %31 = alloca i32, i64 %conv70, align 16, !dbg !3714
  %arrayidx73 = getelementptr inbounds [30 x i32*], [30 x i32*]* %op_alt_regno, i64 0, i64 %indvars.iv28, !dbg !3715
  store i32* %31, i32** %arrayidx73, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3635
  br label %for.cond74, !dbg !3717

for.cond74:                                       ; preds = %for.body78, %for.body69
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body78 ], [ 0, %for.body69 ], !dbg !3719
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !3580, metadata !DIExpression()), !dbg !3635
  %32 = sext i8 %30 to i64, !dbg !3720
  %cmp76 = icmp slt i64 %indvars.iv23, %32, !dbg !3720
  br i1 %cmp76, label %for.body78, label %for.end85, !dbg !3722

for.body78:                                       ; preds = %for.cond74
  %arrayidx82 = getelementptr inbounds i32, i32* %31, i64 %indvars.iv23, !dbg !3723
  store i32 -1, i32* %arrayidx82, align 4, !dbg !3724
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !3725
  call void @llvm.dbg.value(metadata i32 undef, metadata !3580, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond74, !dbg !3726, !llvm.loop !3727

for.end85:                                        ; preds = %for.cond74
  %arrayidx87 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv28, !dbg !3729
  %33 = load i8*, i8** %arrayidx87, align 8, !dbg !3729
  call void @llvm.dbg.value(metadata i8* undef, metadata !3585, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %33, metadata !3603, metadata !DIExpression()), !dbg !3730
  %arrayidx91 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv28, !dbg !3731
  %34 = load i32, i32* %arrayidx91, align 4, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %34, metadata !3598, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3635
  br label %while.cond, !dbg !3732

while.cond:                                       ; preds = %if.end116, %for.end85
  %p.0 = phi i8* [ %33, %for.end85 ], [ %incdec.ptr, %if.end116 ], !dbg !3730
  %j.1 = phi i32 [ 0, %for.end85 ], [ %j.2, %if.end116 ], !dbg !3730
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3603, metadata !DIExpression()), !dbg !3730
  %35 = load i8, i8* %p.0, align 1, !dbg !3733
  %cmp93 = icmp eq i8 %35, 0, !dbg !3734
  br i1 %cmp93, label %while.end, label %while.body, !dbg !3732

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3603, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 %35, metadata !3604, metadata !DIExpression()), !dbg !3736
  %cmp96 = icmp eq i8 %35, 44, !dbg !3737
  br i1 %cmp96, label %if.then98, label %if.else, !dbg !3739

if.then98:                                        ; preds = %while.body
  %inc99 = add nsw i32 %j.1, 1, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %inc99, metadata !3580, metadata !DIExpression()), !dbg !3635
  br label %if.end116, !dbg !3741

if.else:                                          ; preds = %while.body
  %cmp101 = icmp eq i8 %35, 63, !dbg !3742
  br i1 %cmp101, label %if.then103, label %if.else106, !dbg !3744

if.then103:                                       ; preds = %if.else
  %idxprom104 = sext i32 %j.1 to i64, !dbg !3745
  %arrayidx105 = getelementptr inbounds i32, i32* %5, i64 %idxprom104, !dbg !3745
  %36 = load i32, i32* %arrayidx105, align 4, !dbg !3746
  %add = add nsw i32 %36, 3, !dbg !3746
  store i32 %add, i32* %arrayidx105, align 4, !dbg !3746
  br label %if.end116, !dbg !3745

if.else106:                                       ; preds = %if.else
  %cmp108 = icmp eq i8 %35, 33, !dbg !3747
  br i1 %cmp108, label %if.then110, label %if.end116, !dbg !3749

if.then110:                                       ; preds = %if.else106
  %idxprom111 = sext i32 %j.1 to i64, !dbg !3750
  %arrayidx112 = getelementptr inbounds i32, i32* %5, i64 %idxprom111, !dbg !3750
  %37 = load i32, i32* %arrayidx112, align 4, !dbg !3751
  %add113 = add nsw i32 %37, 300, !dbg !3751
  store i32 %add113, i32* %arrayidx112, align 4, !dbg !3751
  br label %if.end116, !dbg !3750

if.end116:                                        ; preds = %if.then103, %if.then110, %if.else106, %if.then98
  %j.2 = phi i32 [ %inc99, %if.then98 ], [ %j.1, %if.else106 ], [ %j.1, %if.then110 ], [ %j.1, %if.then103 ], !dbg !3730
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !3580, metadata !DIExpression()), !dbg !3635
  br label %while.cond, !dbg !3732, !llvm.loop !3752

while.end:                                        ; preds = %while.cond
  %arrayidx118 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv28, !dbg !3754
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx118, align 8, !dbg !3754
  %call119 = call i32 @true_regnum(%struct.rtx_def* %38) #6, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %call119, metadata !3602, metadata !DIExpression()), !dbg !3730
  %cmp120 = icmp sgt i32 %call119, -1, !dbg !3756
  br i1 %cmp120, label %cleanup227, label %lor.lhs.false122, !dbg !3758

lor.lhs.false122:                                 ; preds = %while.end
  %39 = load i8, i8* %33, align 1, !dbg !3759
  %cmp127 = icmp eq i8 %39, 61, !dbg !3760
  br i1 %cmp127, label %cleanup227, label %lor.lhs.false129, !dbg !3761

lor.lhs.false129:                                 ; preds = %lor.lhs.false122
  %cmp134 = icmp eq i8 %39, 43, !dbg !3762
  br i1 %cmp134, label %cleanup227, label %for.cond138.preheader, !dbg !3763

for.cond138.preheader:                            ; preds = %lor.lhs.false129
  %arrayidx143 = getelementptr inbounds [30 x i64], [30 x i64]* %equiv_regs, i64 0, i64 %indvars.iv28, !dbg !3764
  %bf.value = shl i32 %34, 16, !dbg !3668
  %bf.shl = and i32 %bf.value, 16711680, !dbg !3668
  %40 = bitcast %struct.rtx_def** %arrayidx118 to i32**, !dbg !3669
  br label %for.cond138, !dbg !3766

for.cond138:                                      ; preds = %for.cond138.preheader, %cleanup221
  %indvars.iv25 = phi i64 [ 0, %for.cond138.preheader ], [ %indvars.iv.next26, %cleanup221 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !3602, metadata !DIExpression()), !dbg !3730
  %exitcond27 = icmp eq i64 %indvars.iv25, 53, !dbg !3767
  br i1 %exitcond27, label %cleanup227.loopexit, label %for.body141, !dbg !3766

for.body141:                                      ; preds = %for.cond138
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()), !dbg !3668
  %41 = load i64, i64* %arrayidx143, align 8, !dbg !3768
  %shl145 = shl i64 1, %indvars.iv25, !dbg !3768
  %and = and i64 %41, %shl145, !dbg !3768
  %tobool146 = icmp eq i64 %and, 0, !dbg !3768
  br i1 %tobool146, label %cleanup221, label %if.end148, !dbg !3769

if.end148:                                        ; preds = %for.body141
  %call149 = call fastcc i32 @rhs_regno(%struct.rtx_def* %testreg) #7, !dbg !3770
  %42 = trunc i64 %indvars.iv25 to i32, !dbg !3770
  call void @df_ref_change_reg_with_loc(i32 %call149, i32 %42, %struct.rtx_def* %testreg) #6, !dbg !3770
  %43 = trunc i64 %indvars.iv25 to i32, !dbg !3770
  store i32 %43, i32* %rt_uint, align 8, !dbg !3770
  %bf.load151 = load i32, i32* %13, align 8, !dbg !3771
  %bf.clear152 = and i32 %bf.load151, -16711681, !dbg !3771
  %bf.set = or i32 %bf.clear152, %bf.shl, !dbg !3771
  store i32 %bf.set, i32* %13, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %33, metadata !3603, metadata !DIExpression()), !dbg !3730
  br label %for.cond155, !dbg !3772

for.cond155:                                      ; preds = %sw.epilog, %if.end148
  %p.1 = phi i8* [ %33, %if.end148 ], [ %add.ptr, %sw.epilog ], !dbg !3668
  %rclass.0 = phi i32 [ 0, %if.end148 ], [ %rclass.1, %sw.epilog ], !dbg !3668
  %j.3 = phi i32 [ 0, %if.end148 ], [ %j.4, %sw.epilog ], !dbg !3773
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %rclass.0, metadata !3606, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !3603, metadata !DIExpression()), !dbg !3730
  %44 = load i8, i8* %p.1, align 1, !dbg !3774
  call void @llvm.dbg.value(metadata i8 %44, metadata !3610, metadata !DIExpression()), !dbg !3775
  %conv157 = sext i8 %44 to i32, !dbg !3776
  switch i32 %conv157, label %sw.default [
    i32 61, label %sw.epilog
    i32 43, label %sw.epilog
    i32 63, label %sw.epilog
    i32 35, label %sw.epilog
    i32 38, label %sw.epilog
    i32 33, label %sw.epilog
    i32 42, label %sw.epilog
    i32 37, label %sw.epilog
    i32 48, label %sw.epilog
    i32 49, label %sw.epilog
    i32 50, label %sw.epilog
    i32 51, label %sw.epilog
    i32 52, label %sw.epilog
    i32 53, label %sw.epilog
    i32 54, label %sw.epilog
    i32 55, label %sw.epilog
    i32 56, label %sw.epilog
    i32 57, label %sw.epilog
    i32 60, label %sw.epilog
    i32 62, label %sw.epilog
    i32 86, label %sw.epilog
    i32 111, label %sw.epilog
    i32 69, label %sw.epilog
    i32 70, label %sw.epilog
    i32 71, label %sw.epilog
    i32 72, label %sw.epilog
    i32 115, label %sw.epilog
    i32 105, label %sw.epilog
    i32 110, label %sw.epilog
    i32 73, label %sw.epilog
    i32 74, label %sw.epilog
    i32 75, label %sw.epilog
    i32 76, label %sw.epilog
    i32 77, label %sw.epilog
    i32 78, label %sw.epilog
    i32 79, label %sw.epilog
    i32 80, label %sw.epilog
    i32 112, label %sw.epilog
    i32 88, label %sw.epilog
    i32 109, label %sw.epilog
    i32 103, label %sw.bb158
    i32 114, label %sw.bb158
    i32 44, label %sw.bb168
    i32 0, label %sw.bb168
  ], !dbg !3777

sw.bb158:                                         ; preds = %for.cond155, %for.cond155
  %idxprom159 = sext i32 %rclass.0 to i64, !dbg !3778
  %arrayidx161 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subunion, i64 0, i64 %idxprom159, i64 13, !dbg !3778
  %45 = load i32, i32* %arrayidx161, align 4, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %45, metadata !3606, metadata !DIExpression()), !dbg !3668
  br label %sw.epilog, !dbg !3779

sw.default:                                       ; preds = %for.cond155
  %idxprom162 = sext i32 %rclass.0 to i64, !dbg !3780
  %call164 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3781
  %call165 = call i32 @regclass_for_constraint(i32 %call164) #6, !dbg !3781
  %idxprom166 = sext i32 %call165 to i64, !dbg !3780
  %arrayidx167 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subunion, i64 0, i64 %idxprom162, i64 %idxprom166, !dbg !3780
  %46 = load i32, i32* %arrayidx167, align 4, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %46, metadata !3606, metadata !DIExpression()), !dbg !3668
  br label %sw.epilog, !dbg !3782

sw.bb168:                                         ; preds = %for.cond155, %for.cond155
  %idxprom171 = sext i32 %j.3 to i64, !dbg !3783
  %arrayidx172 = getelementptr inbounds i32, i32* %31, i64 %idxprom171, !dbg !3783
  %47 = load i32, i32* %arrayidx172, align 4, !dbg !3783
  %cmp173 = icmp eq i32 %47, -1, !dbg !3784
  br i1 %cmp173, label %land.lhs.true175, label %if.end209, !dbg !3785

land.lhs.true175:                                 ; preds = %sw.bb168
  %call176 = call i32 @reg_fits_class_p(%struct.rtx_def* %testreg, i32 %rclass.0, i32 0, i32 %34) #6, !dbg !3786
  %tobool177 = icmp eq i32 %call176, 0, !dbg !3786
  br i1 %tobool177, label %if.end209, label %land.lhs.true178, !dbg !3787

land.lhs.true178:                                 ; preds = %land.lhs.true175
  %48 = load i32*, i32** %40, align 8, !dbg !3788
  %bf.load181 = load i32, i32* %48, align 8, !dbg !3788
  %bf.clear182 = and i32 %bf.load181, 65535, !dbg !3788
  %cmp183 = icmp eq i32 %bf.clear182, 30, !dbg !3788
  br i1 %cmp183, label %lor.lhs.false185, label %if.then201, !dbg !3789

lor.lhs.false185:                                 ; preds = %land.lhs.true178
  %49 = bitcast i32* %48 to %struct.rtx_def*, !dbg !3789
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3790
  %call191 = call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %50) #6, !dbg !3791
  %call192 = call i32 @rtx_cost(%struct.rtx_def* %49, i32 23, i8 zeroext %call191) #6, !dbg !3792
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3793
  %call197 = call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %51) #6, !dbg !3794
  %call198 = call i32 @rtx_cost(%struct.rtx_def* %testreg, i32 23, i8 zeroext %call197) #6, !dbg !3795
  %cmp199 = icmp sgt i32 %call192, %call198, !dbg !3796
  br i1 %cmp199, label %if.then201, label %if.end209, !dbg !3797

if.then201:                                       ; preds = %lor.lhs.false185, %land.lhs.true178
  %arrayidx203 = getelementptr inbounds i32, i32* %6, i64 %idxprom171, !dbg !3798
  %52 = load i32, i32* %arrayidx203, align 4, !dbg !3800
  %inc204 = add nsw i32 %52, 1, !dbg !3800
  store i32 %inc204, i32* %arrayidx203, align 4, !dbg !3800
  %arrayidx208 = getelementptr inbounds i32, i32* %31, i64 %idxprom171, !dbg !3801
  %53 = trunc i64 %indvars.iv25 to i32, !dbg !3802
  store i32 %53, i32* %arrayidx208, align 4, !dbg !3802
  br label %if.end209, !dbg !3803

if.end209:                                        ; preds = %land.lhs.true175, %if.then201, %lor.lhs.false185, %sw.bb168
  %inc210 = add nsw i32 %j.3, 1, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %inc210, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()), !dbg !3668
  br label %sw.epilog, !dbg !3805

sw.epilog:                                        ; preds = %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %for.cond155, %if.end209, %sw.default, %sw.bb158
  %rclass.1 = phi i32 [ %46, %sw.default ], [ 0, %if.end209 ], [ %45, %sw.bb158 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], [ %rclass.0, %for.cond155 ], !dbg !3668
  %j.4 = phi i32 [ %j.3, %sw.default ], [ %inc210, %if.end209 ], [ %j.3, %sw.bb158 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], [ %j.3, %for.cond155 ], !dbg !3668
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %rclass.1, metadata !3606, metadata !DIExpression()), !dbg !3668
  %call211 = call fastcc i64 @insn_constraint_len(i8 signext %44, i8* %p.1) #7, !dbg !3806
  %add.ptr = getelementptr inbounds i8, i8* %p.1, i64 %call211, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3603, metadata !DIExpression()), !dbg !3730
  %cmp213 = icmp eq i8 %44, 0, !dbg !3808
  br i1 %cmp213, label %cleanup221.loopexit, label %for.cond155

cleanup221.loopexit:                              ; preds = %sw.epilog
  br label %cleanup221, !dbg !3810

cleanup221:                                       ; preds = %cleanup221.loopexit, %for.body141
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !3810
  call void @llvm.dbg.value(metadata i32 undef, metadata !3602, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3730
  br label %for.cond138, !dbg !3811, !llvm.loop !3812

cleanup227.loopexit:                              ; preds = %for.cond138
  br label %cleanup227, !dbg !3814

cleanup227:                                       ; preds = %cleanup227.loopexit, %while.end, %lor.lhs.false122, %lor.lhs.false129
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  %.pre = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3706
  br label %for.cond65, !dbg !3815, !llvm.loop !3816

for.cond235:                                      ; preds = %for.cond235.preheader, %for.inc251
  %indvars.iv21 = phi i64 [ 0, %for.cond235.preheader ], [ %indvars.iv.next22, %for.inc251 ], !dbg !3818
  %j.5 = phi i32 [ 0, %for.cond235.preheader ], [ %j.6, %for.inc251 ], !dbg !3818
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !3579, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %j.5, metadata !3580, metadata !DIExpression()), !dbg !3635
  %cmp237 = icmp slt i64 %indvars.iv21, %29, !dbg !3819
  br i1 %cmp237, label %for.body239, label %for.end253, !dbg !3713

for.body239:                                      ; preds = %for.cond235
  %arrayidx241 = getelementptr inbounds i32, i32* %5, i64 %indvars.iv21, !dbg !3820
  %54 = load i32, i32* %arrayidx241, align 4, !dbg !3820
  %55 = load i32, i32* %arrayidx243, align 4, !dbg !3821
  %cmp244 = icmp sgt i32 %54, %55, !dbg !3822
  br i1 %cmp244, label %for.inc251, label %if.then246, !dbg !3823

if.then246:                                       ; preds = %for.body239
  %inc247 = add nsw i32 %j.5, 1, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %inc247, metadata !3580, metadata !DIExpression()), !dbg !3635
  %idxprom248 = sext i32 %j.5 to i64, !dbg !3825
  %arrayidx249 = getelementptr inbounds i32, i32* %7, i64 %idxprom248, !dbg !3825
  %56 = trunc i64 %indvars.iv21 to i32, !dbg !3826
  store i32 %56, i32* %arrayidx249, align 4, !dbg !3826
  br label %for.inc251, !dbg !3825

for.inc251:                                       ; preds = %for.body239, %if.then246
  %j.6 = phi i32 [ %inc247, %if.then246 ], [ %j.5, %for.body239 ], !dbg !3818
  call void @llvm.dbg.value(metadata i32 %j.6, metadata !3580, metadata !DIExpression()), !dbg !3635
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond235, !dbg !3828, !llvm.loop !3829

for.end253:                                       ; preds = %for.cond235
  %j.5.lcssa = phi i32 [ %j.5, %for.cond235 ], !dbg !3818
  call void @llvm.dbg.value(metadata i32 %j.5.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %j.5.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %j.5.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3635
  %conv254 = trunc i32 %j.5.lcssa to i8, !dbg !3831
  store i8 %conv254, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3832
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()), !dbg !3635
  %sext = shl i32 %j.5.lcssa, 24, !dbg !3833
  %conv256 = ashr exact i32 %sext, 24, !dbg !3833
  %sub = add nsw i32 %conv256, -1, !dbg !3833
  %57 = sext i32 %sub to i64, !dbg !3834
  br label %for.cond255, !dbg !3834

for.cond255:                                      ; preds = %for.end294, %for.end253
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.end294 ], [ 0, %for.end253 ], !dbg !3835
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !3579, metadata !DIExpression()), !dbg !3635
  %cmp257 = icmp slt i64 %indvars.iv17, %57, !dbg !3836
  br i1 %cmp257, label %for.body259, label %for.end305, !dbg !3837

for.body259:                                      ; preds = %for.cond255
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !3614, metadata !DIExpression()), !dbg !3838
  %arrayidx261 = getelementptr inbounds i32, i32* %7, i64 %indvars.iv17, !dbg !3839
  %58 = load i32, i32* %arrayidx261, align 4, !dbg !3839
  %idxprom262 = sext i32 %58 to i64, !dbg !3840
  %arrayidx263 = getelementptr inbounds i32, i32* %5, i64 %idxprom262, !dbg !3840
  %59 = load i32, i32* %arrayidx263, align 4, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %59, metadata !3618, metadata !DIExpression()), !dbg !3838
  %arrayidx267 = getelementptr inbounds i32, i32* %6, i64 %idxprom262, !dbg !3841
  %60 = load i32, i32* %arrayidx267, align 4, !dbg !3841
  call void @llvm.dbg.value(metadata i32 %60, metadata !3619, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !3580, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  %wide.trip.count = zext i32 %sub to i64, !dbg !3842
  %61 = trunc i64 %indvars.iv17 to i32, !dbg !3843
  br label %for.cond269, !dbg !3843

for.cond269:                                      ; preds = %for.inc292, %for.body259
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc292 ], [ %indvars.iv17, %for.body259 ], !dbg !3838
  %best.0 = phi i32 [ %best.1, %for.inc292 ], [ %61, %for.body259 ], !dbg !3838
  %best_reject.0 = phi i32 [ %best_reject.1, %for.inc292 ], [ %59, %for.body259 ], !dbg !3838
  %best_nregs.0 = phi i32 [ %best_nregs.1, %for.inc292 ], [ %60, %for.body259 ], !dbg !3838
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !3844
  call void @llvm.dbg.value(metadata i32 %best_nregs.0, metadata !3619, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best_reject.0, metadata !3618, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 undef, metadata !3580, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %best.0, metadata !3614, metadata !DIExpression()), !dbg !3838
  %exitcond = icmp eq i64 %indvars.iv19, %wide.trip.count, !dbg !3842
  br i1 %exitcond, label %for.end294, label %for.body273, !dbg !3845

for.body273:                                      ; preds = %for.cond269
  %arrayidx275 = getelementptr inbounds i32, i32* %7, i64 %indvars.iv.next20, !dbg !3846
  %62 = load i32, i32* %arrayidx275, align 4, !dbg !3846
  %idxprom276 = sext i32 %62 to i64, !dbg !3847
  %arrayidx277 = getelementptr inbounds i32, i32* %5, i64 %idxprom276, !dbg !3847
  %63 = load i32, i32* %arrayidx277, align 4, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %63, metadata !3621, metadata !DIExpression()), !dbg !3848
  %arrayidx281 = getelementptr inbounds i32, i32* %6, i64 %idxprom276, !dbg !3849
  %64 = load i32, i32* %arrayidx281, align 4, !dbg !3849
  call void @llvm.dbg.value(metadata i32 %64, metadata !3625, metadata !DIExpression()), !dbg !3848
  %cmp282 = icmp slt i32 %63, %best_reject.0, !dbg !3850
  br i1 %cmp282, label %if.then290, label %lor.lhs.false284, !dbg !3852

lor.lhs.false284:                                 ; preds = %for.body273
  %cmp285 = icmp eq i32 %63, %best_reject.0, !dbg !3853
  %cmp288 = icmp sgt i32 %64, %best_nregs.0, !dbg !3854
  %or.cond = and i1 %cmp285, %cmp288, !dbg !3855
  br i1 %or.cond, label %if.then290, label %for.inc292, !dbg !3855

if.then290:                                       ; preds = %lor.lhs.false284, %for.body273
  call void @llvm.dbg.value(metadata i32 undef, metadata !3614, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %63, metadata !3618, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %64, metadata !3619, metadata !DIExpression()), !dbg !3838
  %65 = trunc i64 %indvars.iv.next20 to i32, !dbg !3856
  br label %for.inc292, !dbg !3856

for.inc292:                                       ; preds = %lor.lhs.false284, %if.then290
  %best.1 = phi i32 [ %65, %if.then290 ], [ %best.0, %lor.lhs.false284 ], !dbg !3838
  %best_reject.1 = phi i32 [ %63, %if.then290 ], [ %best_reject.0, %lor.lhs.false284 ], !dbg !3838
  %best_nregs.1 = phi i32 [ %64, %if.then290 ], [ %best_nregs.0, %lor.lhs.false284 ], !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best_nregs.1, metadata !3619, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best_reject.1, metadata !3618, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best.1, metadata !3614, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 undef, metadata !3580, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond269, !dbg !3858, !llvm.loop !3859

for.end294:                                       ; preds = %for.cond269
  %best.0.lcssa = phi i32 [ %best.0, %for.cond269 ], !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !3614, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !3614, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !3614, metadata !DIExpression()), !dbg !3838
  %idxprom295 = sext i32 %best.0.lcssa to i64, !dbg !3861
  %arrayidx296 = getelementptr inbounds i32, i32* %7, i64 %idxprom295, !dbg !3861
  %66 = load i32, i32* %arrayidx296, align 4, !dbg !3861
  call void @llvm.dbg.value(metadata i32 %66, metadata !3620, metadata !DIExpression()), !dbg !3838
  store i32 %58, i32* %arrayidx296, align 4, !dbg !3862
  store i32 %66, i32* %arrayidx261, align 4, !dbg !3863
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond255, !dbg !3865, !llvm.loop !3866

for.end305:                                       ; preds = %for.cond255
  %67 = load i32, i32* %7, align 16, !dbg !3868
  call void @llvm.dbg.value(metadata i32 %67, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()), !dbg !3635
  %idxprom317 = sext i32 %67 to i64, !dbg !3869
  br label %for.cond307, !dbg !3871

for.cond307:                                      ; preds = %cleanup331, %for.end305
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %cleanup331 ], [ 0, %for.end305 ]
  %.pre89 = phi i8 [ %.pre8, %cleanup331 ], [ %.lcssa, %for.end305 ]
  %68 = phi i8 [ %.pre8, %cleanup331 ], [ %.lcssa, %for.end305 ], !dbg !3872
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !3579, metadata !DIExpression()), !dbg !3635
  %69 = sext i8 %68 to i64, !dbg !3873
  %cmp309 = icmp slt i64 %indvars.iv15, %69, !dbg !3873
  br i1 %cmp309, label %for.body311, label %for.end336, !dbg !3874

for.body311:                                      ; preds = %for.cond307
  call void @llvm.dbg.value(metadata i32 undef, metadata !3626, metadata !DIExpression()), !dbg !3875
  %arrayidx316 = getelementptr inbounds [30 x i32*], [30 x i32*]* %op_alt_regno, i64 0, i64 %indvars.iv15, !dbg !3876
  %70 = load i32*, i32** %arrayidx316, align 8, !dbg !3876
  %arrayidx318 = getelementptr inbounds i32, i32* %70, i64 %idxprom317, !dbg !3876
  %71 = load i32, i32* %arrayidx318, align 4, !dbg !3876
  %cmp319 = icmp eq i32 %71, -1, !dbg !3877
  br i1 %cmp319, label %cleanup331, label %if.end322, !dbg !3878

if.end322:                                        ; preds = %for.body311
  %arrayidx314 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv15, !dbg !3879
  %72 = load i32, i32* %arrayidx314, align 4, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %72, metadata !3626, metadata !DIExpression()), !dbg !3875
  %arrayidx324 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv15, !dbg !3880
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx324, align 8, !dbg !3880
  %call329 = call %struct.rtx_def* @gen_rtx_REG(i32 %72, i32 %71) #6, !dbg !3881
  %call330 = call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** %73, %struct.rtx_def* %call329, i8 zeroext 1) #6, !dbg !3882
  %.pre8.pre = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3872
  br label %cleanup331, !dbg !3883

cleanup331:                                       ; preds = %for.body311, %if.end322
  %.pre8 = phi i8 [ %.pre89, %for.body311 ], [ %.pre8.pre, %if.end322 ], !dbg !3872
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !3884
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3635
  br label %for.cond307, !dbg !3885, !llvm.loop !3886

for.end336:                                       ; preds = %for.cond307
  %74 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3888
  %75 = sext i8 %74 to i64, !dbg !3889
  br label %for.cond339, !dbg !3889

for.cond339:                                      ; preds = %cleanup366, %for.end336
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup366 ], [ %75, %for.end336 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3890
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3635
  %cmp340 = icmp sgt i64 %indvars.iv, 0, !dbg !3891
  br i1 %cmp340, label %for.body342, label %for.end371, !dbg !3892

for.body342:                                      ; preds = %for.cond339
  %arrayidx345 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %indvars.iv.next, !dbg !3893
  %76 = load i8, i8* %arrayidx345, align 1, !dbg !3893
  call void @llvm.dbg.value(metadata i32 undef, metadata !3630, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i32 undef, metadata !3634, metadata !DIExpression()), !dbg !3894
  %idxprom350 = sext i8 %76 to i64, !dbg !3895
  %arrayidx351 = getelementptr inbounds [30 x i32*], [30 x i32*]* %op_alt_regno, i64 0, i64 %idxprom350, !dbg !3895
  %77 = load i32*, i32** %arrayidx351, align 8, !dbg !3895
  %arrayidx353 = getelementptr inbounds i32, i32* %77, i64 %idxprom317, !dbg !3895
  %78 = load i32, i32* %arrayidx353, align 4, !dbg !3895
  %cmp354 = icmp eq i32 %78, -1, !dbg !3897
  br i1 %cmp354, label %cleanup366, label %if.end357, !dbg !3898

if.end357:                                        ; preds = %for.body342
  %arrayidx349 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %idxprom350, !dbg !3899
  %79 = load i32, i32* %arrayidx349, align 4, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %79, metadata !3634, metadata !DIExpression()), !dbg !3894
  %arrayidx359 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv.next, !dbg !3900
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx359, align 8, !dbg !3900
  %call364 = call %struct.rtx_def* @gen_rtx_REG(i32 %79, i32 %78) #6, !dbg !3901
  %call365 = call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** %80, %struct.rtx_def* %call364, i8 zeroext 1) #6, !dbg !3902
  br label %cleanup366, !dbg !3903

cleanup366:                                       ; preds = %for.body342, %if.end357
  call void @llvm.dbg.value(metadata i32 undef, metadata !3579, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3635
  br label %for.cond339, !dbg !3904, !llvm.loop !3905

for.end371:                                       ; preds = %for.cond339
  %call372 = call i32 @apply_change_group() #6, !dbg !3907
  br label %cleanup373, !dbg !3908

cleanup373:                                       ; preds = %entry, %lor.lhs.false, %for.end371
  %retval.0 = phi i32 [ %call372, %for.end371 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !3635
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %1) #8, !dbg !3909
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #8, !dbg !3909
  ret i32 %retval.0, !dbg !3909
}

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @cselib_invalidate_rtx(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @true_regnum(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @ix86_memory_move_cost(i32, i32, i32) local_unnamed_addr #2

declare dso_local i32 @ix86_register_move_cost(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3910 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3917, metadata !DIExpression()), !dbg !3918
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3919
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3919
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3919
  ret i32 %0, !dbg !3920
}

declare dso_local i32 @rtx_cost(%struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @references_value_p(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @validate_unshare_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @cselib_reg_set_mode(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_equal_for_cselib_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #2

declare dso_local void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @df_ref_change_reg_with_loc(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @regclass_for_constraint(i32) local_unnamed_addr #2

declare dso_local i32 @lookup_constraint(i8*) local_unnamed_addr #2

declare dso_local i32 @reg_fits_class_p(%struct.rtx_def*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insn_constraint_len(i8 signext %fc, i8* %str) unnamed_addr #0 !dbg !3921 {
entry:
  call void @llvm.dbg.value(metadata i8 %fc, metadata !3926, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %str, metadata !3927, metadata !DIExpression()), !dbg !3928
  %cond = icmp eq i8 %fc, 89, !dbg !3929
  %retval.0 = select i1 %cond, i64 2, i64 1, !dbg !3929
  ret i64 %retval.0, !dbg !3930
}

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @get_first_label_num() local_unnamed_addr #2

declare dso_local i32 @max_label_num() local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @compute_use_by_pseudos(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_last_insn() local_unnamed_addr #2

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_combine_note_use(%struct.rtx_def** %xp, %struct.rtx_def* %insn) unnamed_addr #5 !dbg !3931 {
entry:
  br label %tailrecurse, !dbg !3953

tailrecurse:                                      ; preds = %if.then, %entry
  %xp.tr = phi %struct.rtx_def** [ %xp, %entry ], [ %rt_rtx6, %if.then ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr, metadata !3935, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3936, metadata !DIExpression()), !dbg !3956
  %0 = load %struct.rtx_def*, %struct.rtx_def** %xp.tr, align 8, !dbg !3957
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3937, metadata !DIExpression()), !dbg !3956
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3958
  %bf.load = load i32, i32* %1, align 8, !dbg !3958
  %trunc = trunc i32 %bf.load to i16, !dbg !3959
  switch i16 %trunc, label %sw.epilog.loopexit [
    i16 23, label %sw.bb
    i16 24, label %sw.bb7
    i16 25, label %sw.bb36
    i16 49, label %sw.bb54
    i16 37, label %sw.bb81.loopexit
  ], !dbg !3959

sw.bb:                                            ; preds = %tailrecurse
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3960
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3960
  %3 = load i32*, i32** %2, align 8, !dbg !3960
  %bf.load1 = load i32, i32* %3, align 8, !dbg !3960
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3960
  %cmp = icmp eq i32 %bf.clear2, 37, !dbg !3960
  br i1 %cmp, label %if.then, label %sw.epilog.loopexit, !dbg !3961

if.then:                                          ; preds = %sw.bb
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3962
  %rt_rtx6 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3962
  br label %tailrecurse, !dbg !3953

sw.bb7:                                           ; preds = %tailrecurse
  %.lcssa49 = phi %struct.rtx_def* [ %0, %tailrecurse ], !dbg !3957
  %bf.load.lcssa45 = phi i32 [ %bf.load, %tailrecurse ], !dbg !3958
  %bf.clear.le19 = and i32 %bf.load.lcssa45, 65535, !dbg !3958
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa49, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3963
  %5 = bitcast %union.rtunion_def* %arrayidx10 to i32**, !dbg !3963
  %6 = load i32*, i32** %5, align 8, !dbg !3963
  %bf.load12 = load i32, i32* %6, align 8, !dbg !3963
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3963
  %cmp14 = icmp eq i32 %bf.clear13, 37, !dbg !3963
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !3964
  br i1 %cmp14, label %land.lhs.true, label %sw.epilog, !dbg !3964

land.lhs.true:                                    ; preds = %sw.bb7
  %tobool = icmp slt i32 %bf.load12, 0, !dbg !3965
  br i1 %tobool, label %if.then20, label %sw.epilog, !dbg !3966

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3943, metadata !DIExpression()), !dbg !3967
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %call, metadata !3947, metadata !DIExpression()), !dbg !3967
  %idxprom = sext i32 %call to i64, !dbg !3969
  %bf.load26 = load i32, i32* %6, align 8, !dbg !3970
  %bf.lshr27 = lshr i32 %bf.load26, 16, !dbg !3970
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !3970
  %idxprom29 = zext i32 %bf.clear28 to i64, !dbg !3969
  %arrayidx30 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom29, !dbg !3969
  %8 = load i8, i8* %arrayidx30, align 1, !dbg !3969
  call void @llvm.dbg.value(metadata i8 %8, metadata !3948, metadata !DIExpression()), !dbg !3967
  %9 = zext i8 %8 to i64, !dbg !3971
  %10 = sext i32 %call to i64, !dbg !3971
  br label %while.cond, !dbg !3971

while.cond:                                       ; preds = %while.body, %if.then20
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %while.body ], [ %9, %if.then20 ], !dbg !3967
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !3948, metadata !DIExpression()), !dbg !3967
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1, !dbg !3972
  call void @llvm.dbg.value(metadata i32 undef, metadata !3948, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3967
  %cmp31 = icmp sgt i64 %indvars.iv39, 0, !dbg !3973
  br i1 %cmp31, label %while.body, label %cleanup.cont.loopexit1, !dbg !3971

while.body:                                       ; preds = %while.cond
  %11 = add nsw i64 %indvars.iv.next40, %10, !dbg !3974
  %use_index = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %11, i32 1, !dbg !3975
  store i32 -1, i32* %use_index, align 8, !dbg !3976
  br label %while.cond, !dbg !3971, !llvm.loop !3977

sw.bb36:                                          ; preds = %tailrecurse
  %.lcssa50 = phi %struct.rtx_def* [ %0, %tailrecurse ], !dbg !3957
  %bf.load.lcssa46 = phi i32 [ %bf.load, %tailrecurse ], !dbg !3958
  %bf.clear.le17 = and i32 %bf.load.lcssa46, 65535, !dbg !3958
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa50, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3979
  %12 = bitcast %union.rtunion_def* %arrayidx39 to i32**, !dbg !3979
  %13 = load i32*, i32** %12, align 8, !dbg !3979
  %bf.load41 = load i32, i32* %13, align 8, !dbg !3979
  %bf.clear42 = and i32 %bf.load41, 65535, !dbg !3979
  %cmp43 = icmp eq i32 %bf.clear42, 37, !dbg !3979
  br i1 %cmp43, label %if.then45, label %sw.epilog, !dbg !3981

if.then45:                                        ; preds = %sw.bb36
  %14 = bitcast i32* %13 to %struct.rtx_def*, !dbg !3981
  %call50 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %14) #7, !dbg !3982
  %cmp51 = icmp ult i32 %call50, 53, !dbg !3982
  br i1 %cmp51, label %cleanup.cont, label %cond.true, !dbg !3982

cond.true:                                        ; preds = %if.then45
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1075, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3982
  br label %cleanup.cont, !dbg !3982

sw.bb54:                                          ; preds = %tailrecurse
  %xp.tr.lcssa55 = phi %struct.rtx_def** [ %xp.tr, %tailrecurse ]
  %.lcssa51 = phi %struct.rtx_def* [ %0, %tailrecurse ], !dbg !3957
  %bf.load.lcssa47 = phi i32 [ %bf.load, %tailrecurse ], !dbg !3958
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa55, metadata !3935, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa55, metadata !3935, metadata !DIExpression()), !dbg !3956
  %bf.clear.le = and i32 %bf.load.lcssa47, 65535, !dbg !3958
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa55, metadata !3935, metadata !DIExpression()), !dbg !3956
  %arrayidx57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa51, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3984
  %15 = bitcast %union.rtunion_def* %arrayidx57 to i32**, !dbg !3984
  %16 = load i32*, i32** %15, align 8, !dbg !3984
  %bf.load59 = load i32, i32* %16, align 8, !dbg !3984
  %bf.clear60 = and i32 %bf.load59, 65535, !dbg !3984
  %cmp61 = icmp eq i32 %bf.clear60, 37, !dbg !3984
  %17 = bitcast i32* %16 to %struct.rtx_def*, !dbg !3986
  br i1 %cmp61, label %lor.lhs.false, label %sw.epilog, !dbg !3986

lor.lhs.false:                                    ; preds = %sw.bb54
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa51, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3987
  %19 = bitcast %union.rtunion_def* %18 to i32**, !dbg !3987
  %20 = load i32*, i32** %19, align 8, !dbg !3987
  %bf.load67 = load i32, i32* %20, align 8, !dbg !3987
  %bf.clear68 = and i32 %bf.load67, 65535, !dbg !3987
  %cmp69 = icmp eq i32 %bf.clear68, 30, !dbg !3987
  br i1 %cmp69, label %if.end72, label %sw.epilog, !dbg !3988

if.end72:                                         ; preds = %lor.lhs.false
  %21 = bitcast i32* %20 to %struct.rtx_def*, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !3937, metadata !DIExpression()), !dbg !3956
  br label %sw.bb81, !dbg !3989

sw.bb81.loopexit:                                 ; preds = %tailrecurse
  %xp.tr.lcssa56 = phi %struct.rtx_def** [ %xp.tr, %tailrecurse ]
  %.lcssa52 = phi %struct.rtx_def* [ %0, %tailrecurse ], !dbg !3957
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa56, metadata !3935, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa56, metadata !3935, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp.tr.lcssa56, metadata !3935, metadata !DIExpression()), !dbg !3956
  %offset.0.pre = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3956
  br label %sw.bb81, !dbg !3956

sw.bb81:                                          ; preds = %sw.bb81.loopexit, %if.end72
  %xp.tr57 = phi %struct.rtx_def** [ %xp.tr.lcssa55, %if.end72 ], [ %xp.tr.lcssa56, %sw.bb81.loopexit ]
  %offset.0 = phi %struct.rtx_def* [ %21, %if.end72 ], [ %offset.0.pre, %sw.bb81.loopexit ], !dbg !3956
  %x.0 = phi %struct.rtx_def* [ %17, %if.end72 ], [ %.lcssa52, %sw.bb81.loopexit ], !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !3937, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %offset.0, metadata !3942, metadata !DIExpression()), !dbg !3956
  %call83 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.0) #7, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %call83, metadata !3949, metadata !DIExpression()), !dbg !3991
  %cmp86 = icmp slt i32 %call83, 53, !dbg !3992
  br i1 %cmp86, label %cond.end90, label %cond.true88, !dbg !3992

cond.true88:                                      ; preds = %sw.bb81
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1095, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3992
  br label %cond.end90, !dbg !3992

cond.end90:                                       ; preds = %sw.bb81, %cond.true88
  %idxprom92 = sext i32 %call83 to i64, !dbg !3993
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 0, !dbg !3994
  %bf.load94 = load i32, i32* %22, align 8, !dbg !3994
  %bf.lshr95 = lshr i32 %bf.load94, 16, !dbg !3994
  %bf.clear96 = and i32 %bf.lshr95, 255, !dbg !3994
  %idxprom97 = zext i32 %bf.clear96 to i64, !dbg !3993
  %arrayidx98 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom92, i64 %idxprom97, !dbg !3993
  %23 = load i8, i8* %arrayidx98, align 1, !dbg !3993
  call void @llvm.dbg.value(metadata i8 %23, metadata !3952, metadata !DIExpression()), !dbg !3991
  %cmp100 = icmp ugt i8 %23, 1, !dbg !3995
  br i1 %cmp100, label %while.cond103.preheader, label %if.end113, !dbg !3997

while.cond103.preheader:                          ; preds = %cond.end90
  call void @llvm.dbg.value(metadata i8 %23, metadata !3952, metadata !DIExpression()), !dbg !3991
  %24 = zext i8 %23 to i64, !dbg !3998
  %25 = sext i32 %call83 to i64, !dbg !3998
  br label %while.cond103, !dbg !3998

while.cond103:                                    ; preds = %while.cond103.preheader, %while.body107
  %indvars.iv42 = phi i64 [ %24, %while.cond103.preheader ], [ %indvars.iv.next43, %while.body107 ], !dbg !3991
  call void @llvm.dbg.value(metadata i64 %indvars.iv42, metadata !3952, metadata !DIExpression()), !dbg !3991
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1, !dbg !4000
  call void @llvm.dbg.value(metadata i32 undef, metadata !3952, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  %cmp105 = icmp sgt i64 %indvars.iv42, 0, !dbg !4001
  br i1 %cmp105, label %while.body107, label %cleanup.cont.loopexit2, !dbg !3998

while.body107:                                    ; preds = %while.cond103
  %26 = add nsw i64 %indvars.iv.next43, %25, !dbg !4002
  %use_index111 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %26, i32 1, !dbg !4003
  store i32 -1, i32* %use_index111, align 8, !dbg !4004
  br label %while.cond103, !dbg !3998, !llvm.loop !4005

if.end113:                                        ; preds = %cond.end90
  %use_index116 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom92, i32 1, !dbg !4007
  %27 = load i32, i32* %use_index116, align 8, !dbg !4008
  %dec117 = add nsw i32 %27, -1, !dbg !4008
  store i32 %dec117, i32* %use_index116, align 8, !dbg !4008
  call void @llvm.dbg.value(metadata i32 %dec117, metadata !3951, metadata !DIExpression()), !dbg !3991
  %cmp118 = icmp slt i32 %27, 1, !dbg !4009
  br i1 %cmp118, label %cleanup.cont, label %if.end121, !dbg !4011

if.end121:                                        ; preds = %if.end113
  %cmp122 = icmp eq i32 %dec117, 5, !dbg !4012
  %offset127 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom92, i32 2, !dbg !4014
  br i1 %cmp122, label %if.else, label %if.then124, !dbg !4015

if.then124:                                       ; preds = %if.end121
  %28 = load %struct.rtx_def*, %struct.rtx_def** %offset127, align 8, !dbg !4016
  %call128 = tail call i32 @rtx_equal_p(%struct.rtx_def* %offset.0, %struct.rtx_def* %28) #6, !dbg !4019
  %tobool129 = icmp eq i32 %call128, 0, !dbg !4019
  br i1 %tobool129, label %if.then130, label %if.end140, !dbg !4020

if.then130:                                       ; preds = %if.then124
  store i32 -1, i32* %use_index116, align 8, !dbg !4021
  br label %cleanup.cont, !dbg !4023

if.else:                                          ; preds = %if.end121
  store %struct.rtx_def* %offset.0, %struct.rtx_def** %offset127, align 8, !dbg !4024
  %29 = load i32, i32* @reload_combine_ruid, align 4, !dbg !4026
  %use_ruid = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom92, i32 4, !dbg !4027
  store i32 %29, i32* %use_ruid, align 4, !dbg !4028
  br label %if.end140

if.end140:                                        ; preds = %if.then124, %if.else
  %idxprom143 = sext i32 %dec117 to i64, !dbg !4029
  %insn145 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom92, i32 0, i64 %idxprom143, i32 0, !dbg !4030
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn145, align 8, !dbg !4031
  %usep = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %idxprom92, i32 0, i64 %idxprom143, i32 1, !dbg !4032
  store %struct.rtx_def** %xp.tr57, %struct.rtx_def*** %usep, align 8, !dbg !4033
  br label %cleanup.cont, !dbg !4034

sw.epilog.loopexit:                               ; preds = %sw.bb, %tailrecurse
  %.lcssa = phi %struct.rtx_def* [ %0, %sw.bb ], [ %0, %tailrecurse ], !dbg !3957
  %bf.load.lcssa = phi i32 [ %bf.load, %sw.bb ], [ %bf.load, %tailrecurse ], !dbg !3958
  %bf.clear.le21 = and i32 %bf.load.lcssa, 65535, !dbg !3958
  br label %sw.epilog, !dbg !4035

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb54, %lor.lhs.false, %sw.bb36, %sw.bb7, %land.lhs.true
  %30 = phi %struct.rtx_def* [ %.lcssa, %sw.epilog.loopexit ], [ %.lcssa51, %sw.bb54 ], [ %.lcssa51, %lor.lhs.false ], [ %.lcssa50, %sw.bb36 ], [ %.lcssa49, %sw.bb7 ], [ %.lcssa49, %land.lhs.true ]
  %bf.clear7 = phi i32 [ %bf.clear.le21, %sw.epilog.loopexit ], [ %bf.clear.le, %sw.bb54 ], [ %bf.clear.le, %lor.lhs.false ], [ %bf.clear.le17, %sw.bb36 ], [ %bf.clear.le19, %sw.bb7 ], [ %bf.clear.le19, %land.lhs.true ]
  %idxprom153 = zext i32 %bf.clear7 to i64, !dbg !4035
  %arrayidx154 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom153, !dbg !4035
  %31 = load i8*, i8** %arrayidx154, align 8, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %31, metadata !3939, metadata !DIExpression()), !dbg !3956
  %arrayidx156 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom153, !dbg !4036
  %32 = load i8, i8* %arrayidx156, align 1, !dbg !4036
  call void @llvm.dbg.value(metadata i8 %32, metadata !3940, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  %u178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i64 0, i32 1, !dbg !4038
  %fld179 = bitcast %union.u* %u178 to [1 x %union.rtunion_def]*, !dbg !4038
  %33 = zext i8 %32 to i64, !dbg !4045
  br label %for.cond, !dbg !4045

for.cond:                                         ; preds = %for.inc197, %sw.epilog
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc197 ], [ %33, %sw.epilog ]
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1, !dbg !4046
  call void @llvm.dbg.value(metadata i32 undef, metadata !3940, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  %cmp158 = icmp sgt i64 %indvars.iv37, 0, !dbg !4047
  br i1 %cmp158, label %for.body, label %cleanup.cont.loopexit, !dbg !4048

for.body:                                         ; preds = %for.cond
  %arrayidx161 = getelementptr inbounds i8, i8* %31, i64 %indvars.iv.next38, !dbg !4049
  %34 = load i8, i8* %arrayidx161, align 1, !dbg !4049
  %cmp163 = icmp eq i8 %34, 101, !dbg !4050
  br i1 %cmp163, label %if.then165, label %if.else171, !dbg !4051

if.then165:                                       ; preds = %for.body
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i64 0, i64 %indvars.iv.next38, !dbg !4052
  %rt_rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**, !dbg !4052
  tail call fastcc void @reload_combine_note_use(%struct.rtx_def** nonnull %rt_rtx170, %struct.rtx_def* %insn) #7, !dbg !4053
  br label %for.inc197, !dbg !4053

if.else171:                                       ; preds = %for.body
  %cmp175 = icmp eq i8 %34, 69, !dbg !4054
  br i1 %cmp175, label %if.then177, label %for.inc197, !dbg !4055

if.then177:                                       ; preds = %if.else171
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i64 0, i64 %indvars.iv.next38, !dbg !4056
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx181 to %struct.rtvec_def**, !dbg !4056
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4056
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i64 0, i32 0, !dbg !4056
  %36 = load i32, i32* %num_elem, align 8, !dbg !4056
  call void @llvm.dbg.value(metadata i32 %36, metadata !3941, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  %37 = sext i32 %36 to i64, !dbg !4057
  br label %for.cond183, !dbg !4057

for.cond183:                                      ; preds = %for.body186, %if.then177
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body186 ], [ %37, %if.then177 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4038
  call void @llvm.dbg.value(metadata i32 undef, metadata !3941, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  %cmp184 = icmp sgt i64 %indvars.iv, 0, !dbg !4058
  br i1 %cmp184, label %for.body186, label %for.inc197.loopexit, !dbg !4060

for.body186:                                      ; preds = %for.cond183
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4061
  %arrayidx193 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i64 0, i32 1, i64 %indvars.iv.next, !dbg !4061
  tail call fastcc void @reload_combine_note_use(%struct.rtx_def** nonnull %arrayidx193, %struct.rtx_def* %insn) #7, !dbg !4062
  call void @llvm.dbg.value(metadata i32 undef, metadata !3941, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  br label %for.cond183, !dbg !4063, !llvm.loop !4064

for.inc197.loopexit:                              ; preds = %for.cond183
  br label %for.inc197, !dbg !4066

for.inc197:                                       ; preds = %for.inc197.loopexit, %if.then165, %if.else171
  call void @llvm.dbg.value(metadata i32 undef, metadata !3940, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3956
  br label %for.cond, !dbg !4066, !llvm.loop !4067

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4069

cleanup.cont.loopexit1:                           ; preds = %while.cond
  br label %cleanup.cont, !dbg !4069

cleanup.cont.loopexit2:                           ; preds = %while.cond103
  br label %cleanup.cont, !dbg !4069

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit2, %cleanup.cont.loopexit1, %cleanup.cont.loopexit, %if.then45, %cond.true, %if.end113, %if.end140, %if.then130
  ret void, !dbg !4069
}

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @remove_reg_equal_equiv_notes(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @reload_combine_note_store(%struct.rtx_def* %dst, %struct.rtx_def* %set, i8* %data) #5 !dbg !4070 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst, metadata !4074, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !4075, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8* %data, metadata !4076, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 0, metadata !4077, metadata !DIExpression()), !dbg !4080
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 0, !dbg !4081
  %bf.load = load i32, i32* %0, align 8, !dbg !4081
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4081
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4081
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4079, metadata !DIExpression()), !dbg !4080
  %bf.clear2 = and i32 %bf.load, 65535, !dbg !4082
  %cmp = icmp eq i32 %bf.clear2, 39, !dbg !4084
  br i1 %cmp, label %if.then, label %if.end, !dbg !4085

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4086
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4086
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4086
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !4086
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4088
  %3 = load i32*, i32** %2, align 8, !dbg !4088
  %bf.load7 = load i32, i32* %3, align 8, !dbg !4088
  %bf.lshr8 = lshr i32 %bf.load7, 16, !dbg !4088
  %bf.clear9 = and i32 %bf.lshr8, 255, !dbg !4088
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4089
  %rt_uint = bitcast %union.rtunion_def* %4 to i32*, !dbg !4089
  %5 = load i32, i32* %rt_uint, align 8, !dbg !4089
  %bf.load13 = load i32, i32* %0, align 8, !dbg !4090
  %bf.lshr14 = lshr i32 %bf.load13, 16, !dbg !4090
  %bf.clear15 = and i32 %bf.lshr14, 255, !dbg !4090
  %call16 = tail call i32 @subreg_regno_offset(i32 %call, i32 %bf.clear9, i32 %5, i32 %bf.clear15) #6, !dbg !4091
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4077, metadata !DIExpression()), !dbg !4080
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4092
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !4074, metadata !DIExpression()), !dbg !4080
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !4093
  %bf.load21.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4095
  br label %if.end, !dbg !4096

if.end:                                           ; preds = %if.then, %entry
  %bf.load21 = phi i32 [ %bf.load21.pre, %if.then ], [ %bf.load, %entry ], !dbg !4095
  %regno.0 = phi i32 [ %call16, %if.then ], [ 0, %entry ], !dbg !4080
  %dst.addr.0 = phi %struct.rtx_def* [ %6, %if.then ], [ %dst, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst.addr.0, metadata !4074, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4077, metadata !DIExpression()), !dbg !4080
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !4095
  %cmp23 = icmp eq i32 %bf.clear22, 37, !dbg !4095
  br i1 %cmp23, label %if.end25, label %cleanup.cont, !dbg !4097

if.end25:                                         ; preds = %if.end
  %call26 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst.addr.0) #7, !dbg !4098
  %add = add i32 %regno.0, %call26, !dbg !4099
  call void @llvm.dbg.value(metadata i32 %add, metadata !4077, metadata !DIExpression()), !dbg !4080
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 0, !dbg !4100
  %bf.load27 = load i32, i32* %7, align 8, !dbg !4100
  %bf.clear28 = and i32 %bf.load27, 65535, !dbg !4100
  %cmp29 = icmp eq i32 %bf.clear28, 23, !dbg !4102
  br i1 %cmp29, label %lor.lhs.false, label %if.then45, !dbg !4103

lor.lhs.false:                                    ; preds = %if.end25
  %arrayidx32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4104
  %8 = bitcast %union.rtunion_def* %arrayidx32 to i32**, !dbg !4104
  %9 = load i32*, i32** %8, align 8, !dbg !4104
  %bf.load34 = load i32, i32* %9, align 8, !dbg !4104
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !4104
  %cmp36 = icmp eq i32 %bf.clear35, 120, !dbg !4105
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !4106

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %cmp44 = icmp eq i32 %bf.clear35, 40, !dbg !4107
  br i1 %cmp44, label %if.then45, label %if.else, !dbg !4108

if.then45:                                        ; preds = %if.end25, %lor.lhs.false37, %lor.lhs.false
  %idxprom = sext i32 %add to i64, !dbg !4109
  %idxprom47 = zext i32 %bf.clear to i64, !dbg !4109
  %arrayidx48 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom47, !dbg !4109
  %10 = load i8, i8* %arrayidx48, align 1, !dbg !4109
  %conv = zext i8 %10 to i32, !dbg !4109
  %11 = load i32, i32* @reload_combine_ruid, align 4, !dbg !4112
  %12 = add i32 %call26, %regno.0, !dbg !4115
  %13 = add i32 %12, %conv, !dbg !4115
  %14 = add i32 %13, -1, !dbg !4115
  %15 = sext i32 %14 to i64, !dbg !4115
  %16 = sext i32 %add to i64, !dbg !4115
  br label %for.cond, !dbg !4115

for.cond:                                         ; preds = %for.body, %if.then45
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %15, %if.then45 ], !dbg !4116
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4078, metadata !DIExpression()), !dbg !4080
  %cmp50 = icmp slt i64 %indvars.iv, %16, !dbg !4117
  br i1 %cmp50, label %cleanup.cont.loopexit, label %for.body, !dbg !4118

for.body:                                         ; preds = %for.cond
  %use_index = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv, i32 1, !dbg !4119
  store i32 -1, i32* %use_index, align 8, !dbg !4120
  %store_ruid = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv, i32 3, !dbg !4121
  store i32 %11, i32* %store_ruid, align 8, !dbg !4122
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4123
  call void @llvm.dbg.value(metadata i32 undef, metadata !4078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  br label %for.cond, !dbg !4124, !llvm.loop !4125

if.else:                                          ; preds = %lor.lhs.false37
  %idxprom56 = sext i32 %add to i64, !dbg !4127
  %idxprom58 = zext i32 %bf.clear to i64, !dbg !4127
  %arrayidx59 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom56, i64 %idxprom58, !dbg !4127
  %17 = load i8, i8* %arrayidx59, align 1, !dbg !4127
  %conv60 = zext i8 %17 to i32, !dbg !4127
  %18 = load i32, i32* @reload_combine_ruid, align 4, !dbg !4130
  %19 = add i32 %call26, %regno.0, !dbg !4133
  %20 = add i32 %19, %conv60, !dbg !4133
  %21 = add i32 %20, -1, !dbg !4133
  %22 = sext i32 %21 to i64, !dbg !4133
  %23 = sext i32 %add to i64, !dbg !4133
  br label %for.cond63, !dbg !4133

for.cond63:                                       ; preds = %for.body66, %if.else
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body66 ], [ %22, %if.else ], !dbg !4134
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !4078, metadata !DIExpression()), !dbg !4080
  %cmp64 = icmp slt i64 %indvars.iv3, %23, !dbg !4135
  br i1 %cmp64, label %cleanup.cont.loopexit1, label %for.body66, !dbg !4136

for.body66:                                       ; preds = %for.cond63
  %store_ruid69 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv3, i32 3, !dbg !4137
  store i32 %18, i32* %store_ruid69, align 8, !dbg !4138
  %use_index72 = getelementptr inbounds [53 x %struct.anon], [53 x %struct.anon]* @reg_state, i64 0, i64 %indvars.iv3, i32 1, !dbg !4139
  store i32 6, i32* %use_index72, align 8, !dbg !4140
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !4141
  call void @llvm.dbg.value(metadata i32 undef, metadata !4078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  br label %for.cond63, !dbg !4142, !llvm.loop !4143

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4145

cleanup.cont.loopexit1:                           ; preds = %for.cond63
  br label %cleanup.cont, !dbg !4145

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit1, %cleanup.cont.loopexit, %if.end
  ret void, !dbg !4145
}

declare dso_local i32 @condjump_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @condjump_in_parallel_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @dbg_cnt(i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_int_mode(i64, i32) local_unnamed_addr #2

declare dso_local i32 @have_add2_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @have_insn_for(i32, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i64 @trunc_int_for_mode(i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @move2add_note_store(%struct.rtx_def* %dst, %struct.rtx_def* %set, i8* %data) #5 !dbg !4146 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst, metadata !4148, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !4149, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i8* %data, metadata !4150, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4151, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4152, metadata !DIExpression()), !dbg !4166
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 0, !dbg !4167
  %bf.load = load i32, i32* %0, align 8, !dbg !4167
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4167
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4167
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4154, metadata !DIExpression()), !dbg !4166
  %bf.clear2 = and i32 %bf.load, 65535, !dbg !4168
  %cmp = icmp eq i32 %bf.clear2, 39, !dbg !4170
  br i1 %cmp, label %if.then, label %if.end, !dbg !4171

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4172
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4172
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4172
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !4172
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4174
  %3 = load i32*, i32** %2, align 8, !dbg !4174
  %bf.load7 = load i32, i32* %3, align 8, !dbg !4174
  %bf.lshr8 = lshr i32 %bf.load7, 16, !dbg !4174
  %bf.clear9 = and i32 %bf.lshr8, 255, !dbg !4174
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4175
  %rt_uint = bitcast %union.rtunion_def* %4 to i32*, !dbg !4175
  %5 = load i32, i32* %rt_uint, align 8, !dbg !4175
  %bf.load13 = load i32, i32* %0, align 8, !dbg !4176
  %bf.lshr14 = lshr i32 %bf.load13, 16, !dbg !4176
  %bf.clear15 = and i32 %bf.lshr14, 255, !dbg !4176
  %call16 = tail call i32 @subreg_regno_offset(i32 %call, i32 %bf.clear9, i32 %5, i32 %bf.clear15) #6, !dbg !4177
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4151, metadata !DIExpression()), !dbg !4166
  %call17 = tail call i32 @subreg_nregs(%struct.rtx_def* %dst) #6, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4152, metadata !DIExpression()), !dbg !4166
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !4148, metadata !DIExpression()), !dbg !4166
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !4180
  %bf.load22.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4182
  br label %if.end, !dbg !4183

if.end:                                           ; preds = %if.then, %entry
  %bf.load53 = phi i32 [ %bf.load22.pre, %if.then ], [ %bf.load, %entry ], !dbg !4182
  %nregs.0 = phi i32 [ %call17, %if.then ], [ 0, %entry ], !dbg !4166
  %regno.0 = phi i32 [ %call16, %if.then ], [ 0, %entry ], !dbg !4166
  %dst.addr.0 = phi %struct.rtx_def* [ %6, %if.then ], [ %dst, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst.addr.0, metadata !4148, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4151, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 %nregs.0, metadata !4152, metadata !DIExpression()), !dbg !4166
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst.addr.0, i64 0, i32 0, !dbg !4182
  %bf.clear23 = and i32 %bf.load53, 65535, !dbg !4182
  %cmp24 = icmp eq i32 %bf.clear23, 43, !dbg !4182
  br i1 %cmp24, label %if.then25, label %if.end52, !dbg !4184

if.then25:                                        ; preds = %if.end
  %arrayidx28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dst.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4185
  %rt_rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**, !dbg !4185
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx29, align 8, !dbg !4185
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !4148, metadata !DIExpression()), !dbg !4166
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !4187
  %bf.load30 = load i32, i32* %9, align 8, !dbg !4187
  %bf.clear31 = and i32 %bf.load30, 65535, !dbg !4187
  %cmp32 = icmp eq i32 %bf.clear31, 75, !dbg !4189
  br i1 %cmp32, label %if.then44, label %lor.lhs.false, !dbg !4190

lor.lhs.false:                                    ; preds = %if.then25
  %cmp35 = icmp eq i32 %bf.clear31, 77, !dbg !4191
  br i1 %cmp35, label %if.then44, label %lor.lhs.false36, !dbg !4192

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %cmp39 = icmp eq i32 %bf.clear31, 74, !dbg !4193
  br i1 %cmp39, label %if.then44, label %lor.lhs.false40, !dbg !4194

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %cmp43 = icmp eq i32 %bf.clear31, 76, !dbg !4195
  br i1 %cmp43, label %if.then44, label %cleanup.cont375, !dbg !4196

if.then44:                                        ; preds = %lor.lhs.false40, %lor.lhs.false36, %lor.lhs.false, %if.then25
  %arrayidx47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4197
  %rt_rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**, !dbg !4197
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx48, align 8, !dbg !4197
  %call49 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %10) #7, !dbg !4197
  %idxprom = zext i32 %call49 to i64, !dbg !4198
  %arrayidx50 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom, !dbg !4198
  store i32 0, i32* %arrayidx50, align 4, !dbg !4199
  br label %cleanup.cont375, !dbg !4198

if.end52:                                         ; preds = %if.end
  %cmp55 = icmp eq i32 %bf.clear23, 37, !dbg !4200
  br i1 %cmp55, label %if.end57, label %cleanup.cont375, !dbg !4202

if.end57:                                         ; preds = %if.end52
  %call58 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst.addr.0) #7, !dbg !4203
  %add = add i32 %regno.0, %call58, !dbg !4204
  call void @llvm.dbg.value(metadata i32 %add, metadata !4151, metadata !DIExpression()), !dbg !4166
  %tobool = icmp eq i32 %nregs.0, 0, !dbg !4205
  br i1 %tobool, label %if.then59, label %if.end64, !dbg !4207

if.then59:                                        ; preds = %if.end57
  %idxprom60 = zext i32 %add to i64, !dbg !4208
  %idxprom62 = zext i32 %bf.clear to i64, !dbg !4208
  %arrayidx63 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom60, i64 %idxprom62, !dbg !4208
  %11 = load i8, i8* %arrayidx63, align 1, !dbg !4208
  %conv = zext i8 %11 to i32, !dbg !4208
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4152, metadata !DIExpression()), !dbg !4166
  br label %if.end64, !dbg !4209

if.end64:                                         ; preds = %if.end57, %if.then59
  %nregs.1 = phi i32 [ %nregs.0, %if.end57 ], [ %conv, %if.then59 ], !dbg !4166
  call void @llvm.dbg.value(metadata i32 %nregs.1, metadata !4152, metadata !DIExpression()), !dbg !4166
  %bf.load65 = load i32, i32* %7, align 8, !dbg !4210
  %bf.lshr66 = lshr i32 %bf.load65, 16, !dbg !4210
  %bf.clear67 = and i32 %bf.lshr66, 255, !dbg !4210
  %idxprom68 = zext i32 %bf.clear67 to i64, !dbg !4210
  %arrayidx69 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom68, !dbg !4210
  %12 = load i8, i8* %arrayidx69, align 1, !dbg !4210
  %cmp71 = icmp eq i8 %12, 2, !dbg !4210
  br i1 %cmp71, label %land.lhs.true, label %lor.lhs.false73, !dbg !4210

lor.lhs.false73:                                  ; preds = %if.end64
  %cmp80 = icmp eq i8 %12, 3, !dbg !4210
  %cmp82 = icmp eq i32 %nregs.1, 1, !dbg !4211
  %or.cond = and i1 %cmp80, %cmp82, !dbg !4212
  br i1 %or.cond, label %land.lhs.true84, label %if.else363, !dbg !4212

land.lhs.true:                                    ; preds = %if.end64
  %cmp82.old = icmp eq i32 %nregs.1, 1, !dbg !4211
  br i1 %cmp82.old, label %land.lhs.true84, label %if.else363, !dbg !4213

land.lhs.true84:                                  ; preds = %lor.lhs.false73, %land.lhs.true
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 0, !dbg !4214
  %bf.load85 = load i32, i32* %13, align 8, !dbg !4214
  %bf.clear86 = and i32 %bf.load85, 65535, !dbg !4214
  %cmp87 = icmp eq i32 %bf.clear86, 23, !dbg !4215
  br i1 %cmp87, label %land.lhs.true89, label %if.else363, !dbg !4216

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %arrayidx92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4217
  %14 = bitcast %union.rtunion_def* %arrayidx92 to i32**, !dbg !4217
  %15 = load i32*, i32** %14, align 8, !dbg !4217
  %bf.load94 = load i32, i32* %15, align 8, !dbg !4217
  %bf.clear95 = and i32 %bf.load94, 65535, !dbg !4217
  %cmp96 = icmp eq i32 %bf.clear95, 120, !dbg !4218
  br i1 %cmp96, label %if.else363, label %land.lhs.true98, !dbg !4219

land.lhs.true98:                                  ; preds = %land.lhs.true89
  %cmp105 = icmp eq i32 %bf.clear95, 40, !dbg !4220
  br i1 %cmp105, label %if.else363, label %if.then107, !dbg !4221

if.then107:                                       ; preds = %land.lhs.true98
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4222
  %rt_rtx111 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !4222
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx111, align 8, !dbg !4222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !4155, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bf.clear67, metadata !4161, metadata !DIExpression()), !dbg !4223
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 0, !dbg !4224
  %bf.load115 = load i32, i32* %18, align 8, !dbg !4224
  %trunc = trunc i32 %bf.load115 to i16, !dbg !4225
  switch i16 %trunc, label %invalidate [
    i16 49, label %sw.bb
    i16 37, label %sw.epilog
    i16 30, label %sw.bb281
  ], !dbg !4225

sw.bb:                                            ; preds = %if.then107
  %arrayidx119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4226
  %19 = bitcast %union.rtunion_def* %arrayidx119 to i32**, !dbg !4226
  %20 = load i32*, i32** %19, align 8, !dbg !4226
  %bf.load121 = load i32, i32* %20, align 8, !dbg !4226
  %bf.clear122 = and i32 %bf.load121, 65535, !dbg !4226
  %cmp123 = icmp eq i32 %bf.clear122, 37, !dbg !4226
  %21 = bitcast i32* %20 to %struct.rtx_def*, !dbg !4228
  br i1 %cmp123, label %if.then125, label %invalidate, !dbg !4228

if.then125:                                       ; preds = %sw.bb
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !4158, metadata !DIExpression()), !dbg !4223
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4229
  %23 = bitcast %union.rtunion_def* %22 to i32**, !dbg !4229
  %24 = load i32*, i32** %23, align 8, !dbg !4229
  %bf.load134 = load i32, i32* %24, align 8, !dbg !4229
  %bf.clear135 = and i32 %bf.load134, 65535, !dbg !4229
  %cmp136 = icmp eq i32 %bf.clear135, 30, !dbg !4229
  %25 = bitcast i32* %24 to %struct.rtx_def*, !dbg !4232
  br i1 %cmp136, label %if.then138, label %if.else, !dbg !4232

if.then138:                                       ; preds = %if.then125
  %u143 = getelementptr inbounds i32, i32* %24, i64 2, !dbg !4233
  %arrayidx144 = bitcast i32* %u143 to i64*, !dbg !4233
  %26 = load i64, i64* %arrayidx144, align 8, !dbg !4233
  call void @llvm.dbg.value(metadata i64 %26, metadata !4159, metadata !DIExpression()), !dbg !4223
  br label %sw.epilog, !dbg !4234

if.else:                                          ; preds = %if.then125
  %cmp151 = icmp eq i32 %bf.clear135, 37, !dbg !4235
  br i1 %cmp151, label %land.lhs.true153, label %invalidate, !dbg !4237

land.lhs.true153:                                 ; preds = %if.else
  %rt_rtx157 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !4238
  %call158 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %25) #7, !dbg !4238
  %idxprom159 = zext i32 %call158 to i64, !dbg !4239
  %arrayidx160 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom159, !dbg !4239
  %27 = load i32, i32* %arrayidx160, align 4, !dbg !4239
  %28 = load i32, i32* @move2add_last_label_luid, align 4, !dbg !4240
  %cmp161 = icmp sgt i32 %27, %28, !dbg !4241
  br i1 %cmp161, label %land.lhs.true163, label %invalidate, !dbg !4242

land.lhs.true163:                                 ; preds = %land.lhs.true153
  %arrayidx165 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom68, !dbg !4243
  %29 = load i8, i8* %arrayidx165, align 1, !dbg !4243
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4243
  %call172 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %30) #7, !dbg !4243
  %idxprom173 = zext i32 %call172 to i64, !dbg !4243
  %arrayidx174 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom173, !dbg !4243
  %31 = load i32, i32* %arrayidx174, align 4, !dbg !4243
  %idxprom175 = zext i32 %31 to i64, !dbg !4243
  %arrayidx176 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom175, !dbg !4243
  %32 = load i8, i8* %arrayidx176, align 1, !dbg !4243
  %cmp179 = icmp eq i8 %29, %32, !dbg !4243
  br i1 %cmp179, label %if.then199, label %lor.lhs.false181, !dbg !4243

lor.lhs.false181:                                 ; preds = %land.lhs.true163
  %33 = load i8, i8* %arrayidx165, align 1, !dbg !4243
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4243
  %call190 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %34) #7, !dbg !4243
  %idxprom191 = zext i32 %call190 to i64, !dbg !4243
  %arrayidx192 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom191, !dbg !4243
  %35 = load i32, i32* %arrayidx192, align 4, !dbg !4243
  %idxprom193 = zext i32 %35 to i64, !dbg !4243
  %arrayidx194 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom193, !dbg !4243
  %36 = load i8, i8* %arrayidx194, align 1, !dbg !4243
  %cmp197 = icmp ugt i8 %33, %36, !dbg !4243
  br i1 %cmp197, label %invalidate, label %if.then199, !dbg !4244

if.then199:                                       ; preds = %lor.lhs.false181, %land.lhs.true163
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4245
  %call204 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %37) #7, !dbg !4245
  %idxprom205 = zext i32 %call204 to i64, !dbg !4248
  %arrayidx206 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom205, !dbg !4248
  %38 = load i32, i32* %arrayidx206, align 4, !dbg !4248
  %cmp207 = icmp slt i32 %38, 0, !dbg !4249
  br i1 %cmp207, label %if.then209, label %if.else217, !dbg !4250

if.then209:                                       ; preds = %if.then199
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4251
  %call214 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %39) #7, !dbg !4251
  %idxprom215 = zext i32 %call214 to i64, !dbg !4252
  %arrayidx216 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom215, !dbg !4252
  %40 = load i64, i64* %arrayidx216, align 8, !dbg !4252
  call void @llvm.dbg.value(metadata i64 %40, metadata !4159, metadata !DIExpression()), !dbg !4223
  br label %sw.epilog, !dbg !4253

if.else217:                                       ; preds = %if.then199
  %call218 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !4254
  %idxprom219 = zext i32 %call218 to i64, !dbg !4256
  %arrayidx220 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom219, !dbg !4256
  %41 = load i32, i32* %arrayidx220, align 4, !dbg !4256
  %42 = load i32, i32* @move2add_last_label_luid, align 4, !dbg !4257
  %cmp221 = icmp sgt i32 %41, %42, !dbg !4258
  br i1 %cmp221, label %land.lhs.true223, label %invalidate, !dbg !4259

land.lhs.true223:                                 ; preds = %if.else217
  %43 = load i8, i8* %arrayidx165, align 1, !dbg !4260
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4260
  %call232 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %44) #7, !dbg !4260
  %idxprom233 = zext i32 %call232 to i64, !dbg !4260
  %arrayidx234 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom233, !dbg !4260
  %45 = load i32, i32* %arrayidx234, align 4, !dbg !4260
  %idxprom235 = zext i32 %45 to i64, !dbg !4260
  %arrayidx236 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom235, !dbg !4260
  %46 = load i8, i8* %arrayidx236, align 1, !dbg !4260
  %cmp239 = icmp eq i8 %43, %46, !dbg !4260
  br i1 %cmp239, label %land.lhs.true259, label %lor.lhs.false241, !dbg !4260

lor.lhs.false241:                                 ; preds = %land.lhs.true223
  %47 = load i8, i8* %arrayidx165, align 1, !dbg !4260
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4260
  %call250 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %48) #7, !dbg !4260
  %idxprom251 = zext i32 %call250 to i64, !dbg !4260
  %arrayidx252 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom251, !dbg !4260
  %49 = load i32, i32* %arrayidx252, align 4, !dbg !4260
  %idxprom253 = zext i32 %49 to i64, !dbg !4260
  %arrayidx254 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom253, !dbg !4260
  %50 = load i8, i8* %arrayidx254, align 1, !dbg !4260
  %cmp257 = icmp ugt i8 %47, %50, !dbg !4260
  br i1 %cmp257, label %invalidate, label %land.lhs.true259, !dbg !4261

land.lhs.true259:                                 ; preds = %lor.lhs.false241, %land.lhs.true223
  %call260 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !4262
  %idxprom261 = zext i32 %call260 to i64, !dbg !4263
  %arrayidx262 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom261, !dbg !4263
  %51 = load i32, i32* %arrayidx262, align 4, !dbg !4263
  %cmp263 = icmp slt i32 %51, 0, !dbg !4264
  br i1 %cmp263, label %if.then265, label %invalidate, !dbg !4265

if.then265:                                       ; preds = %land.lhs.true259
  %call266 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !4266
  %idxprom267 = zext i32 %call266 to i64, !dbg !4268
  %arrayidx268 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom267, !dbg !4268
  %52 = load i64, i64* %arrayidx268, align 8, !dbg !4268
  call void @llvm.dbg.value(metadata i64 %52, metadata !4159, metadata !DIExpression()), !dbg !4223
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx157, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata %struct.rtx_def* %53, metadata !4158, metadata !DIExpression()), !dbg !4223
  br label %sw.epilog

sw.bb281:                                         ; preds = %if.then107
  %idxprom282 = zext i32 %add to i64, !dbg !4270
  %arrayidx283 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom282, !dbg !4270
  store i32 -1, i32* %arrayidx283, align 4, !dbg !4271
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx111, align 8, !dbg !4272
  %u288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, !dbg !4272
  %arrayidx290 = bitcast %union.u* %u288 to i64*, !dbg !4272
  %55 = load i64, i64* %arrayidx290, align 8, !dbg !4272
  %arrayidx292 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom282, !dbg !4273
  store i64 %55, i64* %arrayidx292, align 8, !dbg !4274
  %56 = load i32, i32* @move2add_last_label_luid, align 4, !dbg !4275
  %add293 = add nsw i32 %56, 1, !dbg !4276
  %arrayidx295 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom282, !dbg !4277
  store i32 %add293, i32* %arrayidx295, align 4, !dbg !4278
  %arrayidx297 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom282, !dbg !4279
  store i32 %bf.clear, i32* %arrayidx297, align 4, !dbg !4280
  br label %cleanup, !dbg !4281

invalidate:                                       ; preds = %lor.lhs.false241, %lor.lhs.false181, %lor.lhs.false327, %if.then107, %sw.bb, %if.else, %land.lhs.true153, %if.else217, %land.lhs.true259
  call void @llvm.dbg.label(metadata !4164), !dbg !4282
  %idxprom298 = zext i32 %add to i64, !dbg !4283
  %arrayidx299 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom298, !dbg !4283
  store i32 0, i32* %arrayidx299, align 4, !dbg !4284
  br label %cleanup, !dbg !4285

sw.epilog:                                        ; preds = %if.then107, %if.then138, %if.then209, %if.then265
  %base_reg.2 = phi %struct.rtx_def* [ %21, %if.then138 ], [ %21, %if.then209 ], [ %53, %if.then265 ], [ %17, %if.then107 ], !dbg !4286
  %offset.2 = phi i64 [ %26, %if.then138 ], [ %40, %if.then209 ], [ %52, %if.then265 ], [ 0, %if.then107 ], !dbg !4286
  call void @llvm.dbg.value(metadata i64 %offset.2, metadata !4159, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata %struct.rtx_def* %base_reg.2, metadata !4158, metadata !DIExpression()), !dbg !4223
  %call300 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %base_reg.2) #7, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %call300, metadata !4160, metadata !DIExpression()), !dbg !4223
  %idxprom301 = sext i32 %call300 to i64, !dbg !4288
  %arrayidx302 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom301, !dbg !4288
  %57 = load i32, i32* %arrayidx302, align 4, !dbg !4288
  %58 = load i32, i32* @move2add_last_label_luid, align 4, !dbg !4290
  %cmp303 = icmp sgt i32 %57, %58, !dbg !4291
  br i1 %cmp303, label %if.else314, label %if.then305, !dbg !4292

if.then305:                                       ; preds = %sw.epilog
  %arrayidx307 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom301, !dbg !4293
  store i32 %call300, i32* %arrayidx307, align 4, !dbg !4295
  %arrayidx309 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom301, !dbg !4296
  store i64 0, i64* %arrayidx309, align 8, !dbg !4297
  %59 = load i32, i32* @move2add_luid, align 4, !dbg !4298
  store i32 %59, i32* %arrayidx302, align 4, !dbg !4299
  %arrayidx313 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom301, !dbg !4300
  store i32 %bf.clear, i32* %arrayidx313, align 4, !dbg !4301
  br label %if.end342, !dbg !4302

if.else314:                                       ; preds = %sw.epilog
  %arrayidx316 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom68, !dbg !4303
  %60 = load i8, i8* %arrayidx316, align 1, !dbg !4303
  %arrayidx320 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom301, !dbg !4303
  %61 = load i32, i32* %arrayidx320, align 4, !dbg !4303
  %idxprom321 = zext i32 %61 to i64, !dbg !4303
  %arrayidx322 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom321, !dbg !4303
  %62 = load i8, i8* %arrayidx322, align 1, !dbg !4303
  %cmp325 = icmp eq i8 %60, %62, !dbg !4303
  br i1 %cmp325, label %if.end342, label %lor.lhs.false327, !dbg !4303

lor.lhs.false327:                                 ; preds = %if.else314
  %cmp338 = icmp ugt i8 %60, %62, !dbg !4303
  br i1 %cmp338, label %invalidate, label %if.end342, !dbg !4305

if.end342:                                        ; preds = %lor.lhs.false327, %if.else314, %if.then305
  %63 = phi i32 [ %57, %lor.lhs.false327 ], [ %57, %if.else314 ], [ %59, %if.then305 ], !dbg !4306
  %idxprom343 = zext i32 %add to i64, !dbg !4307
  %arrayidx344 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_mode, i64 0, i64 %idxprom343, !dbg !4307
  store i32 %bf.clear, i32* %arrayidx344, align 4, !dbg !4308
  %arrayidx348 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %idxprom343, !dbg !4309
  store i32 %63, i32* %arrayidx348, align 4, !dbg !4310
  %arrayidx350 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom301, !dbg !4311
  %64 = load i32, i32* %arrayidx350, align 4, !dbg !4311
  %arrayidx352 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_base_reg, i64 0, i64 %idxprom343, !dbg !4312
  store i32 %64, i32* %arrayidx352, align 4, !dbg !4313
  %arrayidx354 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom301, !dbg !4314
  %65 = load i64, i64* %arrayidx354, align 8, !dbg !4314
  %add355 = add nsw i64 %offset.2, %65, !dbg !4315
  %call356 = tail call i64 @trunc_int_for_mode(i64 %add355, i32 %bf.clear67) #6, !dbg !4316
  %arrayidx358 = getelementptr inbounds [53 x i64], [53 x i64]* @reg_offset, i64 0, i64 %idxprom343, !dbg !4317
  store i64 %call356, i64* %arrayidx358, align 8, !dbg !4318
  br label %cleanup, !dbg !4319

cleanup:                                          ; preds = %if.end342, %invalidate, %sw.bb281
  ret void

if.else363:                                       ; preds = %land.lhs.true98, %land.lhs.true89, %land.lhs.true84, %land.lhs.true, %lor.lhs.false73
  %add364 = add i32 %add, %nregs.1, !dbg !4320
  call void @llvm.dbg.value(metadata i32 %add364, metadata !4162, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 %add, metadata !4153, metadata !DIExpression()), !dbg !4166
  %66 = zext i32 %add to i64, !dbg !4322
  %67 = zext i32 %add364 to i64, !dbg !4322
  br label %for.cond, !dbg !4322

for.cond:                                         ; preds = %for.body, %if.else363
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %66, %if.else363 ], !dbg !4324
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4153, metadata !DIExpression()), !dbg !4166
  %cmp365 = icmp ult i64 %indvars.iv, %67, !dbg !4325
  br i1 %cmp365, label %for.body, label %cleanup.cont375.loopexit, !dbg !4327

for.body:                                         ; preds = %for.cond
  %arrayidx368 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_set_luid, i64 0, i64 %indvars.iv, !dbg !4328
  store i32 0, i32* %arrayidx368, align 4, !dbg !4329
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4330
  br label %for.cond, !dbg !4331, !llvm.loop !4332

cleanup.cont375.loopexit:                         ; preds = %for.cond
  br label %cleanup.cont375, !dbg !4334

cleanup.cont375:                                  ; preds = %cleanup.cont375.loopexit, %if.then44, %lor.lhs.false40, %if.end52
  ret void, !dbg !4334
}

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @fis_get_condition(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @subreg_nregs(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local zeroext i8 @purge_all_dead_edges() local_unnamed_addr #2

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
!llvm.module.flags = !{!2064, !2065, !2066}
!llvm.ident = !{!2067}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_postreload_cse", scope: !2, file: !3, line: 1600, type: !2038, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !796, globals: !2000, nameTableKind: None)
!3 = !DIFile(filename: "postreload.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !391, !567, !710, !740, !774}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !135, line: 30, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !142, line: 363, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !142, line: 355, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !153, line: 474, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !158, line: 280, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !158, line: 1817, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !158, line: 1805, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !158, line: 39, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!192 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!289 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!290 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!291 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!292 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!293 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!294 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!295 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!296 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!298 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!300 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!301 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!302 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!303 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!304 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!305 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!307 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!308 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!309 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!310 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!311 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!312 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!313 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!314 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!316 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!317 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!318 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!320 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!321 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!323 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!324 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!325 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!326 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!327 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!328 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!329 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!330 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!331 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!332 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!333 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!334 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!335 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!337 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!338 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!339 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!340 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!341 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!342 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!343 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!358 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!359 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!361 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!377 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!378 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!379 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!380 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!381 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!382 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !385, line: 104, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390}
!387 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 74, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!394 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!566 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
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
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !153, line: 1188, baseType: !7, size: 32, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!712 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!713 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!714 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!715 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!716 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!717 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!718 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!719 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!720 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!721 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!722 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!723 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!724 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!725 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!726 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!727 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!728 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!729 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!730 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!731 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!732 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!733 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!734 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!735 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!736 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!737 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!738 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!739 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!740 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !568, line: 836, baseType: !7, size: 32, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!742 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!743 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!744 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!745 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!746 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!747 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!748 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!749 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!750 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!751 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!752 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!753 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!754 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!755 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!756 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!757 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!758 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!759 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!760 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!761 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!762 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!763 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!764 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!765 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!766 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!767 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!768 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!769 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!770 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!771 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!772 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!773 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!774 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !775, line: 36, baseType: !7, size: 32, elements: !776)
!775 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795}
!777 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!778 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!779 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!780 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!781 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!782 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!783 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!784 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!785 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!786 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!787 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!788 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!789 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!790 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!791 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!792 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!793 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!794 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!795 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!796 = !{!797, !798, !799, !800, !803, !804, !567, !806, !5, !1995, !1996, !1998, !740, !1999, !774}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!799 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !807, line: 50, baseType: !808)
!807 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !809, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !809, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !809, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !809, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !809, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !809, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !809, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !809, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !809, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !809, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !809, file: !568, line: 321, baseType: !822, size: 320, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !823)
!823 = !{!824, !1930, !1932, !1993, !1994}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !822, file: !568, line: 316, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 64, elements: !841)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !843, !844, !856, !880, !942, !1908, !1909, !1920, !1927}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !827, file: !568, line: 168, baseType: !799, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !827, file: !568, line: 169, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !827, file: !568, line: 170, baseType: !804, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !827, file: !568, line: 171, baseType: !806, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !827, file: !568, line: 172, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !807, line: 53, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !836, file: !568, line: 360, baseType: !799, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !836, file: !568, line: 361, baseType: !840, size: 64, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 64, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 1)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !827, file: !568, line: 173, baseType: !5, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !827, file: !568, line: 174, baseType: !845, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !846, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !846, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !846, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !846, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !846, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !846, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !846, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !846, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !827, file: !568, line: 175, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !859, line: 23, size: 320, elements: !860)
!859 = !DIFile(filename: "./cselib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!860 = !{!861, !862, !863, !864, !871, !879}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !858, file: !859, line: 25, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !858, file: !859, line: 28, baseType: !799, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "val_rtx", scope: !858, file: !859, line: 31, baseType: !806, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "locs", scope: !858, file: !859, line: 35, baseType: !865, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_loc_list", file: !859, line: 45, size: 192, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !859, line: 47, baseType: !865, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !866, file: !859, line: 49, baseType: !806, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "setting_insn", scope: !866, file: !859, line: 51, baseType: !806, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list", scope: !858, file: !859, line: 39, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_list", file: !859, line: 55, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !859, line: 56, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !873, file: !859, line: 57, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "cselib_val", file: !859, line: 42, baseType: !858)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next_containing_mem", scope: !858, file: !859, line: 41, baseType: !857, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !827, file: !568, line: 176, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !883, line: 75, size: 256, elements: !884)
!883 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!884 = !{!885, !900, !901, !902}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !882, file: !883, line: 76, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !883, line: 68, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !883, line: 63, size: 320, elements: !889)
!889 = !{!890, !892, !893, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !883, line: 64, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !888, file: !883, line: 65, baseType: !891, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !888, file: !883, line: 66, baseType: !7, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !888, file: !883, line: 67, baseType: !895, size: 128, offset: 192)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 128, elements: !898)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !883, line: 29, baseType: !897)
!897 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!898 = !{!899}
!899 = !DISubrange(count: 2)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !882, file: !883, line: 77, baseType: !886, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !882, file: !883, line: 78, baseType: !7, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !882, file: !883, line: 79, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !883, line: 49, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !883, line: 45, size: 832, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !905, file: !883, line: 46, baseType: !891, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !905, file: !883, line: 47, baseType: !881, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !905, file: !883, line: 48, baseType: !910, size: 704, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !911, line: 164, size: 704, elements: !912)
!911 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!912 = !{!913, !915, !925, !926, !927, !928, !929, !930, !934, !938, !939, !940, !941}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !910, file: !911, line: 166, baseType: !914, size: 64)
!914 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !910, file: !911, line: 167, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !911, line: 157, size: 192, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !917, file: !911, line: 159, baseType: !801, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !917, file: !911, line: 160, baseType: !916, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !917, file: !911, line: 161, baseType: !922, size: 32, offset: 128)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 32, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 4)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !910, file: !911, line: 168, baseType: !801, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !910, file: !911, line: 169, baseType: !801, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !910, file: !911, line: 170, baseType: !801, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !910, file: !911, line: 171, baseType: !914, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !910, file: !911, line: 172, baseType: !799, size: 32, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !910, file: !911, line: 176, baseType: !931, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!916, !803, !914}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !910, file: !911, line: 177, baseType: !935, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !803, !916}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !910, file: !911, line: 178, baseType: !803, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !910, file: !911, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !910, file: !911, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !910, file: !911, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !827, file: !568, line: 177, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !807, line: 56, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !946)
!946 = !{!947, !980, !986, !997, !1016, !1027, !1032, !1039, !1045, !1058, !1070, !1108, !1113, !1141, !1149, !1150, !1155, !1164, !1170, !1175, !1179, !1183, !1544, !1593, !1599, !1605, !1612, !1638, !1652, !1669, !1681, !1703, !1718, !1890}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !945, file: !158, line: 3372, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !948, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !948, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !948, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !948, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !948, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !948, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !948, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !948, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !948, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !948, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !948, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !948, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !948, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !948, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !948, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !948, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !948, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !948, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !948, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !948, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !948, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !948, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !948, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !948, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !948, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !948, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !948, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !948, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !948, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !948, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !945, file: !158, line: 3373, baseType: !981, size: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !981, file: !158, line: 403, baseType: !948, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !981, file: !158, line: 404, baseType: !943, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !981, file: !158, line: 405, baseType: !943, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !945, file: !158, line: 3374, baseType: !987, size: 320)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !158, line: 1385, baseType: !981, size: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !987, file: !158, line: 1386, baseType: !991, size: 128, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !992, line: 58, baseType: !993)
!992 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !992, line: 54, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !993, file: !992, line: 56, baseType: !897, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !993, file: !992, line: 57, baseType: !914, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !945, file: !158, line: 3375, baseType: !998, size: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !998, file: !158, line: 1398, baseType: !981, size: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !998, file: !158, line: 1399, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1004, line: 52, size: 256, elements: !1005)
!1004 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1003, file: !1004, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1003, file: !1004, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1003, file: !1004, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1003, file: !1004, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1003, file: !1004, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1003, file: !1004, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1003, file: !1004, line: 62, baseType: !1013, size: 192, offset: 64)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 192, elements: !1014)
!1014 = !{!1015}
!1015 = !DISubrange(count: 3)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !945, file: !158, line: 3376, baseType: !1017, size: 256)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1017, file: !158, line: 1409, baseType: !981, size: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1017, file: !158, line: 1410, baseType: !1021, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1023, line: 27, size: 192, elements: !1024)
!1023 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1022, file: !1023, line: 29, baseType: !991, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1022, file: !1023, line: 30, baseType: !5, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !945, file: !158, line: 3377, baseType: !1028, size: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1028, file: !158, line: 1438, baseType: !981, size: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1028, file: !158, line: 1439, baseType: !943, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !945, file: !158, line: 3378, baseType: !1033, size: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1033, file: !158, line: 1419, baseType: !981, size: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1033, file: !158, line: 1420, baseType: !799, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1033, file: !158, line: 1421, baseType: !1038, size: 8, offset: 224)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 8, elements: !841)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !945, file: !158, line: 3379, baseType: !1040, size: 320)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1040, file: !158, line: 1429, baseType: !981, size: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1040, file: !158, line: 1430, baseType: !943, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1040, file: !158, line: 1431, baseType: !943, size: 64, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !945, file: !158, line: 3380, baseType: !1046, size: 320)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1046, file: !158, line: 1461, baseType: !981, size: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1046, file: !158, line: 1462, baseType: !1050, size: 128, offset: 192)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1051, line: 31, size: 128, elements: !1052)
!1051 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1052 = !{!1053, !1056, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1050, file: !1051, line: 32, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1050, file: !1051, line: 33, baseType: !7, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1050, file: !1051, line: 34, baseType: !7, size: 32, offset: 96)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !945, file: !158, line: 3381, baseType: !1059, size: 384)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !1060)
!1060 = !{!1061, !1062, !1067, !1068, !1069}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1059, file: !158, line: 2508, baseType: !981, size: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1059, file: !158, line: 2509, baseType: !1063, size: 32, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1064, line: 58, baseType: !1065)
!1064 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1066, line: 44, baseType: !7)
!1066 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1059, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !158, line: 2511, baseType: !943, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1059, file: !158, line: 2512, baseType: !943, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !945, file: !158, line: 3382, baseType: !1071, size: 896)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !158, line: 2653, baseType: !1059, size: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1071, file: !158, line: 2654, baseType: !943, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1071, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1071, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1071, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1071, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1071, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1071, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1071, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1071, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1071, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1071, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1071, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1071, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1071, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1071, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1071, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1071, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1071, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1071, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1071, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1071, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1071, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1071, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1071, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1071, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1071, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1071, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1071, file: !158, line: 2705, baseType: !943, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1071, file: !158, line: 2706, baseType: !943, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1071, file: !158, line: 2707, baseType: !943, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1071, file: !158, line: 2708, baseType: !943, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1071, file: !158, line: 2711, baseType: !1106, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !945, file: !158, line: 3383, baseType: !1109, size: 960)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !158, line: 2757, baseType: !1071, size: 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1109, file: !158, line: 2758, baseType: !806, size: 64, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !945, file: !158, line: 3384, baseType: !1114, size: 1472)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !1115)
!1115 = !{!1116, !1137, !1138, !1139, !1140}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !158, line: 3115, baseType: !1117, size: 1216)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1117, file: !158, line: 2985, baseType: !1109, size: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1117, file: !158, line: 2986, baseType: !943, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1117, file: !158, line: 2987, baseType: !943, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1117, file: !158, line: 2988, baseType: !943, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1117, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1117, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1117, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1117, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1117, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1117, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1117, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1117, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1117, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1117, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1117, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1117, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1117, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1117, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1114, file: !158, line: 3117, baseType: !943, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1114, file: !158, line: 3119, baseType: !943, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1114, file: !158, line: 3121, baseType: !943, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1114, file: !158, line: 3123, baseType: !943, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !945, file: !158, line: 3385, baseType: !1142, size: 1088)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !158, line: 2875, baseType: !1109, size: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1142, file: !158, line: 2876, baseType: !806, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1142, file: !158, line: 2877, baseType: !1147, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !945, file: !158, line: 3386, baseType: !1117, size: 1216)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !945, file: !158, line: 3387, baseType: !1151, size: 1280)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1151, file: !158, line: 3094, baseType: !1117, size: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1151, file: !158, line: 3095, baseType: !1147, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !945, file: !158, line: 3388, baseType: !1156, size: 1216)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1156, file: !158, line: 2825, baseType: !1071, size: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1156, file: !158, line: 2827, baseType: !943, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1156, file: !158, line: 2828, baseType: !943, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1156, file: !158, line: 2829, baseType: !943, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1156, file: !158, line: 2830, baseType: !943, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1156, file: !158, line: 2831, baseType: !943, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !945, file: !158, line: 3389, baseType: !1165, size: 1024)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1165, file: !158, line: 2851, baseType: !1109, size: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1165, file: !158, line: 2852, baseType: !799, size: 32, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1165, file: !158, line: 2853, baseType: !799, size: 32, offset: 992)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !945, file: !158, line: 3390, baseType: !1171, size: 1024)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !158, line: 2858, baseType: !1109, size: 960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1171, file: !158, line: 2859, baseType: !1147, size: 64, offset: 960)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !945, file: !158, line: 3391, baseType: !1176, size: 960)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1176, file: !158, line: 2863, baseType: !1109, size: 960)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !945, file: !158, line: 3392, baseType: !1180, size: 1472)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1180, file: !158, line: 3305, baseType: !1114, size: 1472)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !945, file: !158, line: 3393, baseType: !1184, size: 1792)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !1185)
!1185 = !{!1186, !1187, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1184, file: !158, line: 3249, baseType: !1114, size: 1472)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1184, file: !158, line: 3251, baseType: !1188, size: 64, offset: 1472)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1190, line: 463, size: 1152, elements: !1191)
!1190 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1191 = !{!1192, !1356, !1460, !1461, !1464, !1467, !1468, !1469, !1470, !1471, !1472, !1496, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1189, file: !1190, line: 464, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !1195)
!1195 = !{!1196, !1245, !1258, !1272, !1324, !1337}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1194, file: !135, line: 197, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1233, !1242, !1243, !1244}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1199, file: !135, line: 119, baseType: !1198, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1199, file: !135, line: 122, baseType: !1198, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1199, file: !135, line: 123, baseType: !1198, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1199, file: !135, line: 126, baseType: !799, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1199, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1199, file: !135, line: 165, baseType: !1207, size: 192, offset: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !1208)
!1208 = !{!1209, !1222, !1228}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1207, file: !135, line: 137, baseType: !1210, size: 128)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !1211)
!1211 = !{!1212, !1221}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1210, file: !135, line: 135, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1214, file: !135, line: 96, baseType: !1213, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1214, file: !135, line: 97, baseType: !1213, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1214, file: !135, line: 101, baseType: !943, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1214, file: !135, line: 106, baseType: !943, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1214, file: !135, line: 111, baseType: !943, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1210, file: !135, line: 136, baseType: !1213, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1207, file: !135, line: 151, baseType: !1223, size: 192)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1224)
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1223, file: !135, line: 141, baseType: !943, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1223, file: !135, line: 145, baseType: !943, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1223, file: !135, line: 150, baseType: !799, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1207, file: !135, line: 164, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1229, file: !135, line: 161, baseType: !943, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1229, file: !135, line: 163, baseType: !1063, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1199, file: !135, line: 168, baseType: !1234, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1235, file: !135, line: 70, baseType: !1234, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1235, file: !135, line: 73, baseType: !1198, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1235, file: !135, line: 78, baseType: !943, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1235, file: !135, line: 85, baseType: !806, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1235, file: !135, line: 88, baseType: !799, size: 32, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1199, file: !135, line: 173, baseType: !806, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1199, file: !135, line: 173, baseType: !806, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1199, file: !135, line: 177, baseType: !798, size: 8, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1194, file: !135, line: 200, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1248, file: !135, line: 185, baseType: !1251, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1252, file: !135, line: 184, baseType: !7, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1252, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1252, file: !135, line: 184, baseType: !1257, size: 64, offset: 64)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 64, elements: !841)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1194, file: !135, line: 203, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !135, line: 189, baseType: !1264, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1265, file: !135, line: 188, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1265, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1265, file: !135, line: 188, baseType: !1270, size: 64, offset: 64)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 64, elements: !841)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1234)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1194, file: !135, line: 207, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1274, line: 144, baseType: !1275)
!1274 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1274, line: 100, size: 896, elements: !1277)
!1277 = !{!1278, !1286, !1291, !1296, !1298, !1301, !1302, !1303, !1304, !1305, !1310, !1312, !1313, !1318, !1323}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1276, file: !1274, line: 102, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1274, line: 52, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1274, line: 47, baseType: !7)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1276, file: !1274, line: 105, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1274, line: 59, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!799, !1284, !1284}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1276, file: !1274, line: 108, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1274, line: 63, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !803}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1276, file: !1274, line: 111, baseType: !1297, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1276, file: !1274, line: 114, baseType: !1299, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1300, line: 46, baseType: !897)
!1300 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1276, file: !1274, line: 117, baseType: !1299, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1276, file: !1274, line: 120, baseType: !1299, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1276, file: !1274, line: 124, baseType: !7, size: 32, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1276, file: !1274, line: 128, baseType: !7, size: 32, offset: 480)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1276, file: !1274, line: 131, baseType: !1306, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1274, line: 75, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!803, !1299, !1299}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1276, file: !1274, line: 132, baseType: !1311, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1274, line: 78, baseType: !1293)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1276, file: !1274, line: 135, baseType: !803, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1276, file: !1274, line: 136, baseType: !1314, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1274, line: 82, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!803, !803, !1299, !1299}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1276, file: !1274, line: 137, baseType: !1319, size: 64, offset: 768)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1274, line: 83, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !803, !803}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1276, file: !1274, line: 141, baseType: !7, size: 32, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1194, file: !135, line: 211, baseType: !1325, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1327, file: !158, line: 183, baseType: !1330, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1331, file: !158, line: 182, baseType: !7, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1331, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1331, file: !158, line: 182, baseType: !1336, size: 64, offset: 64)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 64, elements: !841)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1194, file: !135, line: 220, baseType: !1338, size: 64, offset: 320)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1338, file: !135, line: 218, baseType: !1325, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1338, file: !135, line: 219, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1344, line: 29, baseType: !1345)
!1344 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1344, line: 29, size: 96, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1345, file: !1344, line: 29, baseType: !1348, size: 96)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1344, line: 27, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1344, line: 27, size: 96, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1349, file: !1344, line: 27, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1349, file: !1344, line: 27, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1349, file: !1344, line: 27, baseType: !1354, size: 8, offset: 64)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 8, elements: !841)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1344, line: 26, baseType: !798)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1189, file: !1190, line: 467, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1359)
!1359 = !{!1360, !1435, !1436, !1449, !1450, !1451, !1452, !1453, !1454, !1456, !1458, !1459}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1358, file: !142, line: 377, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !807, line: 111, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !1364)
!1364 = !{!1365, !1400, !1401, !1402, !1405, !1409, !1410, !1411, !1429, !1430, !1431, !1432, !1433, !1434}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1363, file: !142, line: 219, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1368, file: !142, line: 151, baseType: !1371, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1372, file: !142, line: 150, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1372, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1372, file: !142, line: 150, baseType: !1377, size: 64, offset: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 64, elements: !841)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !807, line: 108, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1380, file: !142, line: 124, baseType: !1362, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1380, file: !142, line: 125, baseType: !1362, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1380, file: !142, line: 131, baseType: !1385, size: 64, offset: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !1386)
!1386 = !{!1387, !1391}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1385, file: !142, line: 129, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !807, line: 66, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !807, line: 65, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1385, file: !142, line: 130, baseType: !806, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1380, file: !142, line: 134, baseType: !803, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1380, file: !142, line: 137, baseType: !943, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1380, file: !142, line: 138, baseType: !1063, size: 32, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1380, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !142, line: 144, baseType: !799, size: 32, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1380, file: !142, line: 145, baseType: !799, size: 32, offset: 416)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1380, file: !142, line: 146, baseType: !1399, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !914)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1363, file: !142, line: 220, baseType: !1366, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1363, file: !142, line: 223, baseType: !803, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1363, file: !142, line: 226, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !142, line: 185, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1363, file: !142, line: 229, baseType: !1406, size: 128, offset: 256)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 128, elements: !898)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1363, file: !142, line: 232, baseType: !1362, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1363, file: !142, line: 233, baseType: !1362, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1363, file: !142, line: 238, baseType: !1412, size: 64, offset: 512)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1413)
!1413 = !{!1414, !1420}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1412, file: !142, line: 236, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1416, file: !142, line: 275, baseType: !1388, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1416, file: !142, line: 278, baseType: !1388, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1412, file: !142, line: 237, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1422, file: !142, line: 261, baseType: !806, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1422, file: !142, line: 262, baseType: !806, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1422, file: !142, line: 266, baseType: !806, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1422, file: !142, line: 267, baseType: !806, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1422, file: !142, line: 270, baseType: !799, size: 32, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1363, file: !142, line: 241, baseType: !1399, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1363, file: !142, line: 244, baseType: !799, size: 32, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1363, file: !142, line: 247, baseType: !799, size: 32, offset: 672)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1363, file: !142, line: 250, baseType: !799, size: 32, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1363, file: !142, line: 253, baseType: !799, size: 32, offset: 736)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1363, file: !142, line: 256, baseType: !799, size: 32, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1358, file: !142, line: 378, baseType: !1361, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1358, file: !142, line: 381, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1439, file: !142, line: 282, baseType: !1442, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1444)
!1444 = !{!1445, !1446, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1443, file: !142, line: 281, baseType: !7, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1443, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1443, file: !142, line: 281, baseType: !1448, size: 64, offset: 64)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 64, elements: !841)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1358, file: !142, line: 384, baseType: !799, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1358, file: !142, line: 387, baseType: !799, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1358, file: !142, line: 390, baseType: !799, size: 32, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1358, file: !142, line: 394, baseType: !1437, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1358, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1358, file: !142, line: 399, baseType: !1455, size: 64, offset: 416)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !898)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1358, file: !142, line: 402, baseType: !1457, size: 64, offset: 480)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !898)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1358, file: !142, line: 406, baseType: !799, size: 32, offset: 544)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1358, file: !142, line: 409, baseType: !799, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1189, file: !1190, line: 470, baseType: !1389, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1189, file: !1190, line: 473, baseType: !1462, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1190, line: 166, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1189, file: !1190, line: 476, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1190, line: 476, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1189, file: !1190, line: 479, baseType: !1273, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1189, file: !1190, line: 484, baseType: !943, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1189, file: !1190, line: 488, baseType: !943, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1189, file: !1190, line: 493, baseType: !943, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1189, file: !1190, line: 496, baseType: !943, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1189, file: !1190, line: 501, baseType: !1473, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1475)
!1475 = !{!1476, !1479, !1480, !1481, !1482, !1484, !1485, !1490, !1491, !1492, !1493, !1494, !1495}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1474, file: !153, line: 2356, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1474, file: !153, line: 2357, baseType: !804, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1474, file: !153, line: 2358, baseType: !799, size: 32, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1474, file: !153, line: 2359, baseType: !799, size: 32, offset: 160)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1474, file: !153, line: 2360, baseType: !1483, size: 128, offset: 192)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 128, elements: !923)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1474, file: !153, line: 2364, baseType: !799, size: 32, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1474, file: !153, line: 2367, baseType: !1486, size: 128, offset: 384)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1486, file: !153, line: 2351, baseType: !806, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1486, file: !153, line: 2352, baseType: !914, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1474, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1474, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1474, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1474, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1474, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1474, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1189, file: !1190, line: 504, baseType: !1497, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1190, line: 504, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1189, file: !1190, line: 507, baseType: !1273, size: 64, offset: 768)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1189, file: !1190, line: 510, baseType: !799, size: 32, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1189, file: !1190, line: 513, baseType: !799, size: 32, offset: 864)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1189, file: !1190, line: 516, baseType: !1063, size: 32, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1189, file: !1190, line: 519, baseType: !1063, size: 32, offset: 928)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1189, file: !1190, line: 522, baseType: !7, size: 32, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1189, file: !1190, line: 523, baseType: !7, size: 32, offset: 992)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1189, file: !1190, line: 528, baseType: !804, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1189, file: !1190, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1189, file: !1190, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1189, file: !1190, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1189, file: !1190, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1189, file: !1190, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1189, file: !1190, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1189, file: !1190, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1189, file: !1190, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1189, file: !1190, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1189, file: !1190, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1189, file: !1190, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1189, file: !1190, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1189, file: !1190, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1189, file: !1190, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1189, file: !1190, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1189, file: !1190, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1184, file: !158, line: 3254, baseType: !943, size: 64, offset: 1536)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1184, file: !158, line: 3257, baseType: !943, size: 64, offset: 1600)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1184, file: !158, line: 3258, baseType: !943, size: 64, offset: 1664)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1184, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1184, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1184, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1184, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1184, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1184, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1184, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1184, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1184, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1184, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1184, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1184, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1184, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1184, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1184, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1184, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1184, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1184, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !945, file: !158, line: 3394, baseType: !1545, size: 1344)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1572, !1573, !1574, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1545, file: !158, line: 2280, baseType: !981, size: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1545, file: !158, line: 2281, baseType: !943, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1545, file: !158, line: 2282, baseType: !943, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1545, file: !158, line: 2283, baseType: !943, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1545, file: !158, line: 2284, baseType: !943, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1545, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1545, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1545, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1545, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1545, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1545, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1545, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1545, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1545, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1545, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1545, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1545, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1545, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1545, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1545, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1545, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1545, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1545, file: !158, line: 2306, baseType: !1570, size: 32, offset: 544)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1571, line: 31, baseType: !799)
!1571 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1545, file: !158, line: 2307, baseType: !943, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1545, file: !158, line: 2308, baseType: !943, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1545, file: !158, line: 2314, baseType: !1575, size: 64, offset: 704)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1575, file: !158, line: 2310, baseType: !799, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1575, file: !158, line: 2311, baseType: !804, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1575, file: !158, line: 2312, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1545, file: !158, line: 2315, baseType: !943, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1545, file: !158, line: 2316, baseType: !943, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1545, file: !158, line: 2317, baseType: !943, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1545, file: !158, line: 2318, baseType: !943, size: 64, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1545, file: !158, line: 2319, baseType: !943, size: 64, offset: 1024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1545, file: !158, line: 2320, baseType: !943, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1545, file: !158, line: 2321, baseType: !943, size: 64, offset: 1152)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1545, file: !158, line: 2322, baseType: !943, size: 64, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1545, file: !158, line: 2324, baseType: !1591, size: 64, offset: 1280)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !945, file: !158, line: 3395, baseType: !1594, size: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1594, file: !158, line: 1470, baseType: !981, size: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1594, file: !158, line: 1471, baseType: !943, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1594, file: !158, line: 1472, baseType: !943, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !945, file: !158, line: 3396, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1600, file: !158, line: 1483, baseType: !981, size: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1600, file: !158, line: 1484, baseType: !799, size: 32, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1600, file: !158, line: 1485, baseType: !1336, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !945, file: !158, line: 3397, baseType: !1606, size: 384)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1606, file: !158, line: 1830, baseType: !981, size: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1606, file: !158, line: 1831, baseType: !1063, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1606, file: !158, line: 1832, baseType: !943, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1606, file: !158, line: 1835, baseType: !1336, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !945, file: !158, line: 3398, baseType: !1613, size: 704)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1621, !1622, !1625}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1613, file: !158, line: 1899, baseType: !981, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1613, file: !158, line: 1902, baseType: !943, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1613, file: !158, line: 1905, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !807, line: 58, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !807, line: 57, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1613, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1613, file: !158, line: 1911, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1613, file: !158, line: 1914, baseType: !1626, size: 256, offset: 448)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1627)
!1627 = !{!1628, !1630, !1631, !1636}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1626, file: !158, line: 1884, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1626, file: !158, line: 1885, baseType: !1629, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1626, file: !158, line: 1891, baseType: !1632, size: 64, offset: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !158, line: 1891, size: 64, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1632, file: !158, line: 1891, baseType: !1618, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1632, file: !158, line: 1891, baseType: !943, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1626, file: !158, line: 1892, baseType: !1637, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !945, file: !158, line: 3399, baseType: !1639, size: 704)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1639, file: !158, line: 2009, baseType: !981, size: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1639, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1639, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1639, file: !158, line: 2014, baseType: !1063, size: 32, offset: 224)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1639, file: !158, line: 2016, baseType: !943, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1639, file: !158, line: 2017, baseType: !1325, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1639, file: !158, line: 2019, baseType: !943, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1639, file: !158, line: 2020, baseType: !943, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1639, file: !158, line: 2021, baseType: !943, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1639, file: !158, line: 2022, baseType: !943, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1639, file: !158, line: 2023, baseType: !943, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !945, file: !158, line: 3400, baseType: !1653, size: 832)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1653, file: !158, line: 2431, baseType: !981, size: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1653, file: !158, line: 2433, baseType: !943, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1653, file: !158, line: 2434, baseType: !943, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1653, file: !158, line: 2435, baseType: !943, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1653, file: !158, line: 2436, baseType: !943, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1653, file: !158, line: 2437, baseType: !1325, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1653, file: !158, line: 2438, baseType: !943, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1653, file: !158, line: 2440, baseType: !943, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1653, file: !158, line: 2441, baseType: !943, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1653, file: !158, line: 2443, baseType: !1665, size: 128, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1666, file: !158, line: 182, baseType: !1330, size: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !945, file: !158, line: 3401, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1680}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1670, file: !158, line: 3329, baseType: !981, size: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1670, file: !158, line: 3330, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1675, file: !158, line: 3322, baseType: !1674, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1675, file: !158, line: 3323, baseType: !1674, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1675, file: !158, line: 3324, baseType: !943, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1670, file: !158, line: 3331, baseType: !1674, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !945, file: !158, line: 3402, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1682, file: !158, line: 1541, baseType: !981, size: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1682, file: !158, line: 1542, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1688, file: !158, line: 1538, baseType: !1691, size: 192)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1693)
!1693 = !{!1694, !1695, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1692, file: !158, line: 1537, baseType: !7, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1692, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1692, file: !158, line: 1537, baseType: !1697, size: 128, offset: 64)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1698, size: 128, elements: !841)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1699, file: !158, line: 1533, baseType: !943, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1699, file: !158, line: 1534, baseType: !943, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !945, file: !158, line: 3403, baseType: !1704, size: 512)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1715, !1716, !1717}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1704, file: !158, line: 1939, baseType: !981, size: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1704, file: !158, line: 1940, baseType: !1063, size: 32, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1704, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1704, file: !158, line: 1946, baseType: !1710, size: 32, offset: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1711)
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1710, file: !158, line: 1943, baseType: !176, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1710, file: !158, line: 1944, baseType: !183, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1710, file: !158, line: 1945, baseType: !190, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1704, file: !158, line: 1950, baseType: !1388, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1704, file: !158, line: 1951, baseType: !1388, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1704, file: !158, line: 1953, baseType: !1336, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !945, file: !158, line: 3404, baseType: !1719, size: 1664)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1719, file: !158, line: 3338, baseType: !981, size: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1719, file: !158, line: 3341, baseType: !1723, size: 1472, offset: 192)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1724, line: 410, size: 1472, elements: !1725)
!1724 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1723, file: !1724, line: 412, baseType: !799, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1723, file: !1724, line: 413, baseType: !799, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1723, file: !1724, line: 414, baseType: !799, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1723, file: !1724, line: 415, baseType: !799, size: 32, offset: 96)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1723, file: !1724, line: 416, baseType: !799, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1723, file: !1724, line: 417, baseType: !799, size: 32, offset: 160)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1723, file: !1724, line: 418, baseType: !798, size: 8, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1723, file: !1724, line: 419, baseType: !798, size: 8, offset: 200)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1723, file: !1724, line: 420, baseType: !1735, size: 8, offset: 208)
!1735 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1723, file: !1724, line: 421, baseType: !1735, size: 8, offset: 216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1723, file: !1724, line: 422, baseType: !1735, size: 8, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1723, file: !1724, line: 423, baseType: !1735, size: 8, offset: 232)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1723, file: !1724, line: 424, baseType: !1735, size: 8, offset: 240)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1723, file: !1724, line: 425, baseType: !1735, size: 8, offset: 248)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1723, file: !1724, line: 426, baseType: !1735, size: 8, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1723, file: !1724, line: 427, baseType: !1735, size: 8, offset: 264)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1723, file: !1724, line: 428, baseType: !1735, size: 8, offset: 272)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1723, file: !1724, line: 429, baseType: !1735, size: 8, offset: 280)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1723, file: !1724, line: 430, baseType: !1735, size: 8, offset: 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1723, file: !1724, line: 431, baseType: !1735, size: 8, offset: 296)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1723, file: !1724, line: 432, baseType: !1735, size: 8, offset: 304)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1723, file: !1724, line: 433, baseType: !1735, size: 8, offset: 312)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1723, file: !1724, line: 434, baseType: !1735, size: 8, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1723, file: !1724, line: 435, baseType: !1735, size: 8, offset: 328)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1723, file: !1724, line: 436, baseType: !1735, size: 8, offset: 336)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1723, file: !1724, line: 437, baseType: !1735, size: 8, offset: 344)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1723, file: !1724, line: 438, baseType: !1735, size: 8, offset: 352)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1723, file: !1724, line: 439, baseType: !1735, size: 8, offset: 360)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1723, file: !1724, line: 440, baseType: !1735, size: 8, offset: 368)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1723, file: !1724, line: 441, baseType: !1735, size: 8, offset: 376)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1723, file: !1724, line: 442, baseType: !1735, size: 8, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1723, file: !1724, line: 443, baseType: !1735, size: 8, offset: 392)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1723, file: !1724, line: 444, baseType: !1735, size: 8, offset: 400)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1723, file: !1724, line: 445, baseType: !1735, size: 8, offset: 408)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1723, file: !1724, line: 446, baseType: !1735, size: 8, offset: 416)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1723, file: !1724, line: 447, baseType: !1735, size: 8, offset: 424)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1723, file: !1724, line: 448, baseType: !1735, size: 8, offset: 432)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1723, file: !1724, line: 449, baseType: !1735, size: 8, offset: 440)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1723, file: !1724, line: 450, baseType: !1735, size: 8, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1723, file: !1724, line: 451, baseType: !1735, size: 8, offset: 456)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1723, file: !1724, line: 452, baseType: !1735, size: 8, offset: 464)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1723, file: !1724, line: 453, baseType: !1735, size: 8, offset: 472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1723, file: !1724, line: 454, baseType: !1735, size: 8, offset: 480)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1723, file: !1724, line: 455, baseType: !1735, size: 8, offset: 488)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1723, file: !1724, line: 456, baseType: !1735, size: 8, offset: 496)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1723, file: !1724, line: 457, baseType: !1735, size: 8, offset: 504)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1723, file: !1724, line: 458, baseType: !1735, size: 8, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1723, file: !1724, line: 459, baseType: !1735, size: 8, offset: 520)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1723, file: !1724, line: 460, baseType: !1735, size: 8, offset: 528)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1723, file: !1724, line: 461, baseType: !1735, size: 8, offset: 536)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1723, file: !1724, line: 462, baseType: !1735, size: 8, offset: 544)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1723, file: !1724, line: 463, baseType: !1735, size: 8, offset: 552)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1723, file: !1724, line: 464, baseType: !1735, size: 8, offset: 560)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1723, file: !1724, line: 465, baseType: !1735, size: 8, offset: 568)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1723, file: !1724, line: 466, baseType: !1735, size: 8, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1723, file: !1724, line: 467, baseType: !1735, size: 8, offset: 584)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1723, file: !1724, line: 468, baseType: !1735, size: 8, offset: 592)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1723, file: !1724, line: 469, baseType: !1735, size: 8, offset: 600)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1723, file: !1724, line: 470, baseType: !1735, size: 8, offset: 608)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1723, file: !1724, line: 471, baseType: !1735, size: 8, offset: 616)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1723, file: !1724, line: 472, baseType: !1735, size: 8, offset: 624)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1723, file: !1724, line: 473, baseType: !1735, size: 8, offset: 632)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1723, file: !1724, line: 474, baseType: !1735, size: 8, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1723, file: !1724, line: 475, baseType: !1735, size: 8, offset: 648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1723, file: !1724, line: 476, baseType: !1735, size: 8, offset: 656)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1723, file: !1724, line: 477, baseType: !1735, size: 8, offset: 664)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1723, file: !1724, line: 478, baseType: !1735, size: 8, offset: 672)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1723, file: !1724, line: 479, baseType: !1735, size: 8, offset: 680)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1723, file: !1724, line: 480, baseType: !1735, size: 8, offset: 688)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1723, file: !1724, line: 481, baseType: !1735, size: 8, offset: 696)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1723, file: !1724, line: 482, baseType: !1735, size: 8, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1723, file: !1724, line: 483, baseType: !1735, size: 8, offset: 712)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1723, file: !1724, line: 484, baseType: !1735, size: 8, offset: 720)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1723, file: !1724, line: 485, baseType: !1735, size: 8, offset: 728)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1723, file: !1724, line: 486, baseType: !1735, size: 8, offset: 736)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1723, file: !1724, line: 487, baseType: !1735, size: 8, offset: 744)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1723, file: !1724, line: 488, baseType: !1735, size: 8, offset: 752)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1723, file: !1724, line: 489, baseType: !1735, size: 8, offset: 760)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1723, file: !1724, line: 490, baseType: !1735, size: 8, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1723, file: !1724, line: 491, baseType: !1735, size: 8, offset: 776)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1723, file: !1724, line: 492, baseType: !1735, size: 8, offset: 784)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1723, file: !1724, line: 493, baseType: !1735, size: 8, offset: 792)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1723, file: !1724, line: 494, baseType: !1735, size: 8, offset: 800)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1723, file: !1724, line: 495, baseType: !1735, size: 8, offset: 808)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1723, file: !1724, line: 496, baseType: !1735, size: 8, offset: 816)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1723, file: !1724, line: 497, baseType: !1735, size: 8, offset: 824)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1723, file: !1724, line: 498, baseType: !1735, size: 8, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1723, file: !1724, line: 499, baseType: !1735, size: 8, offset: 840)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1723, file: !1724, line: 500, baseType: !1735, size: 8, offset: 848)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1723, file: !1724, line: 501, baseType: !1735, size: 8, offset: 856)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1723, file: !1724, line: 502, baseType: !1735, size: 8, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1723, file: !1724, line: 503, baseType: !1735, size: 8, offset: 872)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1723, file: !1724, line: 504, baseType: !1735, size: 8, offset: 880)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1723, file: !1724, line: 505, baseType: !1735, size: 8, offset: 888)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1723, file: !1724, line: 506, baseType: !1735, size: 8, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1723, file: !1724, line: 507, baseType: !1735, size: 8, offset: 904)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1723, file: !1724, line: 508, baseType: !1735, size: 8, offset: 912)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1723, file: !1724, line: 509, baseType: !1735, size: 8, offset: 920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1723, file: !1724, line: 510, baseType: !1735, size: 8, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1723, file: !1724, line: 511, baseType: !1735, size: 8, offset: 936)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1723, file: !1724, line: 512, baseType: !1735, size: 8, offset: 944)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1723, file: !1724, line: 513, baseType: !1735, size: 8, offset: 952)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1723, file: !1724, line: 514, baseType: !1735, size: 8, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1723, file: !1724, line: 515, baseType: !1735, size: 8, offset: 968)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1723, file: !1724, line: 516, baseType: !1735, size: 8, offset: 976)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1723, file: !1724, line: 517, baseType: !1735, size: 8, offset: 984)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1723, file: !1724, line: 518, baseType: !1735, size: 8, offset: 992)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1723, file: !1724, line: 519, baseType: !1735, size: 8, offset: 1000)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1723, file: !1724, line: 520, baseType: !1735, size: 8, offset: 1008)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1723, file: !1724, line: 521, baseType: !1735, size: 8, offset: 1016)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1723, file: !1724, line: 522, baseType: !1735, size: 8, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1723, file: !1724, line: 523, baseType: !1735, size: 8, offset: 1032)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1723, file: !1724, line: 524, baseType: !1735, size: 8, offset: 1040)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1723, file: !1724, line: 525, baseType: !1735, size: 8, offset: 1048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1723, file: !1724, line: 526, baseType: !1735, size: 8, offset: 1056)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1723, file: !1724, line: 527, baseType: !1735, size: 8, offset: 1064)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1723, file: !1724, line: 528, baseType: !1735, size: 8, offset: 1072)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1723, file: !1724, line: 529, baseType: !1735, size: 8, offset: 1080)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1723, file: !1724, line: 530, baseType: !1735, size: 8, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1723, file: !1724, line: 531, baseType: !1735, size: 8, offset: 1096)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1723, file: !1724, line: 532, baseType: !1735, size: 8, offset: 1104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1723, file: !1724, line: 533, baseType: !1735, size: 8, offset: 1112)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1723, file: !1724, line: 534, baseType: !1735, size: 8, offset: 1120)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1723, file: !1724, line: 535, baseType: !1735, size: 8, offset: 1128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1723, file: !1724, line: 536, baseType: !1735, size: 8, offset: 1136)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1723, file: !1724, line: 537, baseType: !1735, size: 8, offset: 1144)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1723, file: !1724, line: 538, baseType: !1735, size: 8, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1723, file: !1724, line: 539, baseType: !1735, size: 8, offset: 1160)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1723, file: !1724, line: 540, baseType: !1735, size: 8, offset: 1168)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1723, file: !1724, line: 541, baseType: !1735, size: 8, offset: 1176)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1723, file: !1724, line: 542, baseType: !1735, size: 8, offset: 1184)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1723, file: !1724, line: 543, baseType: !1735, size: 8, offset: 1192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1723, file: !1724, line: 544, baseType: !1735, size: 8, offset: 1200)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1723, file: !1724, line: 545, baseType: !1735, size: 8, offset: 1208)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1723, file: !1724, line: 546, baseType: !1735, size: 8, offset: 1216)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1723, file: !1724, line: 547, baseType: !1735, size: 8, offset: 1224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1723, file: !1724, line: 548, baseType: !1735, size: 8, offset: 1232)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1723, file: !1724, line: 549, baseType: !1735, size: 8, offset: 1240)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1723, file: !1724, line: 550, baseType: !1735, size: 8, offset: 1248)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1723, file: !1724, line: 551, baseType: !1735, size: 8, offset: 1256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1723, file: !1724, line: 552, baseType: !1735, size: 8, offset: 1264)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1723, file: !1724, line: 553, baseType: !1735, size: 8, offset: 1272)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1723, file: !1724, line: 554, baseType: !1735, size: 8, offset: 1280)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1723, file: !1724, line: 555, baseType: !1735, size: 8, offset: 1288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1723, file: !1724, line: 556, baseType: !1735, size: 8, offset: 1296)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1723, file: !1724, line: 557, baseType: !1735, size: 8, offset: 1304)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1723, file: !1724, line: 558, baseType: !1735, size: 8, offset: 1312)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1723, file: !1724, line: 559, baseType: !1735, size: 8, offset: 1320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1723, file: !1724, line: 560, baseType: !1735, size: 8, offset: 1328)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1723, file: !1724, line: 561, baseType: !1735, size: 8, offset: 1336)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1723, file: !1724, line: 562, baseType: !1735, size: 8, offset: 1344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1723, file: !1724, line: 563, baseType: !1735, size: 8, offset: 1352)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1723, file: !1724, line: 564, baseType: !1735, size: 8, offset: 1360)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1723, file: !1724, line: 565, baseType: !1735, size: 8, offset: 1368)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1723, file: !1724, line: 566, baseType: !1735, size: 8, offset: 1376)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1723, file: !1724, line: 567, baseType: !1735, size: 8, offset: 1384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1723, file: !1724, line: 568, baseType: !1735, size: 8, offset: 1392)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1723, file: !1724, line: 569, baseType: !1735, size: 8, offset: 1400)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1723, file: !1724, line: 570, baseType: !1735, size: 8, offset: 1408)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1723, file: !1724, line: 571, baseType: !1735, size: 8, offset: 1416)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1723, file: !1724, line: 572, baseType: !1735, size: 8, offset: 1424)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1723, file: !1724, line: 573, baseType: !1735, size: 8, offset: 1432)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1723, file: !1724, line: 574, baseType: !1735, size: 8, offset: 1440)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !945, file: !158, line: 3405, baseType: !1891, size: 384)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1891, file: !158, line: 3353, baseType: !981, size: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1891, file: !158, line: 3356, baseType: !1895, size: 192, offset: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1724, line: 578, size: 192, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1895, file: !1724, line: 580, baseType: !799, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1895, file: !1724, line: 581, baseType: !799, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1895, file: !1724, line: 582, baseType: !799, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1895, file: !1724, line: 583, baseType: !799, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1895, file: !1724, line: 584, baseType: !798, size: 8, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1895, file: !1724, line: 585, baseType: !798, size: 8, offset: 136)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1895, file: !1724, line: 586, baseType: !798, size: 8, offset: 144)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1895, file: !1724, line: 587, baseType: !798, size: 8, offset: 152)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1895, file: !1724, line: 588, baseType: !798, size: 8, offset: 160)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1895, file: !1724, line: 589, baseType: !798, size: 8, offset: 168)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1895, file: !1724, line: 590, baseType: !798, size: 8, offset: 176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !827, file: !568, line: 178, baseType: !1362, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !827, file: !568, line: 179, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1912, file: !568, line: 144, baseType: !943, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1912, file: !568, line: 145, baseType: !806, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1912, file: !568, line: 146, baseType: !806, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1912, file: !568, line: 147, baseType: !1570, size: 32, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1912, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1912, file: !568, line: 149, baseType: !798, size: 8, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !827, file: !568, line: 180, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1923, file: !568, line: 160, baseType: !943, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1923, file: !568, line: 161, baseType: !914, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !827, file: !568, line: 181, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !822, file: !568, line: 317, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 64, elements: !841)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !822, file: !568, line: 318, baseType: !1933, size: 320)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1934)
!1934 = !{!1935, !1937, !1992}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1933, file: !568, line: 190, baseType: !1936, size: 192)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 192, elements: !1014)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1933, file: !568, line: 193, baseType: !1938, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1940)
!1940 = !{!1941, !1977, !1978, !1979, !1991}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1939, file: !568, line: 208, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !807, line: 62, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1945, line: 538, size: 256, elements: !1946)
!1945 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1946 = !{!1947, !1951, !1957, !1968}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1944, file: !1945, line: 539, baseType: !1948, size: 32)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1945, line: 482, size: 32, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1945, line: 484, baseType: !7, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1944, file: !1945, line: 540, baseType: !1952, size: 192)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1945, line: 488, size: 192, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1952, file: !1945, line: 489, baseType: !1948, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !1945, line: 492, baseType: !804, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1952, file: !1945, line: 496, baseType: !943, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1944, file: !1945, line: 541, baseType: !1958, size: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1945, line: 504, size: 256, elements: !1959)
!1959 = !{!1960, !1961, !1966, !1967}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1958, file: !1945, line: 505, baseType: !1948, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1958, file: !1945, line: 509, baseType: !1962, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1945, line: 501, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1284}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1958, file: !1945, line: 510, baseType: !1284, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !1945, line: 513, baseType: !1942, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1944, file: !1945, line: 542, baseType: !1969, size: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1945, line: 530, size: 128, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1969, file: !1945, line: 531, baseType: !1948, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1969, file: !1945, line: 534, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1945, line: 525, baseType: !1974)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!798, !943, !804, !897, !897}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1939, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1939, file: !568, line: 214, baseType: !914, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1939, file: !568, line: 224, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1982, file: !568, line: 202, baseType: !1985, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1986, file: !568, line: 200, baseType: !7, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1986, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1986, file: !568, line: 200, baseType: !840, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1939, file: !568, line: 234, baseType: !1980, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1933, file: !568, line: 197, baseType: !914, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !822, file: !568, line: 319, baseType: !1003, size: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !822, file: !568, line: 320, baseType: !1022, size: 192)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1997, line: 42, baseType: !897)
!1997 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1999 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2000 = !{!0, !2001, !2003, !2023, !2026, !2028, !2030, !2033, !2035}
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "reload_combine_ruid", scope: !2, file: !3, line: 692, type: !799, isLocal: true, isDefinition: true)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(name: "reg_state", scope: !2, file: !3, line: 687, type: !2005, isLocal: true, isDefinition: true)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2006, size: 50880, elements: !2021)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 680, size: 960, elements: !2007)
!2007 = !{!2008, !2017, !2018, !2019, !2020}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "reg_use", scope: !2006, file: !3, line: 682, baseType: !2009, size: 768)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2010, size: 768, elements: !2015)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_use", file: !3, line: 667, size: 128, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2010, file: !3, line: 667, baseType: !806, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "usep", scope: !2010, file: !3, line: 667, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!2015 = !{!2016}
!2016 = !DISubrange(count: 6)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "use_index", scope: !2006, file: !3, line: 683, baseType: !799, size: 32, offset: 768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2006, file: !3, line: 684, baseType: !806, size: 64, offset: 832)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "store_ruid", scope: !2006, file: !3, line: 685, baseType: !799, size: 32, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "use_ruid", scope: !2006, file: !3, line: 686, baseType: !799, size: 32, offset: 928)
!2021 = !{!2022}
!2022 = !DISubrange(count: 53)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(name: "reg_set_luid", scope: !2, file: !3, line: 1165, type: !2025, isLocal: true, isDefinition: true)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 1696, elements: !2021)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(name: "move2add_last_label_luid", scope: !2, file: !3, line: 1183, type: !799, isLocal: true, isDefinition: true)
!2028 = !DIGlobalVariableExpression(var: !2029, expr: !DIExpression())
!2029 = distinct !DIGlobalVariable(name: "move2add_luid", scope: !2, file: !3, line: 1179, type: !799, isLocal: true, isDefinition: true)
!2030 = !DIGlobalVariableExpression(var: !2031, expr: !DIExpression())
!2031 = distinct !DIGlobalVariable(name: "reg_mode", scope: !2, file: !3, line: 1174, type: !2032, isLocal: true, isDefinition: true)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1696, elements: !2021)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(name: "reg_base_reg", scope: !2, file: !3, line: 1173, type: !2025, isLocal: true, isDefinition: true)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(name: "reg_offset", scope: !2, file: !3, line: 1172, type: !2037, isLocal: true, isDefinition: true)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 3392, elements: !2021)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !385, line: 162, size: 640, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2038, file: !385, line: 164, baseType: !2041, size: 640)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !385, line: 114, size: 640, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2049, !2053, !2055, !2056, !2057, !2059, !2060, !2061, !2062, !2063}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2041, file: !385, line: 117, baseType: !384, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2041, file: !385, line: 121, baseType: !804, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2041, file: !385, line: 125, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!798}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2041, file: !385, line: 130, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!7}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2041, file: !385, line: 133, baseType: !2054, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2041, file: !385, line: 136, baseType: !2054, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2041, file: !385, line: 139, baseType: !799, size: 32, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2041, file: !385, line: 143, baseType: !2058, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !392, line: 80, baseType: !391)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2041, file: !385, line: 146, baseType: !7, size: 32, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2041, file: !385, line: 147, baseType: !7, size: 32, offset: 480)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2041, file: !385, line: 148, baseType: !7, size: 32, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2041, file: !385, line: 151, baseType: !7, size: 32, offset: 544)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2041, file: !385, line: 152, baseType: !7, size: 32, offset: 576)
!2064 = !{i32 2, !"Dwarf Version", i32 4}
!2065 = !{i32 2, !"Debug Info Version", i32 3}
!2066 = !{i32 1, !"wchar_size", i32 4}
!2067 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2068 = distinct !DISubprogram(name: "vprintf", scope: !2069, file: !2069, line: 39, type: !2070, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2069 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!799, !2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !804)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2074, file: !3, baseType: !7, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2074, file: !3, baseType: !7, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2074, file: !3, baseType: !803, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2074, file: !3, baseType: !803, size: 64, offset: 128)
!2080 = !{!2081, !2082}
!2081 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2068, file: !2069, line: 39, type: !2072)
!2082 = !DILocalVariable(name: "__arg", arg: 2, scope: !2068, file: !2069, line: 39, type: !2073)
!2083 = !DILocation(line: 0, scope: !2068)
!2084 = !DILocation(line: 41, column: 20, scope: !2068)
!2085 = !DILocation(line: 41, column: 10, scope: !2068)
!2086 = !DILocation(line: 41, column: 3, scope: !2068)
!2087 = distinct !DISubprogram(name: "getchar", scope: !2069, file: !2069, line: 47, type: !2088, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!799}
!2090 = !{}
!2091 = !DILocation(line: 49, column: 16, scope: !2087)
!2092 = !DILocation(line: 49, column: 10, scope: !2087)
!2093 = !DILocation(line: 49, column: 3, scope: !2087)
!2094 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2069, file: !2069, line: 56, type: !2095, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!799, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2099, line: 7, baseType: !2100)
!2099 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2101, line: 49, size: 1728, elements: !2102)
!2101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2118, !2120, !2121, !2122, !2125, !2126, !2127, !2128, !2131, !2133, !2136, !2139, !2140, !2141, !2142, !2143}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2100, file: !2101, line: 51, baseType: !799, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2100, file: !2101, line: 54, baseType: !801, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2100, file: !2101, line: 55, baseType: !801, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2100, file: !2101, line: 56, baseType: !801, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2100, file: !2101, line: 57, baseType: !801, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2100, file: !2101, line: 58, baseType: !801, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2100, file: !2101, line: 59, baseType: !801, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2100, file: !2101, line: 60, baseType: !801, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2100, file: !2101, line: 61, baseType: !801, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2100, file: !2101, line: 64, baseType: !801, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2100, file: !2101, line: 65, baseType: !801, size: 64, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2100, file: !2101, line: 66, baseType: !801, size: 64, offset: 704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2100, file: !2101, line: 68, baseType: !2116, size: 64, offset: 768)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2101, line: 36, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2100, file: !2101, line: 70, baseType: !2119, size: 64, offset: 832)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2100, file: !2101, line: 72, baseType: !799, size: 32, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2100, file: !2101, line: 73, baseType: !799, size: 32, offset: 928)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2100, file: !2101, line: 74, baseType: !2123, size: 64, offset: 960)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2124, line: 152, baseType: !914)
!2124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2100, file: !2101, line: 77, baseType: !1999, size: 16, offset: 1024)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2100, file: !2101, line: 78, baseType: !1735, size: 8, offset: 1040)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2100, file: !2101, line: 79, baseType: !1038, size: 8, offset: 1048)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2100, file: !2101, line: 81, baseType: !2129, size: 64, offset: 1088)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2101, line: 43, baseType: null)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2100, file: !2101, line: 89, baseType: !2132, size: 64, offset: 1152)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2124, line: 153, baseType: !914)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2100, file: !2101, line: 91, baseType: !2134, size: 64, offset: 1216)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2101, line: 37, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2100, file: !2101, line: 92, baseType: !2137, size: 64, offset: 1280)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2101, line: 38, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2100, file: !2101, line: 93, baseType: !2119, size: 64, offset: 1344)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2100, file: !2101, line: 94, baseType: !803, size: 64, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2100, file: !2101, line: 95, baseType: !1299, size: 64, offset: 1472)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2100, file: !2101, line: 96, baseType: !799, size: 32, offset: 1536)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2100, file: !2101, line: 98, baseType: !2144, size: 160, offset: 1568)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 160, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 20)
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "__fp", arg: 1, scope: !2094, file: !2069, line: 56, type: !2097)
!2149 = !DILocation(line: 0, scope: !2094)
!2150 = !DILocation(line: 58, column: 10, scope: !2094)
!2151 = !DILocation(line: 58, column: 3, scope: !2094)
!2152 = distinct !DISubprogram(name: "getc_unlocked", scope: !2069, file: !2069, line: 66, type: !2095, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "__fp", arg: 1, scope: !2152, file: !2069, line: 66, type: !2097)
!2155 = !DILocation(line: 0, scope: !2152)
!2156 = !DILocation(line: 68, column: 10, scope: !2152)
!2157 = !DILocation(line: 68, column: 3, scope: !2152)
!2158 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2069, file: !2069, line: 73, type: !2088, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2159 = !DILocation(line: 75, column: 10, scope: !2158)
!2160 = !DILocation(line: 75, column: 3, scope: !2158)
!2161 = distinct !DISubprogram(name: "putchar", scope: !2069, file: !2069, line: 82, type: !2162, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!799, !799}
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__c", arg: 1, scope: !2161, file: !2069, line: 82, type: !799)
!2166 = !DILocation(line: 0, scope: !2161)
!2167 = !DILocation(line: 84, column: 21, scope: !2161)
!2168 = !DILocation(line: 84, column: 10, scope: !2161)
!2169 = !DILocation(line: 84, column: 3, scope: !2161)
!2170 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2069, file: !2069, line: 91, type: !2171, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!799, !799, !2097}
!2173 = !{!2174, !2175}
!2174 = !DILocalVariable(name: "__c", arg: 1, scope: !2170, file: !2069, line: 91, type: !799)
!2175 = !DILocalVariable(name: "__stream", arg: 2, scope: !2170, file: !2069, line: 91, type: !2097)
!2176 = !DILocation(line: 0, scope: !2170)
!2177 = !DILocation(line: 93, column: 10, scope: !2170)
!2178 = !DILocation(line: 93, column: 3, scope: !2170)
!2179 = distinct !DISubprogram(name: "putc_unlocked", scope: !2069, file: !2069, line: 101, type: !2171, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "__c", arg: 1, scope: !2179, file: !2069, line: 101, type: !799)
!2182 = !DILocalVariable(name: "__stream", arg: 2, scope: !2179, file: !2069, line: 101, type: !2097)
!2183 = !DILocation(line: 0, scope: !2179)
!2184 = !DILocation(line: 103, column: 10, scope: !2179)
!2185 = !DILocation(line: 103, column: 3, scope: !2179)
!2186 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2069, file: !2069, line: 108, type: !2162, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "__c", arg: 1, scope: !2186, file: !2069, line: 108, type: !799)
!2189 = !DILocation(line: 0, scope: !2186)
!2190 = !DILocation(line: 110, column: 10, scope: !2186)
!2191 = !DILocation(line: 110, column: 3, scope: !2186)
!2192 = distinct !DISubprogram(name: "getline", scope: !2069, file: !2069, line: 118, type: !2193, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!2195, !800, !2196, !2097}
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2124, line: 193, baseType: !914)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!2197 = !{!2198, !2199, !2200}
!2198 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2192, file: !2069, line: 118, type: !800)
!2199 = !DILocalVariable(name: "__n", arg: 2, scope: !2192, file: !2069, line: 118, type: !2196)
!2200 = !DILocalVariable(name: "__stream", arg: 3, scope: !2192, file: !2069, line: 118, type: !2097)
!2201 = !DILocation(line: 0, scope: !2192)
!2202 = !DILocation(line: 120, column: 10, scope: !2192)
!2203 = !DILocation(line: 120, column: 3, scope: !2192)
!2204 = distinct !DISubprogram(name: "feof_unlocked", scope: !2069, file: !2069, line: 128, type: !2095, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2205 = !{!2206}
!2206 = !DILocalVariable(name: "__stream", arg: 1, scope: !2204, file: !2069, line: 128, type: !2097)
!2207 = !DILocation(line: 0, scope: !2204)
!2208 = !DILocation(line: 130, column: 10, scope: !2204)
!2209 = !DILocation(line: 130, column: 3, scope: !2204)
!2210 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2069, file: !2069, line: 135, type: !2095, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2211 = !{!2212}
!2212 = !DILocalVariable(name: "__stream", arg: 1, scope: !2210, file: !2069, line: 135, type: !2097)
!2213 = !DILocation(line: 0, scope: !2210)
!2214 = !DILocation(line: 137, column: 10, scope: !2210)
!2215 = !DILocation(line: 137, column: 3, scope: !2210)
!2216 = distinct !DISubprogram(name: "tolower", scope: !2217, file: !2217, line: 207, type: !2162, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2217 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "__c", arg: 1, scope: !2216, file: !2217, line: 207, type: !799)
!2220 = !DILocation(line: 0, scope: !2216)
!2221 = !DILocation(line: 209, column: 22, scope: !2216)
!2222 = !DILocation(line: 209, column: 39, scope: !2216)
!2223 = !DILocation(line: 209, column: 38, scope: !2216)
!2224 = !DILocation(line: 209, column: 37, scope: !2216)
!2225 = !DILocation(line: 209, column: 10, scope: !2216)
!2226 = !DILocation(line: 209, column: 3, scope: !2216)
!2227 = distinct !DISubprogram(name: "toupper", scope: !2217, file: !2217, line: 213, type: !2162, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "__c", arg: 1, scope: !2227, file: !2217, line: 213, type: !799)
!2230 = !DILocation(line: 0, scope: !2227)
!2231 = !DILocation(line: 215, column: 22, scope: !2227)
!2232 = !DILocation(line: 215, column: 39, scope: !2227)
!2233 = !DILocation(line: 215, column: 38, scope: !2227)
!2234 = !DILocation(line: 215, column: 37, scope: !2227)
!2235 = !DILocation(line: 215, column: 10, scope: !2227)
!2236 = !DILocation(line: 215, column: 3, scope: !2227)
!2237 = distinct !DISubprogram(name: "atoi", scope: !2238, file: !2238, line: 361, type: !2239, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2238 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!799, !804}
!2241 = !{!2242}
!2242 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2237, file: !2238, line: 361, type: !804)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 363, column: 16, scope: !2237)
!2245 = !DILocation(line: 363, column: 10, scope: !2237)
!2246 = !DILocation(line: 363, column: 3, scope: !2237)
!2247 = distinct !DISubprogram(name: "atol", scope: !2238, file: !2238, line: 366, type: !2248, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!914, !804}
!2250 = !{!2251}
!2251 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2247, file: !2238, line: 366, type: !804)
!2252 = !DILocation(line: 0, scope: !2247)
!2253 = !DILocation(line: 368, column: 10, scope: !2247)
!2254 = !DILocation(line: 368, column: 3, scope: !2247)
!2255 = distinct !DISubprogram(name: "atoll", scope: !2238, file: !2238, line: 373, type: !2256, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !804}
!2258 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2255, file: !2238, line: 373, type: !804)
!2261 = !DILocation(line: 0, scope: !2255)
!2262 = !DILocation(line: 375, column: 10, scope: !2255)
!2263 = !DILocation(line: 375, column: 3, scope: !2255)
!2264 = distinct !DISubprogram(name: "bsearch", scope: !2265, file: !2265, line: 20, type: !2266, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!803, !1284, !1284, !1299, !1299, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2238, line: 808, baseType: !1288)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279}
!2270 = !DILocalVariable(name: "__key", arg: 1, scope: !2264, file: !2265, line: 20, type: !1284)
!2271 = !DILocalVariable(name: "__base", arg: 2, scope: !2264, file: !2265, line: 20, type: !1284)
!2272 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2264, file: !2265, line: 20, type: !1299)
!2273 = !DILocalVariable(name: "__size", arg: 4, scope: !2264, file: !2265, line: 20, type: !1299)
!2274 = !DILocalVariable(name: "__compar", arg: 5, scope: !2264, file: !2265, line: 21, type: !2268)
!2275 = !DILocalVariable(name: "__l", scope: !2264, file: !2265, line: 23, type: !1299)
!2276 = !DILocalVariable(name: "__u", scope: !2264, file: !2265, line: 23, type: !1299)
!2277 = !DILocalVariable(name: "__idx", scope: !2264, file: !2265, line: 23, type: !1299)
!2278 = !DILocalVariable(name: "__p", scope: !2264, file: !2265, line: 24, type: !1284)
!2279 = !DILocalVariable(name: "__comparison", scope: !2264, file: !2265, line: 25, type: !799)
!2280 = !DILocation(line: 0, scope: !2264)
!2281 = !DILocation(line: 29, column: 3, scope: !2264)
!2282 = !DILocation(line: 27, column: 7, scope: !2264)
!2283 = !DILocation(line: 29, column: 14, scope: !2264)
!2284 = !DILocation(line: 31, column: 20, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2264, file: !2265, line: 30, column: 5)
!2286 = !DILocation(line: 31, column: 27, scope: !2285)
!2287 = !DILocation(line: 32, column: 56, scope: !2285)
!2288 = !DILocation(line: 32, column: 47, scope: !2285)
!2289 = !DILocation(line: 33, column: 22, scope: !2285)
!2290 = !DILocation(line: 34, column: 24, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !2265, line: 34, column: 11)
!2292 = !DILocation(line: 34, column: 11, scope: !2285)
!2293 = !DILocation(line: 36, column: 29, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !2265, line: 36, column: 16)
!2295 = !DILocation(line: 36, column: 16, scope: !2291)
!2296 = !DILocation(line: 37, column: 14, scope: !2294)
!2297 = distinct !{!2297, !2281, !2298}
!2298 = !DILocation(line: 40, column: 5, scope: !2264)
!2299 = !DILocation(line: 43, column: 1, scope: !2264)
!2300 = distinct !DISubprogram(name: "atof", scope: !2301, file: !2301, line: 25, type: !2302, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!2304, !804}
!2304 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2305 = !{!2306}
!2306 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2300, file: !2301, line: 25, type: !804)
!2307 = !DILocation(line: 0, scope: !2300)
!2308 = !DILocation(line: 27, column: 10, scope: !2300)
!2309 = !DILocation(line: 27, column: 3, scope: !2300)
!2310 = distinct !DISubprogram(name: "strtoimax", scope: !2311, file: !2311, line: 324, type: !2312, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2311 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !2072, !2317, !799}
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2315, line: 101, baseType: !2316)
!2315 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2124, line: 72, baseType: !914)
!2317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !800)
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "nptr", arg: 1, scope: !2310, file: !2311, line: 324, type: !2072)
!2320 = !DILocalVariable(name: "endptr", arg: 2, scope: !2310, file: !2311, line: 324, type: !2317)
!2321 = !DILocalVariable(name: "base", arg: 3, scope: !2310, file: !2311, line: 324, type: !799)
!2322 = !DILocation(line: 0, scope: !2310)
!2323 = !DILocation(line: 327, column: 10, scope: !2310)
!2324 = !DILocation(line: 327, column: 3, scope: !2310)
!2325 = distinct !DISubprogram(name: "strtoumax", scope: !2311, file: !2311, line: 336, type: !2326, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!2328, !2072, !2317, !799}
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2315, line: 102, baseType: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2124, line: 73, baseType: !897)
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "nptr", arg: 1, scope: !2325, file: !2311, line: 336, type: !2072)
!2332 = !DILocalVariable(name: "endptr", arg: 2, scope: !2325, file: !2311, line: 336, type: !2317)
!2333 = !DILocalVariable(name: "base", arg: 3, scope: !2325, file: !2311, line: 336, type: !799)
!2334 = !DILocation(line: 0, scope: !2325)
!2335 = !DILocation(line: 339, column: 10, scope: !2325)
!2336 = !DILocation(line: 339, column: 3, scope: !2325)
!2337 = distinct !DISubprogram(name: "wcstoimax", scope: !2311, file: !2311, line: 348, type: !2338, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!2314, !2340, !2344, !799}
!2340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2311, line: 34, baseType: !799)
!2344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "nptr", arg: 1, scope: !2337, file: !2311, line: 348, type: !2340)
!2349 = !DILocalVariable(name: "endptr", arg: 2, scope: !2337, file: !2311, line: 348, type: !2344)
!2350 = !DILocalVariable(name: "base", arg: 3, scope: !2337, file: !2311, line: 348, type: !799)
!2351 = !DILocation(line: 0, scope: !2337)
!2352 = !DILocation(line: 351, column: 10, scope: !2337)
!2353 = !DILocation(line: 351, column: 3, scope: !2337)
!2354 = distinct !DISubprogram(name: "wcstoumax", scope: !2311, file: !2311, line: 362, type: !2355, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!2328, !2340, !2344, !799}
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "nptr", arg: 1, scope: !2354, file: !2311, line: 362, type: !2340)
!2359 = !DILocalVariable(name: "endptr", arg: 2, scope: !2354, file: !2311, line: 362, type: !2344)
!2360 = !DILocalVariable(name: "base", arg: 3, scope: !2354, file: !2311, line: 362, type: !799)
!2361 = !DILocation(line: 0, scope: !2354)
!2362 = !DILocation(line: 365, column: 10, scope: !2354)
!2363 = !DILocation(line: 365, column: 3, scope: !2354)
!2364 = distinct !DISubprogram(name: "stat", scope: !2365, file: !2365, line: 453, type: !2366, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!799, !804, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2370, line: 46, size: 1152, elements: !2371)
!2370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2371 = !{!2372, !2374, !2376, !2378, !2380, !2382, !2384, !2385, !2386, !2387, !2389, !2391, !2399, !2400, !2401}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2369, file: !2370, line: 48, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2124, line: 145, baseType: !897)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2369, file: !2370, line: 53, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2124, line: 148, baseType: !897)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2369, file: !2370, line: 61, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2124, line: 151, baseType: !897)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2369, file: !2370, line: 62, baseType: !2379, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2124, line: 150, baseType: !7)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2369, file: !2370, line: 64, baseType: !2381, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2124, line: 146, baseType: !7)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2369, file: !2370, line: 65, baseType: !2383, size: 32, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2124, line: 147, baseType: !7)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2369, file: !2370, line: 67, baseType: !799, size: 32, offset: 288)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2369, file: !2370, line: 69, baseType: !2373, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2369, file: !2370, line: 74, baseType: !2123, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2369, file: !2370, line: 78, baseType: !2388, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2124, line: 174, baseType: !914)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2369, file: !2370, line: 80, baseType: !2390, size: 64, offset: 512)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2124, line: 179, baseType: !914)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2369, file: !2370, line: 91, baseType: !2392, size: 128, offset: 576)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2393, line: 10, size: 128, elements: !2394)
!2393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2394 = !{!2395, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2392, file: !2393, line: 12, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2124, line: 160, baseType: !914)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2392, file: !2393, line: 16, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2124, line: 196, baseType: !914)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2369, file: !2370, line: 92, baseType: !2392, size: 128, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2369, file: !2370, line: 93, baseType: !2392, size: 128, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2369, file: !2370, line: 106, baseType: !2402, size: 192, offset: 960)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2398, size: 192, elements: !1014)
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "__path", arg: 1, scope: !2364, file: !2365, line: 453, type: !804)
!2405 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2364, file: !2365, line: 453, type: !2368)
!2406 = !DILocation(line: 0, scope: !2364)
!2407 = !DILocation(line: 455, column: 10, scope: !2364)
!2408 = !DILocation(line: 455, column: 3, scope: !2364)
!2409 = distinct !DISubprogram(name: "lstat", scope: !2365, file: !2365, line: 460, type: !2366, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "__path", arg: 1, scope: !2409, file: !2365, line: 460, type: !804)
!2412 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2409, file: !2365, line: 460, type: !2368)
!2413 = !DILocation(line: 0, scope: !2409)
!2414 = !DILocation(line: 462, column: 10, scope: !2409)
!2415 = !DILocation(line: 462, column: 3, scope: !2409)
!2416 = distinct !DISubprogram(name: "fstat", scope: !2365, file: !2365, line: 467, type: !2417, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!799, !799, !2368}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "__fd", arg: 1, scope: !2416, file: !2365, line: 467, type: !799)
!2421 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2416, file: !2365, line: 467, type: !2368)
!2422 = !DILocation(line: 0, scope: !2416)
!2423 = !DILocation(line: 469, column: 10, scope: !2416)
!2424 = !DILocation(line: 469, column: 3, scope: !2416)
!2425 = distinct !DISubprogram(name: "fstatat", scope: !2365, file: !2365, line: 474, type: !2426, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!799, !799, !804, !2368, !799}
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "__fd", arg: 1, scope: !2425, file: !2365, line: 474, type: !799)
!2430 = !DILocalVariable(name: "__filename", arg: 2, scope: !2425, file: !2365, line: 474, type: !804)
!2431 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2425, file: !2365, line: 474, type: !2368)
!2432 = !DILocalVariable(name: "__flag", arg: 4, scope: !2425, file: !2365, line: 474, type: !799)
!2433 = !DILocation(line: 0, scope: !2425)
!2434 = !DILocation(line: 477, column: 10, scope: !2425)
!2435 = !DILocation(line: 477, column: 3, scope: !2425)
!2436 = distinct !DISubprogram(name: "mknod", scope: !2365, file: !2365, line: 483, type: !2437, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!799, !804, !2379, !2373}
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "__path", arg: 1, scope: !2436, file: !2365, line: 483, type: !804)
!2441 = !DILocalVariable(name: "__mode", arg: 2, scope: !2436, file: !2365, line: 483, type: !2379)
!2442 = !DILocalVariable(name: "__dev", arg: 3, scope: !2436, file: !2365, line: 483, type: !2373)
!2443 = !DILocation(line: 0, scope: !2436)
!2444 = !DILocation(line: 485, column: 10, scope: !2436)
!2445 = !DILocation(line: 485, column: 3, scope: !2436)
!2446 = distinct !DISubprogram(name: "mknodat", scope: !2365, file: !2365, line: 491, type: !2447, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!799, !799, !804, !2379, !2373}
!2449 = !{!2450, !2451, !2452, !2453}
!2450 = !DILocalVariable(name: "__fd", arg: 1, scope: !2446, file: !2365, line: 491, type: !799)
!2451 = !DILocalVariable(name: "__path", arg: 2, scope: !2446, file: !2365, line: 491, type: !804)
!2452 = !DILocalVariable(name: "__mode", arg: 3, scope: !2446, file: !2365, line: 491, type: !2379)
!2453 = !DILocalVariable(name: "__dev", arg: 4, scope: !2446, file: !2365, line: 491, type: !2373)
!2454 = !DILocation(line: 0, scope: !2446)
!2455 = !DILocation(line: 494, column: 10, scope: !2446)
!2456 = !DILocation(line: 494, column: 3, scope: !2446)
!2457 = distinct !DISubprogram(name: "stat64", scope: !2365, file: !2365, line: 502, type: !2458, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2480)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!799, !804, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2370, line: 119, size: 1152, elements: !2462)
!2462 = !{!2463, !2464, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2476, !2477, !2478, !2479}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2461, file: !2370, line: 121, baseType: !2373, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2461, file: !2370, line: 123, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2124, line: 149, baseType: !897)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2461, file: !2370, line: 124, baseType: !2377, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2461, file: !2370, line: 125, baseType: !2379, size: 32, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2461, file: !2370, line: 132, baseType: !2381, size: 32, offset: 224)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2461, file: !2370, line: 133, baseType: !2383, size: 32, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2461, file: !2370, line: 135, baseType: !799, size: 32, offset: 288)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2461, file: !2370, line: 136, baseType: !2373, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2461, file: !2370, line: 137, baseType: !2123, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2461, file: !2370, line: 143, baseType: !2388, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2461, file: !2370, line: 144, baseType: !2475, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2124, line: 180, baseType: !914)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2461, file: !2370, line: 152, baseType: !2392, size: 128, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2461, file: !2370, line: 153, baseType: !2392, size: 128, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2461, file: !2370, line: 154, baseType: !2392, size: 128, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2461, file: !2370, line: 164, baseType: !2402, size: 192, offset: 960)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "__path", arg: 1, scope: !2457, file: !2365, line: 502, type: !804)
!2482 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2457, file: !2365, line: 502, type: !2460)
!2483 = !DILocation(line: 0, scope: !2457)
!2484 = !DILocation(line: 504, column: 10, scope: !2457)
!2485 = !DILocation(line: 504, column: 3, scope: !2457)
!2486 = distinct !DISubprogram(name: "lstat64", scope: !2365, file: !2365, line: 509, type: !2458, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2487 = !{!2488, !2489}
!2488 = !DILocalVariable(name: "__path", arg: 1, scope: !2486, file: !2365, line: 509, type: !804)
!2489 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2486, file: !2365, line: 509, type: !2460)
!2490 = !DILocation(line: 0, scope: !2486)
!2491 = !DILocation(line: 511, column: 10, scope: !2486)
!2492 = !DILocation(line: 511, column: 3, scope: !2486)
!2493 = distinct !DISubprogram(name: "fstat64", scope: !2365, file: !2365, line: 516, type: !2494, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!799, !799, !2460}
!2496 = !{!2497, !2498}
!2497 = !DILocalVariable(name: "__fd", arg: 1, scope: !2493, file: !2365, line: 516, type: !799)
!2498 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2493, file: !2365, line: 516, type: !2460)
!2499 = !DILocation(line: 0, scope: !2493)
!2500 = !DILocation(line: 518, column: 10, scope: !2493)
!2501 = !DILocation(line: 518, column: 3, scope: !2493)
!2502 = distinct !DISubprogram(name: "fstatat64", scope: !2365, file: !2365, line: 523, type: !2503, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!799, !799, !804, !2460, !799}
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "__fd", arg: 1, scope: !2502, file: !2365, line: 523, type: !799)
!2507 = !DILocalVariable(name: "__filename", arg: 2, scope: !2502, file: !2365, line: 523, type: !804)
!2508 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2502, file: !2365, line: 523, type: !2460)
!2509 = !DILocalVariable(name: "__flag", arg: 4, scope: !2502, file: !2365, line: 523, type: !799)
!2510 = !DILocation(line: 0, scope: !2502)
!2511 = !DILocation(line: 526, column: 10, scope: !2502)
!2512 = !DILocation(line: 526, column: 3, scope: !2502)
!2513 = distinct !DISubprogram(name: "reload_cse_regs", scope: !3, file: !3, line: 68, type: !2514, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !806}
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "first", arg: 1, scope: !2513, file: !3, line: 68, type: !806)
!2518 = !DILocation(line: 0, scope: !2513)
!2519 = !DILocation(line: 70, column: 3, scope: !2513)
!2520 = !DILocation(line: 71, column: 3, scope: !2513)
!2521 = !DILocation(line: 72, column: 3, scope: !2513)
!2522 = !DILocation(line: 73, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 73, column: 7)
!2524 = !DILocation(line: 73, column: 7, scope: !2513)
!2525 = !DILocation(line: 74, column: 5, scope: !2523)
!2526 = !DILocation(line: 75, column: 1, scope: !2513)
!2527 = distinct !DISubprogram(name: "reload_cse_regs_1", scope: !3, file: !3, line: 196, type: !2514, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DILocalVariable(name: "first", arg: 1, scope: !2527, file: !3, line: 196, type: !806)
!2530 = !DILocalVariable(name: "insn", scope: !2527, file: !3, line: 198, type: !806)
!2531 = !DILocalVariable(name: "testreg", scope: !2527, file: !3, line: 199, type: !806)
!2532 = !DILocation(line: 0, scope: !2527)
!2533 = !DILocation(line: 199, column: 17, scope: !2527)
!2534 = !DILocation(line: 201, column: 3, scope: !2527)
!2535 = !DILocation(line: 202, column: 3, scope: !2527)
!2536 = !DILocation(line: 204, column: 8, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 204, column: 3)
!2538 = !DILocation(line: 0, scope: !2537)
!2539 = !DILocation(line: 204, column: 3, scope: !2537)
!2540 = !DILocation(line: 206, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 206, column: 11)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 205, column: 5)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 204, column: 3)
!2544 = !DILocation(line: 206, column: 11, scope: !2542)
!2545 = !DILocation(line: 207, column: 2, scope: !2541)
!2546 = !DILocation(line: 209, column: 7, scope: !2542)
!2547 = !DILocation(line: 204, column: 35, scope: !2543)
!2548 = !DILocation(line: 204, column: 3, scope: !2543)
!2549 = distinct !{!2549, !2539, !2550}
!2550 = !DILocation(line: 210, column: 5, scope: !2537)
!2551 = !DILocation(line: 213, column: 3, scope: !2527)
!2552 = !DILocation(line: 214, column: 3, scope: !2527)
!2553 = !DILocation(line: 215, column: 1, scope: !2527)
!2554 = distinct !DISubprogram(name: "reload_combine", scope: !3, file: !3, line: 698, type: !2555, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null}
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2576, !2578, !2582, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2595, !2598, !2602, !2605, !2606, !2607, !2608, !2611}
!2558 = !DILocalVariable(name: "insn", scope: !2554, file: !3, line: 700, type: !806)
!2559 = !DILocalVariable(name: "set", scope: !2554, file: !3, line: 700, type: !806)
!2560 = !DILocalVariable(name: "first_index_reg", scope: !2554, file: !3, line: 701, type: !799)
!2561 = !DILocalVariable(name: "last_index_reg", scope: !2554, file: !3, line: 702, type: !799)
!2562 = !DILocalVariable(name: "i", scope: !2554, file: !3, line: 703, type: !799)
!2563 = !DILocalVariable(name: "bb", scope: !2554, file: !3, line: 704, type: !1361)
!2564 = !DILocalVariable(name: "r", scope: !2554, file: !3, line: 705, type: !7)
!2565 = !DILocalVariable(name: "last_label_ruid", scope: !2554, file: !3, line: 706, type: !799)
!2566 = !DILocalVariable(name: "min_labelno", scope: !2554, file: !3, line: 707, type: !799)
!2567 = !DILocalVariable(name: "n_labels", scope: !2554, file: !3, line: 707, type: !799)
!2568 = !DILocalVariable(name: "ever_live_at_start", scope: !2554, file: !3, line: 708, type: !1996)
!2569 = !DILocalVariable(name: "label_live", scope: !2554, file: !3, line: 708, type: !1998)
!2570 = !DILocalVariable(name: "live", scope: !2571, file: !3, line: 745, type: !1996)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 744, column: 2)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 743, column: 11)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 741, column: 5)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 740, column: 3)
!2575 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 740, column: 3)
!2576 = !DILocalVariable(name: "live_in", scope: !2571, file: !3, line: 746, type: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !807, line: 47, baseType: !881)
!2578 = !DILocalVariable(name: "note", scope: !2579, file: !3, line: 768, type: !806)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 767, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 766, column: 3)
!2581 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 766, column: 3)
!2582 = !DILocalVariable(name: "reg", scope: !2583, file: !3, line: 810, type: !806)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 809, column: 2)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 799, column: 11)
!2585 = !DILocalVariable(name: "plus", scope: !2583, file: !3, line: 811, type: !806)
!2586 = !DILocalVariable(name: "base", scope: !2583, file: !3, line: 812, type: !806)
!2587 = !DILocalVariable(name: "prev", scope: !2583, file: !3, line: 813, type: !806)
!2588 = !DILocalVariable(name: "prev_set", scope: !2583, file: !3, line: 814, type: !806)
!2589 = !DILocalVariable(name: "regno", scope: !2583, file: !3, line: 815, type: !7)
!2590 = !DILocalVariable(name: "index_reg", scope: !2583, file: !3, line: 816, type: !806)
!2591 = !DILocalVariable(name: "reg_sum", scope: !2583, file: !3, line: 817, type: !806)
!2592 = !DILocalVariable(name: "i", scope: !2593, file: !3, line: 863, type: !799)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 862, column: 6)
!2594 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 855, column: 8)
!2595 = !DILocalVariable(name: "link", scope: !2596, file: !3, line: 920, type: !806)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 919, column: 2)
!2597 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 918, column: 11)
!2598 = !DILocalVariable(name: "usage_rtx", scope: !2599, file: !3, line: 932, type: !806)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 931, column: 6)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 929, column: 4)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 929, column: 4)
!2602 = !DILocalVariable(name: "i", scope: !2603, file: !3, line: 935, type: !7)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 934, column: 10)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 933, column: 12)
!2605 = !DILocalVariable(name: "start_reg", scope: !2603, file: !3, line: 936, type: !7)
!2606 = !DILocalVariable(name: "num_regs", scope: !2603, file: !3, line: 937, type: !7)
!2607 = !DILocalVariable(name: "end_reg", scope: !2603, file: !3, line: 939, type: !7)
!2608 = !DILocalVariable(name: "live", scope: !2609, file: !3, line: 957, type: !1998)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 954, column: 2)
!2610 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 952, column: 16)
!2611 = !DILocalVariable(name: "regno", scope: !2612, file: !3, line: 976, type: !799)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 975, column: 6)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 973, column: 8)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 972, column: 2)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 971, column: 7)
!2616 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 971, column: 7)
!2617 = !DILocation(line: 0, scope: !2554)
!2618 = !DILocation(line: 708, column: 3, scope: !2554)
!2619 = !DILocation(line: 713, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 713, column: 7)
!2621 = !DILocation(line: 713, column: 7, scope: !2554)
!2622 = !DILocation(line: 0, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 719, column: 9)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 718, column: 3)
!2625 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 718, column: 3)
!2626 = !DILocation(line: 718, column: 3, scope: !2625)
!2627 = !DILocation(line: 0, scope: !2625)
!2628 = !DILocation(line: 718, column: 17, scope: !2624)
!2629 = !DILocation(line: 719, column: 9, scope: !2623)
!2630 = !DILocation(line: 719, column: 9, scope: !2624)
!2631 = !DILocation(line: 718, column: 43, scope: !2624)
!2632 = !DILocation(line: 718, column: 3, scope: !2624)
!2633 = distinct !{!2633, !2626, !2634}
!2634 = !DILocation(line: 725, column: 7, scope: !2625)
!2635 = !DILocation(line: 728, column: 23, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 728, column: 7)
!2637 = !DILocation(line: 728, column: 7, scope: !2554)
!2638 = !DILocation(line: 735, column: 17, scope: !2554)
!2639 = !DILocation(line: 736, column: 14, scope: !2554)
!2640 = !DILocation(line: 736, column: 31, scope: !2554)
!2641 = !DILocation(line: 737, column: 16, scope: !2554)
!2642 = !DILocation(line: 738, column: 3, scope: !2554)
!2643 = !DILocation(line: 740, column: 3, scope: !2575)
!2644 = !DILocation(line: 0, scope: !2571)
!2645 = !DILocation(line: 740, column: 3, scope: !2574)
!2646 = !DILocation(line: 0, scope: !2575)
!2647 = !DILocation(line: 742, column: 14, scope: !2573)
!2648 = !DILocation(line: 743, column: 11, scope: !2572)
!2649 = !DILocation(line: 743, column: 11, scope: !2573)
!2650 = !DILocation(line: 745, column: 4, scope: !2571)
!2651 = !DILocation(line: 746, column: 21, scope: !2571)
!2652 = !DILocation(line: 748, column: 4, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 748, column: 4)
!2654 = !DILocation(line: 749, column: 4, scope: !2571)
!2655 = !DILocation(line: 750, column: 4, scope: !2571)
!2656 = !DILocation(line: 751, column: 4, scope: !2571)
!2657 = !DILocation(line: 752, column: 2, scope: !2572)
!2658 = !DILocation(line: 752, column: 2, scope: !2571)
!2659 = !DILocation(line: 0, scope: !2574)
!2660 = distinct !{!2660, !2643, !2661}
!2661 = !DILocation(line: 753, column: 5, scope: !2575)
!2662 = !DILocation(line: 756, column: 41, scope: !2554)
!2663 = !DILocation(line: 757, column: 8, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 757, column: 3)
!2665 = !DILocation(line: 0, scope: !2664)
!2666 = !DILocation(line: 757, column: 17, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 757, column: 3)
!2668 = !DILocation(line: 757, column: 3, scope: !2664)
!2669 = !DILocation(line: 759, column: 20, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 758, column: 5)
!2671 = !DILocation(line: 759, column: 31, scope: !2670)
!2672 = !DILocation(line: 760, column: 11, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 760, column: 11)
!2674 = !DILocation(line: 0, scope: !2673)
!2675 = !DILocation(line: 760, column: 11, scope: !2670)
!2676 = !DILocation(line: 761, column: 2, scope: !2673)
!2677 = !DILocation(line: 757, column: 43, scope: !2667)
!2678 = !DILocation(line: 757, column: 3, scope: !2667)
!2679 = distinct !{!2679, !2668, !2680}
!2680 = !DILocation(line: 764, column: 5, scope: !2664)
!2681 = !DILocation(line: 766, column: 15, scope: !2581)
!2682 = !DILocation(line: 766, column: 8, scope: !2581)
!2683 = !DILocation(line: 0, scope: !2581)
!2684 = !DILocation(line: 766, column: 3, scope: !2581)
!2685 = !DILocation(line: 773, column: 11, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 773, column: 11)
!2687 = !DILocation(line: 773, column: 11, scope: !2579)
!2688 = !DILocation(line: 774, column: 20, scope: !2686)
!2689 = !DILocation(line: 774, column: 2, scope: !2686)
!2690 = !DILocation(line: 775, column: 16, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 775, column: 16)
!2692 = !DILocation(line: 775, column: 16, scope: !2686)
!2693 = !DILocation(line: 776, column: 2, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 776, column: 2)
!2695 = !DILocation(line: 0, scope: !2694)
!2696 = !DILocation(line: 776, column: 16, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 776, column: 2)
!2698 = !DILocation(line: 777, column: 10, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 777, column: 8)
!2700 = !DILocation(line: 777, column: 8, scope: !2697)
!2701 = !DILocation(line: 778, column: 21, scope: !2699)
!2702 = !DILocation(line: 778, column: 31, scope: !2699)
!2703 = !DILocation(line: 778, column: 8, scope: !2699)
!2704 = !DILocation(line: 776, column: 42, scope: !2697)
!2705 = !DILocation(line: 776, column: 2, scope: !2697)
!2706 = distinct !{!2706, !2693, !2707}
!2707 = !DILocation(line: 778, column: 33, scope: !2694)
!2708 = !DILocation(line: 780, column: 13, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 780, column: 11)
!2710 = !DILocation(line: 780, column: 11, scope: !2579)
!2711 = !DILocation(line: 783, column: 26, scope: !2579)
!2712 = !DILocation(line: 798, column: 13, scope: !2579)
!2713 = !DILocation(line: 799, column: 15, scope: !2584)
!2714 = !DILocation(line: 800, column: 4, scope: !2584)
!2715 = !DILocation(line: 800, column: 7, scope: !2584)
!2716 = !DILocation(line: 801, column: 4, scope: !2584)
!2717 = !DILocation(line: 801, column: 25, scope: !2584)
!2718 = !DILocation(line: 801, column: 8, scope: !2584)
!2719 = !DILocation(line: 802, column: 11, scope: !2584)
!2720 = !DILocation(line: 803, column: 8, scope: !2584)
!2721 = !DILocation(line: 804, column: 4, scope: !2584)
!2722 = !DILocation(line: 804, column: 7, scope: !2584)
!2723 = !DILocation(line: 804, column: 32, scope: !2584)
!2724 = !DILocation(line: 805, column: 4, scope: !2584)
!2725 = !DILocation(line: 805, column: 7, scope: !2584)
!2726 = !DILocation(line: 806, column: 4, scope: !2584)
!2727 = !DILocation(line: 806, column: 20, scope: !2584)
!2728 = !DILocation(line: 806, column: 7, scope: !2584)
!2729 = !DILocation(line: 807, column: 4, scope: !2584)
!2730 = !DILocation(line: 807, column: 21, scope: !2584)
!2731 = !DILocation(line: 807, column: 46, scope: !2584)
!2732 = !DILocation(line: 807, column: 8, scope: !2584)
!2733 = !DILocation(line: 808, column: 4, scope: !2584)
!2734 = !DILocation(line: 808, column: 35, scope: !2584)
!2735 = !DILocation(line: 808, column: 25, scope: !2584)
!2736 = !DILocation(line: 808, column: 59, scope: !2584)
!2737 = !DILocation(line: 808, column: 23, scope: !2584)
!2738 = !DILocation(line: 799, column: 11, scope: !2579)
!2739 = !DILocation(line: 810, column: 14, scope: !2583)
!2740 = !DILocation(line: 0, scope: !2583)
!2741 = !DILocation(line: 811, column: 15, scope: !2583)
!2742 = !DILocation(line: 812, column: 15, scope: !2583)
!2743 = !DILocation(line: 813, column: 15, scope: !2583)
!2744 = !DILocation(line: 814, column: 19, scope: !2583)
!2745 = !DILocation(line: 814, column: 26, scope: !2583)
!2746 = !DILocation(line: 815, column: 25, scope: !2583)
!2747 = !DILocation(line: 824, column: 8, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 824, column: 8)
!2749 = !DILocation(line: 825, column: 8, scope: !2748)
!2750 = !DILocation(line: 825, column: 11, scope: !2748)
!2751 = !DILocation(line: 824, column: 8, scope: !2583)
!2752 = !DILocation(line: 0, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 839, column: 9)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 838, column: 3)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 837, column: 8)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 837, column: 8)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 832, column: 6)
!2758 = !DILocation(line: 837, column: 8, scope: !2756)
!2759 = !DILocation(line: 0, scope: !2756)
!2760 = !DILocation(line: 837, column: 36, scope: !2755)
!2761 = !DILocation(line: 839, column: 9, scope: !2753)
!2762 = !DILocation(line: 841, column: 9, scope: !2753)
!2763 = !DILocation(line: 841, column: 25, scope: !2753)
!2764 = !DILocation(line: 841, column: 35, scope: !2753)
!2765 = !DILocation(line: 842, column: 9, scope: !2753)
!2766 = !DILocation(line: 842, column: 25, scope: !2753)
!2767 = !DILocation(line: 842, column: 56, scope: !2753)
!2768 = !DILocation(line: 842, column: 36, scope: !2753)
!2769 = !DILocation(line: 843, column: 9, scope: !2753)
!2770 = !DILocation(line: 843, column: 32, scope: !2753)
!2771 = !DILocation(line: 843, column: 12, scope: !2753)
!2772 = !DILocation(line: 843, column: 48, scope: !2753)
!2773 = !DILocation(line: 839, column: 9, scope: !2754)
!2774 = !DILocation(line: 845, column: 21, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 844, column: 7)
!2776 = !DILocation(line: 846, column: 19, scope: !2775)
!2777 = !DILocation(line: 847, column: 9, scope: !2775)
!2778 = !DILocation(line: 837, column: 56, scope: !2755)
!2779 = !DILocation(line: 837, column: 8, scope: !2755)
!2780 = distinct !{!2780, !2758, !2781}
!2781 = !DILocation(line: 849, column: 3, scope: !2756)
!2782 = !DILocation(line: 855, column: 8, scope: !2594)
!2783 = !DILocation(line: 0, scope: !2748)
!2784 = !DILocation(line: 856, column: 11, scope: !2594)
!2785 = !DILocation(line: 856, column: 8, scope: !2594)
!2786 = !DILocation(line: 857, column: 11, scope: !2594)
!2787 = !DILocation(line: 858, column: 8, scope: !2594)
!2788 = !DILocation(line: 858, column: 24, scope: !2594)
!2789 = !DILocation(line: 858, column: 11, scope: !2594)
!2790 = !DILocation(line: 859, column: 8, scope: !2594)
!2791 = !DILocation(line: 859, column: 28, scope: !2594)
!2792 = !DILocation(line: 859, column: 38, scope: !2594)
!2793 = !DILocation(line: 860, column: 8, scope: !2594)
!2794 = !DILocation(line: 860, column: 22, scope: !2594)
!2795 = !DILocation(line: 860, column: 12, scope: !2594)
!2796 = !DILocation(line: 860, column: 36, scope: !2594)
!2797 = !DILocation(line: 861, column: 25, scope: !2594)
!2798 = !DILocation(line: 861, column: 5, scope: !2594)
!2799 = !DILocation(line: 855, column: 8, scope: !2583)
!2800 = !DILocation(line: 867, column: 8, scope: !2593)
!2801 = !DILocation(line: 868, column: 29, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 868, column: 12)
!2803 = !DILocation(line: 868, column: 39, scope: !2802)
!2804 = !DILocation(line: 868, column: 36, scope: !2802)
!2805 = !DILocation(line: 868, column: 12, scope: !2593)
!2806 = !DILocation(line: 870, column: 7, scope: !2802)
!2807 = !DILocation(line: 871, column: 6, scope: !2802)
!2808 = !DILocation(line: 869, column: 3, scope: !2802)
!2809 = !DILocation(line: 877, column: 34, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 877, column: 8)
!2811 = !DILocation(line: 0, scope: !2593)
!2812 = !DILocation(line: 877, column: 13, scope: !2810)
!2813 = !DILocation(line: 0, scope: !2810)
!2814 = !DILocation(line: 878, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 877, column: 8)
!2816 = !DILocation(line: 877, column: 8, scope: !2810)
!2817 = !DILocation(line: 879, column: 56, scope: !2815)
!2818 = !DILocation(line: 880, column: 36, scope: !2815)
!2819 = !DILocation(line: 879, column: 3, scope: !2815)
!2820 = !DILocation(line: 878, column: 36, scope: !2815)
!2821 = !DILocation(line: 877, column: 8, scope: !2815)
!2822 = distinct !{!2822, !2816, !2823}
!2823 = !DILocation(line: 883, column: 18, scope: !2810)
!2824 = !DILocation(line: 885, column: 12, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 885, column: 12)
!2826 = !DILocation(line: 885, column: 12, scope: !2593)
!2827 = !DILocation(line: 889, column: 31, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 889, column: 5)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 886, column: 3)
!2830 = !DILocation(line: 889, column: 10, scope: !2828)
!2831 = !DILocation(line: 0, scope: !2828)
!2832 = !DILocation(line: 890, column: 12, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 889, column: 5)
!2834 = !DILocation(line: 889, column: 5, scope: !2828)
!2835 = !DILocation(line: 892, column: 11, scope: !2833)
!2836 = !DILocation(line: 893, column: 38, scope: !2833)
!2837 = !DILocation(line: 891, column: 7, scope: !2833)
!2838 = !DILocation(line: 890, column: 40, scope: !2833)
!2839 = !DILocation(line: 889, column: 5, scope: !2833)
!2840 = distinct !{!2840, !2834, !2841}
!2841 = !DILocation(line: 893, column: 42, scope: !2828)
!2842 = !DILocation(line: 895, column: 19, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 895, column: 9)
!2844 = !DILocation(line: 895, column: 9, scope: !2843)
!2845 = !DILocation(line: 895, column: 33, scope: !2843)
!2846 = !DILocation(line: 896, column: 28, scope: !2843)
!2847 = !DILocation(line: 896, column: 9, scope: !2843)
!2848 = !DILocation(line: 895, column: 9, scope: !2829)
!2849 = !DILocation(line: 897, column: 17, scope: !2843)
!2850 = !DILocation(line: 897, column: 7, scope: !2843)
!2851 = !DILocation(line: 897, column: 31, scope: !2843)
!2852 = !DILocation(line: 898, column: 9, scope: !2843)
!2853 = !DILocation(line: 901, column: 5, scope: !2829)
!2854 = !DILocation(line: 903, column: 26, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 903, column: 9)
!2856 = !DILocation(line: 903, column: 36, scope: !2855)
!2857 = !DILocation(line: 903, column: 33, scope: !2855)
!2858 = !DILocation(line: 903, column: 9, scope: !2829)
!2859 = !DILocation(line: 906, column: 7, scope: !2855)
!2860 = !DILocation(line: 908, column: 32, scope: !2829)
!2861 = !DILocation(line: 910, column: 9, scope: !2829)
!2862 = !DILocation(line: 909, column: 15, scope: !2829)
!2863 = !DILocation(line: 909, column: 5, scope: !2829)
!2864 = !DILocation(line: 909, column: 34, scope: !2829)
!2865 = !DILocation(line: 910, column: 7, scope: !2829)
!2866 = !DILocation(line: 911, column: 5, scope: !2829)
!2867 = !DILocation(line: 914, column: 2, scope: !2584)
!2868 = !DILocation(line: 916, column: 20, scope: !2579)
!2869 = !DILocation(line: 916, column: 7, scope: !2579)
!2870 = !DILocation(line: 918, column: 11, scope: !2597)
!2871 = !DILocation(line: 918, column: 11, scope: !2579)
!2872 = !DILocation(line: 0, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 924, column: 8)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 923, column: 10)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 922, column: 4)
!2876 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 922, column: 4)
!2877 = !DILocation(line: 922, column: 4, scope: !2876)
!2878 = !DILocation(line: 0, scope: !2876)
!2879 = !DILocation(line: 922, column: 18, scope: !2875)
!2880 = !DILocation(line: 923, column: 10, scope: !2874)
!2881 = !DILocation(line: 923, column: 10, scope: !2875)
!2882 = !DILocation(line: 925, column: 16, scope: !2873)
!2883 = !DILocation(line: 925, column: 26, scope: !2873)
!2884 = !DILocation(line: 926, column: 16, scope: !2873)
!2885 = !DILocation(line: 926, column: 27, scope: !2873)
!2886 = !DILocation(line: 927, column: 8, scope: !2873)
!2887 = !DILocation(line: 922, column: 44, scope: !2875)
!2888 = !DILocation(line: 922, column: 4, scope: !2875)
!2889 = distinct !{!2889, !2877, !2890}
!2890 = !DILocation(line: 927, column: 8, scope: !2876)
!2891 = !DILocation(line: 929, column: 16, scope: !2601)
!2892 = !DILocation(line: 929, column: 9, scope: !2601)
!2893 = !DILocation(line: 0, scope: !2601)
!2894 = !DILocation(line: 0, scope: !2596)
!2895 = !DILocation(line: 929, column: 4, scope: !2601)
!2896 = !DILocation(line: 932, column: 24, scope: !2599)
!2897 = !DILocation(line: 0, scope: !2599)
!2898 = !DILocation(line: 933, column: 12, scope: !2604)
!2899 = !DILocation(line: 933, column: 12, scope: !2599)
!2900 = !DILocation(line: 936, column: 30, scope: !2603)
!2901 = !DILocation(line: 0, scope: !2603)
!2902 = !DILocation(line: 938, column: 4, scope: !2603)
!2903 = !DILocation(line: 938, column: 32, scope: !2603)
!2904 = !DILocation(line: 939, column: 39, scope: !2603)
!2905 = !DILocation(line: 939, column: 50, scope: !2603)
!2906 = !DILocation(line: 0, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 941, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 940, column: 5)
!2909 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 940, column: 5)
!2910 = !DILocation(line: 940, column: 10, scope: !2909)
!2911 = !DILocation(line: 0, scope: !2909)
!2912 = !DILocation(line: 940, column: 27, scope: !2908)
!2913 = !DILocation(line: 940, column: 5, scope: !2909)
!2914 = !DILocation(line: 941, column: 11, scope: !2907)
!2915 = !DILocation(line: 941, column: 37, scope: !2907)
!2916 = !DILocation(line: 941, column: 11, scope: !2908)
!2917 = !DILocation(line: 943, column: 34, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 942, column: 9)
!2919 = !DILocation(line: 944, column: 37, scope: !2918)
!2920 = !DILocation(line: 944, column: 24, scope: !2918)
!2921 = !DILocation(line: 944, column: 35, scope: !2918)
!2922 = !DILocation(line: 945, column: 9, scope: !2918)
!2923 = !DILocation(line: 947, column: 32, scope: !2907)
!2924 = !DILocation(line: 940, column: 40, scope: !2908)
!2925 = !DILocation(line: 940, column: 5, scope: !2908)
!2926 = distinct !{!2926, !2913, !2927}
!2927 = !DILocation(line: 947, column: 35, scope: !2909)
!2928 = !DILocation(line: 930, column: 16, scope: !2600)
!2929 = !DILocation(line: 929, column: 4, scope: !2600)
!2930 = distinct !{!2930, !2895, !2931}
!2931 = !DILocation(line: 949, column: 7, scope: !2601)
!2932 = !DILocation(line: 952, column: 16, scope: !2610)
!2933 = !DILocation(line: 953, column: 9, scope: !2610)
!2934 = !DILocation(line: 953, column: 12, scope: !2610)
!2935 = !DILocation(line: 953, column: 38, scope: !2610)
!2936 = !DILocation(line: 952, column: 16, scope: !2597)
!2937 = !DILocation(line: 959, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 959, column: 8)
!2939 = !DILocation(line: 959, column: 27, scope: !2938)
!2940 = !DILocation(line: 959, column: 30, scope: !2938)
!2941 = !DILocation(line: 960, column: 8, scope: !2938)
!2942 = !DILocation(line: 960, column: 11, scope: !2938)
!2943 = !DILocation(line: 959, column: 8, scope: !2609)
!2944 = !DILocation(line: 961, column: 14, scope: !2938)
!2945 = !DILocation(line: 0, scope: !2609)
!2946 = !DILocation(line: 961, column: 6, scope: !2938)
!2947 = !DILocation(line: 0, scope: !2938)
!2948 = !DILocation(line: 965, column: 9, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 965, column: 4)
!2950 = !DILocation(line: 0, scope: !2949)
!2951 = !DILocation(line: 965, column: 42, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 965, column: 4)
!2953 = !DILocation(line: 965, column: 4, scope: !2949)
!2954 = !DILocation(line: 966, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 966, column: 10)
!2956 = !DILocation(line: 966, column: 10, scope: !2952)
!2957 = !DILocation(line: 967, column: 21, scope: !2955)
!2958 = !DILocation(line: 967, column: 31, scope: !2955)
!2959 = !DILocation(line: 967, column: 8, scope: !2955)
!2960 = !DILocation(line: 965, column: 48, scope: !2952)
!2961 = !DILocation(line: 965, column: 4, scope: !2952)
!2962 = distinct !{!2962, !2953, !2963}
!2963 = !DILocation(line: 967, column: 34, scope: !2949)
!2964 = !DILocation(line: 970, column: 33, scope: !2579)
!2965 = !DILocation(line: 970, column: 7, scope: !2579)
!2966 = !DILocation(line: 971, column: 19, scope: !2616)
!2967 = !DILocation(line: 971, column: 12, scope: !2616)
!2968 = !DILocation(line: 0, scope: !2616)
!2969 = !DILocation(line: 0, scope: !2579)
!2970 = !DILocation(line: 971, column: 7, scope: !2616)
!2971 = !DILocation(line: 973, column: 8, scope: !2613)
!2972 = !DILocation(line: 973, column: 29, scope: !2613)
!2973 = !DILocation(line: 974, column: 8, scope: !2613)
!2974 = !DILocation(line: 974, column: 11, scope: !2613)
!2975 = !DILocation(line: 973, column: 8, scope: !2614)
!2976 = !DILocation(line: 976, column: 20, scope: !2612)
!2977 = !DILocation(line: 0, scope: !2612)
!2978 = !DILocation(line: 978, column: 38, scope: !2612)
!2979 = !DILocation(line: 978, column: 8, scope: !2612)
!2980 = !DILocation(line: 978, column: 25, scope: !2612)
!2981 = !DILocation(line: 978, column: 36, scope: !2612)
!2982 = !DILocation(line: 979, column: 25, scope: !2612)
!2983 = !DILocation(line: 979, column: 35, scope: !2612)
!2984 = !DILocation(line: 980, column: 6, scope: !2612)
!2985 = !DILocation(line: 971, column: 50, scope: !2615)
!2986 = !DILocation(line: 971, column: 7, scope: !2615)
!2987 = distinct !{!2987, !2970, !2988}
!2988 = !DILocation(line: 981, column: 2, scope: !2616)
!2989 = !DILocation(line: 766, column: 46, scope: !2580)
!2990 = !DILocation(line: 766, column: 3, scope: !2580)
!2991 = distinct !{!2991, !2684, !2992}
!2992 = !DILocation(line: 982, column: 5, scope: !2581)
!2993 = !DILocation(line: 984, column: 3, scope: !2554)
!2994 = !DILocation(line: 985, column: 1, scope: !2554)
!2995 = distinct !DISubprogram(name: "reload_cse_move2add", scope: !3, file: !3, line: 1194, type: !2514, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3004, !3005, !3008, !3009, !3010, !3015, !3016, !3020, !3023, !3029, !3030, !3031, !3034, !3035, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3048, !3054, !3057}
!2997 = !DILocalVariable(name: "first", arg: 1, scope: !2995, file: !3, line: 1194, type: !806)
!2998 = !DILocalVariable(name: "i", scope: !2995, file: !3, line: 1196, type: !799)
!2999 = !DILocalVariable(name: "insn", scope: !2995, file: !3, line: 1197, type: !806)
!3000 = !DILocalVariable(name: "pat", scope: !3001, file: !3, line: 1206, type: !806)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1205, column: 5)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1204, column: 3)
!3003 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1204, column: 3)
!3004 = !DILocalVariable(name: "note", scope: !3001, file: !3, line: 1206, type: !806)
!3005 = !DILocalVariable(name: "reg", scope: !3006, file: !3, line: 1225, type: !806)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1224, column: 2)
!3007 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1222, column: 11)
!3008 = !DILocalVariable(name: "regno", scope: !3006, file: !3, line: 1226, type: !799)
!3009 = !DILocalVariable(name: "src", scope: !3006, file: !3, line: 1227, type: !806)
!3010 = !DILocalVariable(name: "new_src", scope: !3011, file: !3, line: 1250, type: !806)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1249, column: 3)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1248, column: 12)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1234, column: 6)
!3014 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1231, column: 8)
!3015 = !DILocalVariable(name: "speed", scope: !3011, file: !3, line: 1252, type: !798)
!3016 = !DILocalVariable(name: "tem", scope: !3017, file: !3, line: 1272, type: !806)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1271, column: 7)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1269, column: 14)
!3019 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 1260, column: 9)
!3020 = !DILocalVariable(name: "narrow_mode", scope: !3021, file: !3, line: 1277, type: !5)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1276, column: 7)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1275, column: 14)
!3023 = !DILocalVariable(name: "narrow_reg", scope: !3024, file: !3, line: 1289, type: !806)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1288, column: 8)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1283, column: 10)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1282, column: 4)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1278, column: 9)
!3028 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1278, column: 9)
!3029 = !DILocalVariable(name: "narrow_src", scope: !3024, file: !3, line: 1291, type: !806)
!3030 = !DILocalVariable(name: "new_set", scope: !3024, file: !3, line: 1293, type: !806)
!3031 = !DILocalVariable(name: "next", scope: !3032, file: !3, line: 1326, type: !806)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1325, column: 3)
!3033 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1320, column: 17)
!3034 = !DILocalVariable(name: "set", scope: !3032, file: !3, line: 1327, type: !806)
!3035 = !DILocalVariable(name: "src3", scope: !3036, file: !3, line: 1336, type: !806)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1335, column: 7)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1330, column: 9)
!3038 = !DILocalVariable(name: "added_offset", scope: !3036, file: !3, line: 1337, type: !914)
!3039 = !DILocalVariable(name: "base_offset", scope: !3036, file: !3, line: 1338, type: !914)
!3040 = !DILocalVariable(name: "regno_offset", scope: !3036, file: !3, line: 1339, type: !914)
!3041 = !DILocalVariable(name: "new_src", scope: !3036, file: !3, line: 1340, type: !806)
!3042 = !DILocalVariable(name: "success", scope: !3036, file: !3, line: 1345, type: !798)
!3043 = !DILocalVariable(name: "speed", scope: !3036, file: !3, line: 1346, type: !798)
!3044 = !DILocalVariable(name: "newpat", scope: !3045, file: !3, line: 1356, type: !806)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1355, column: 4)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1352, column: 18)
!3047 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1348, column: 13)
!3048 = !DILocalVariable(name: "regno", scope: !3049, file: !3, line: 1384, type: !799)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 1382, column: 6)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1380, column: 8)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1379, column: 2)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1378, column: 7)
!3053 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1378, column: 7)
!3054 = !DILocalVariable(name: "cnd", scope: !3055, file: !3, line: 1395, type: !806)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 1394, column: 2)
!3056 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1393, column: 11)
!3057 = !DILocalVariable(name: "implicit_set", scope: !3058, file: !3, line: 1409, type: !806)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1408, column: 6)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1397, column: 8)
!3060 = !DILocation(line: 0, scope: !2995)
!3061 = !DILocation(line: 1199, column: 8, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1199, column: 3)
!3063 = !DILocation(line: 0, scope: !3062)
!3064 = !DILocation(line: 1199, column: 41, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1199, column: 3)
!3066 = !DILocation(line: 1199, column: 3, scope: !3062)
!3067 = !DILocation(line: 1200, column: 5, scope: !3065)
!3068 = !DILocation(line: 1200, column: 21, scope: !3065)
!3069 = !DILocation(line: 1199, column: 48, scope: !3065)
!3070 = !DILocation(line: 1199, column: 3, scope: !3065)
!3071 = distinct !{!3071, !3066, !3072}
!3072 = !DILocation(line: 1200, column: 23, scope: !3062)
!3073 = !DILocation(line: 1202, column: 28, scope: !2995)
!3074 = !DILocation(line: 1204, column: 8, scope: !3003)
!3075 = !DILocation(line: 0, scope: !3003)
!3076 = !DILocation(line: 1204, column: 3, scope: !3003)
!3077 = !DILocation(line: 1208, column: 11, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1208, column: 11)
!3079 = !DILocation(line: 1208, column: 11, scope: !3001)
!3080 = !DILocation(line: 1210, column: 29, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 1209, column: 2)
!3082 = !DILocation(line: 1214, column: 17, scope: !3081)
!3083 = !DILocation(line: 1215, column: 4, scope: !3081)
!3084 = !DILocation(line: 1217, column: 13, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1217, column: 11)
!3086 = !DILocation(line: 1217, column: 11, scope: !3001)
!3087 = !DILocation(line: 1219, column: 13, scope: !3001)
!3088 = !DILocation(line: 0, scope: !3001)
!3089 = !DILocation(line: 1222, column: 11, scope: !3007)
!3090 = !DILocation(line: 1222, column: 26, scope: !3007)
!3091 = !DILocation(line: 1223, column: 4, scope: !3007)
!3092 = !DILocation(line: 1223, column: 7, scope: !3007)
!3093 = !DILocation(line: 1222, column: 11, scope: !3001)
!3094 = !DILocation(line: 0, scope: !3006)
!3095 = !DILocation(line: 1226, column: 16, scope: !3006)
!3096 = !DILocation(line: 1227, column: 14, scope: !3006)
!3097 = !DILocation(line: 1231, column: 8, scope: !3014)
!3098 = !DILocation(line: 1231, column: 30, scope: !3014)
!3099 = !DILocation(line: 1231, column: 28, scope: !3014)
!3100 = !DILocation(line: 1232, column: 8, scope: !3014)
!3101 = !DILocation(line: 1232, column: 11, scope: !3014)
!3102 = !DILocation(line: 1233, column: 15, scope: !3014)
!3103 = !DILocation(line: 1233, column: 18, scope: !3014)
!3104 = !DILocation(line: 1231, column: 8, scope: !3006)
!3105 = !DILocation(line: 1248, column: 12, scope: !3012)
!3106 = !DILocation(line: 1248, column: 30, scope: !3012)
!3107 = !DILocation(line: 1248, column: 33, scope: !3012)
!3108 = !DILocation(line: 1248, column: 53, scope: !3012)
!3109 = !DILocation(line: 1248, column: 12, scope: !3013)
!3110 = !DILocation(line: 1250, column: 33, scope: !3011)
!3111 = !DILocation(line: 1250, column: 48, scope: !3011)
!3112 = !DILocation(line: 1250, column: 46, scope: !3011)
!3113 = !DILocation(line: 1251, column: 12, scope: !3011)
!3114 = !DILocation(line: 1250, column: 19, scope: !3011)
!3115 = !DILocation(line: 0, scope: !3011)
!3116 = !DILocation(line: 1252, column: 43, scope: !3011)
!3117 = !DILocation(line: 1252, column: 18, scope: !3011)
!3118 = !DILocation(line: 1260, column: 20, scope: !3019)
!3119 = !DILocation(line: 1260, column: 17, scope: !3019)
!3120 = !DILocation(line: 1260, column: 9, scope: !3011)
!3121 = !DILocation(line: 1266, column: 13, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1266, column: 13)
!3123 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1261, column: 7)
!3124 = !DILocation(line: 1266, column: 29, scope: !3122)
!3125 = !DILocation(line: 1266, column: 26, scope: !3122)
!3126 = !DILocation(line: 1266, column: 13, scope: !3123)
!3127 = !DILocation(line: 1267, column: 4, scope: !3122)
!3128 = !DILocation(line: 1269, column: 14, scope: !3018)
!3129 = !DILocation(line: 1269, column: 48, scope: !3018)
!3130 = !DILocation(line: 1269, column: 46, scope: !3018)
!3131 = !DILocation(line: 1270, column: 7, scope: !3018)
!3132 = !DILocation(line: 1270, column: 10, scope: !3018)
!3133 = !DILocation(line: 1269, column: 14, scope: !3019)
!3134 = !DILocation(line: 1272, column: 19, scope: !3017)
!3135 = !DILocation(line: 0, scope: !3017)
!3136 = !DILocation(line: 1273, column: 9, scope: !3017)
!3137 = !DILocation(line: 1274, column: 7, scope: !3017)
!3138 = !DILocation(line: 1275, column: 14, scope: !3022)
!3139 = !DILocation(line: 1275, column: 29, scope: !3022)
!3140 = !DILocation(line: 1275, column: 14, scope: !3018)
!3141 = !DILocation(line: 1278, column: 14, scope: !3028)
!3142 = !DILocation(line: 0, scope: !3028)
!3143 = !DILocation(line: 0, scope: !3021)
!3144 = !DILocation(line: 1279, column: 19, scope: !3027)
!3145 = !DILocation(line: 1280, column: 7, scope: !3027)
!3146 = !DILocation(line: 1280, column: 25, scope: !3027)
!3147 = !DILocation(line: 1280, column: 22, scope: !3027)
!3148 = !DILocation(line: 1278, column: 9, scope: !3028)
!3149 = !DILocation(line: 1283, column: 10, scope: !3025)
!3150 = !DILocation(line: 1284, column: 10, scope: !3025)
!3151 = !DILocation(line: 1281, column: 21, scope: !3027)
!3152 = !DILocation(line: 1284, column: 15, scope: !3025)
!3153 = !DILocation(line: 1285, column: 11, scope: !3025)
!3154 = !DILocation(line: 1285, column: 10, scope: !3025)
!3155 = !DILocation(line: 1286, column: 11, scope: !3025)
!3156 = !DILocation(line: 1286, column: 7, scope: !3025)
!3157 = !DILocation(line: 1283, column: 10, scope: !3026)
!3158 = !DILocation(line: 1290, column: 12, scope: !3024)
!3159 = !DILocation(line: 1289, column: 27, scope: !3024)
!3160 = !DILocation(line: 0, scope: !3024)
!3161 = !DILocation(line: 1291, column: 41, scope: !3024)
!3162 = !DILocation(line: 1291, column: 27, scope: !3024)
!3163 = !DILocation(line: 1294, column: 5, scope: !3024)
!3164 = !DILocation(line: 1298, column: 14, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1298, column: 14)
!3166 = !DILocation(line: 1278, column: 9, scope: !3027)
!3167 = distinct !{!3167, !3148, !3168}
!3168 = !DILocation(line: 1302, column: 4, scope: !3028)
!3169 = !DILocation(line: 1304, column: 27, scope: !3011)
!3170 = !DILocation(line: 1304, column: 25, scope: !3011)
!3171 = !DILocation(line: 1305, column: 23, scope: !3011)
!3172 = !DILocation(line: 1305, column: 21, scope: !3011)
!3173 = !DILocation(line: 1306, column: 25, scope: !3011)
!3174 = !DILocation(line: 1306, column: 23, scope: !3011)
!3175 = !DILocation(line: 1320, column: 17, scope: !3033)
!3176 = !DILocation(line: 1321, column: 10, scope: !3033)
!3177 = !DILocation(line: 1321, column: 13, scope: !3033)
!3178 = !DILocation(line: 1321, column: 49, scope: !3033)
!3179 = !DILocation(line: 1321, column: 36, scope: !3033)
!3180 = !DILocation(line: 1321, column: 33, scope: !3033)
!3181 = !DILocation(line: 1322, column: 10, scope: !3033)
!3182 = !DILocation(line: 1322, column: 13, scope: !3033)
!3183 = !DILocation(line: 1322, column: 49, scope: !3033)
!3184 = !DILocation(line: 1322, column: 36, scope: !3033)
!3185 = !DILocation(line: 1322, column: 33, scope: !3033)
!3186 = !DILocation(line: 1323, column: 10, scope: !3033)
!3187 = !DILocation(line: 1323, column: 13, scope: !3033)
!3188 = !DILocation(line: 1320, column: 17, scope: !3012)
!3189 = !DILocation(line: 1326, column: 16, scope: !3032)
!3190 = !DILocation(line: 0, scope: !3032)
!3191 = !DILocation(line: 1328, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1328, column: 9)
!3193 = !DILocation(line: 1328, column: 9, scope: !3032)
!3194 = !DILocation(line: 1329, column: 13, scope: !3192)
!3195 = !DILocation(line: 1330, column: 9, scope: !3037)
!3196 = !DILocation(line: 1331, column: 9, scope: !3037)
!3197 = !DILocation(line: 1331, column: 12, scope: !3037)
!3198 = !DILocation(line: 1331, column: 27, scope: !3037)
!3199 = !DILocation(line: 1332, column: 9, scope: !3037)
!3200 = !DILocation(line: 1332, column: 12, scope: !3037)
!3201 = !DILocation(line: 1332, column: 37, scope: !3037)
!3202 = !DILocation(line: 1333, column: 9, scope: !3037)
!3203 = !DILocation(line: 1333, column: 12, scope: !3037)
!3204 = !DILocation(line: 1333, column: 36, scope: !3037)
!3205 = !DILocation(line: 1334, column: 9, scope: !3037)
!3206 = !DILocation(line: 1334, column: 12, scope: !3037)
!3207 = !DILocation(line: 1330, column: 9, scope: !3032)
!3208 = !DILocation(line: 0, scope: !3036)
!3209 = !DILocation(line: 1337, column: 38, scope: !3036)
!3210 = !DILocation(line: 1338, column: 48, scope: !3036)
!3211 = !DILocation(line: 1338, column: 37, scope: !3036)
!3212 = !DILocation(line: 1339, column: 38, scope: !3036)
!3213 = !DILocation(line: 1342, column: 11, scope: !3036)
!3214 = !DILocation(line: 1343, column: 11, scope: !3036)
!3215 = !DILocation(line: 1344, column: 11, scope: !3036)
!3216 = !DILocation(line: 1341, column: 4, scope: !3036)
!3217 = !DILocation(line: 1346, column: 47, scope: !3036)
!3218 = !DILocation(line: 1346, column: 22, scope: !3036)
!3219 = !DILocation(line: 1348, column: 24, scope: !3047)
!3220 = !DILocation(line: 1348, column: 21, scope: !3047)
!3221 = !DILocation(line: 1348, column: 13, scope: !3036)
!3222 = !DILocation(line: 1351, column: 8, scope: !3047)
!3223 = !DILocation(line: 1350, column: 4, scope: !3047)
!3224 = !DILocation(line: 1352, column: 19, scope: !3046)
!3225 = !DILocation(line: 1353, column: 27, scope: !3046)
!3226 = !DILocation(line: 1353, column: 25, scope: !3046)
!3227 = !DILocation(line: 1353, column: 5, scope: !3046)
!3228 = !DILocation(line: 1354, column: 11, scope: !3046)
!3229 = !DILocation(line: 1354, column: 14, scope: !3046)
!3230 = !DILocation(line: 1352, column: 18, scope: !3047)
!3231 = !DILocation(line: 1356, column: 19, scope: !3045)
!3232 = !DILocation(line: 0, scope: !3045)
!3233 = !DILocation(line: 1362, column: 34, scope: !3045)
!3234 = !DILocation(line: 1362, column: 10, scope: !3045)
!3235 = !DILocation(line: 1364, column: 4, scope: !3045)
!3236 = !DILocation(line: 0, scope: !3047)
!3237 = !DILocation(line: 1365, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1365, column: 13)
!3239 = !DILocation(line: 1365, column: 13, scope: !3036)
!3240 = !DILocation(line: 1366, column: 4, scope: !3238)
!3241 = !DILocation(line: 1368, column: 27, scope: !3036)
!3242 = !DILocation(line: 1368, column: 25, scope: !3036)
!3243 = !DILocation(line: 1371, column: 10, scope: !3036)
!3244 = !DILocation(line: 1370, column: 4, scope: !3036)
!3245 = !DILocation(line: 1369, column: 27, scope: !3036)
!3246 = !DILocation(line: 1376, column: 2, scope: !3007)
!3247 = !DILocation(line: 1204, column: 13, scope: !3003)
!3248 = !DILocation(line: 1378, column: 19, scope: !3053)
!3249 = !DILocation(line: 1378, column: 12, scope: !3053)
!3250 = !DILocation(line: 0, scope: !3053)
!3251 = !DILocation(line: 1378, column: 7, scope: !3053)
!3252 = !DILocation(line: 1380, column: 8, scope: !3050)
!3253 = !DILocation(line: 1380, column: 29, scope: !3050)
!3254 = !DILocation(line: 1381, column: 8, scope: !3050)
!3255 = !DILocation(line: 1381, column: 11, scope: !3050)
!3256 = !DILocation(line: 1380, column: 8, scope: !3051)
!3257 = !DILocation(line: 1384, column: 20, scope: !3049)
!3258 = !DILocation(line: 0, scope: !3049)
!3259 = !DILocation(line: 1385, column: 18, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1385, column: 12)
!3261 = !DILocation(line: 1385, column: 12, scope: !3049)
!3262 = !DILocation(line: 1386, column: 3, scope: !3260)
!3263 = !DILocation(line: 1386, column: 23, scope: !3260)
!3264 = !DILocation(line: 1378, column: 50, scope: !3052)
!3265 = !DILocation(line: 1378, column: 7, scope: !3052)
!3266 = distinct !{!3266, !3251, !3267}
!3267 = !DILocation(line: 1388, column: 2, scope: !3053)
!3268 = !DILocation(line: 1389, column: 20, scope: !3001)
!3269 = !DILocation(line: 1389, column: 7, scope: !3001)
!3270 = !DILocation(line: 1393, column: 11, scope: !3056)
!3271 = !DILocation(line: 1393, column: 11, scope: !3001)
!3272 = !DILocation(line: 1395, column: 14, scope: !3055)
!3273 = !DILocation(line: 0, scope: !3055)
!3274 = !DILocation(line: 1397, column: 12, scope: !3059)
!3275 = !DILocation(line: 1398, column: 8, scope: !3059)
!3276 = !DILocation(line: 1398, column: 11, scope: !3059)
!3277 = !DILocation(line: 1398, column: 26, scope: !3059)
!3278 = !DILocation(line: 1399, column: 8, scope: !3059)
!3279 = !DILocation(line: 1399, column: 11, scope: !3059)
!3280 = !DILocation(line: 1400, column: 8, scope: !3059)
!3281 = !DILocation(line: 1400, column: 12, scope: !3059)
!3282 = !DILocation(line: 1405, column: 8, scope: !3059)
!3283 = !DILocation(line: 1405, column: 11, scope: !3059)
!3284 = !DILocation(line: 1406, column: 8, scope: !3059)
!3285 = !DILocation(line: 1406, column: 28, scope: !3059)
!3286 = !DILocation(line: 1406, column: 11, scope: !3059)
!3287 = !DILocation(line: 1406, column: 51, scope: !3059)
!3288 = !DILocation(line: 1406, column: 77, scope: !3059)
!3289 = !DILocation(line: 1407, column: 8, scope: !3059)
!3290 = !DILocation(line: 1407, column: 11, scope: !3059)
!3291 = !DILocation(line: 1397, column: 8, scope: !3055)
!3292 = !DILocation(line: 1410, column: 3, scope: !3058)
!3293 = !DILocation(line: 0, scope: !3058)
!3294 = !DILocation(line: 1411, column: 29, scope: !3058)
!3295 = !DILocation(line: 1411, column: 8, scope: !3058)
!3296 = !DILocation(line: 1412, column: 6, scope: !3058)
!3297 = !DILocation(line: 1417, column: 11, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1417, column: 11)
!3299 = !DILocation(line: 1417, column: 11, scope: !3001)
!3300 = !DILocation(line: 1419, column: 4, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1419, column: 4)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1418, column: 2)
!3303 = !DILocation(line: 0, scope: !3301)
!3304 = !DILocation(line: 1419, column: 42, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1419, column: 4)
!3306 = !DILocation(line: 1421, column: 12, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 1421, column: 12)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1420, column: 6)
!3309 = !DILocation(line: 1421, column: 12, scope: !3308)
!3310 = !DILocation(line: 1423, column: 3, scope: !3307)
!3311 = !DILocation(line: 1423, column: 19, scope: !3307)
!3312 = !DILocation(line: 1419, column: 49, scope: !3305)
!3313 = !DILocation(line: 1419, column: 4, scope: !3305)
!3314 = distinct !{!3314, !3300, !3315}
!3315 = !DILocation(line: 1424, column: 6, scope: !3301)
!3316 = !DILocation(line: 1204, column: 35, scope: !3002)
!3317 = !DILocation(line: 1204, column: 66, scope: !3002)
!3318 = !DILocation(line: 1204, column: 3, scope: !3002)
!3319 = distinct !{!3319, !3076, !3320}
!3320 = !DILocation(line: 1426, column: 5, scope: !3003)
!3321 = !DILocation(line: 1427, column: 1, scope: !2995)
!3322 = distinct !DISubprogram(name: "gate_handle_postreload", scope: !3, file: !3, line: 1578, type: !2047, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!3323 = !DILocation(line: 1580, column: 11, scope: !3322)
!3324 = !DILocation(line: 1580, column: 20, scope: !3322)
!3325 = !DILocation(line: 1580, column: 24, scope: !3322)
!3326 = !DILocation(line: 1580, column: 10, scope: !3322)
!3327 = !DILocation(line: 1580, column: 3, scope: !3322)
!3328 = distinct !DISubprogram(name: "rest_of_handle_postreload", scope: !3, file: !3, line: 1585, type: !2051, scopeLine: 1586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!3329 = !DILocation(line: 1587, column: 8, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1587, column: 7)
!3331 = !DILocation(line: 1587, column: 7, scope: !3328)
!3332 = !DILocation(line: 1591, column: 20, scope: !3328)
!3333 = !DILocation(line: 1591, column: 3, scope: !3328)
!3334 = !DILocation(line: 1594, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1594, column: 7)
!3336 = !DILocation(line: 1594, column: 7, scope: !3328)
!3337 = !DILocation(line: 1595, column: 5, scope: !3335)
!3338 = !DILocation(line: 1598, column: 1, scope: !3328)
!3339 = distinct !DISubprogram(name: "reload_cse_simplify", scope: !3, file: !3, line: 89, type: !3340, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !806, !806}
!3342 = !{!3343, !3344, !3345, !3346, !3349, !3352, !3355, !3356, !3357, !3363}
!3343 = !DILocalVariable(name: "insn", arg: 1, scope: !3339, file: !3, line: 89, type: !806)
!3344 = !DILocalVariable(name: "testreg", arg: 2, scope: !3339, file: !3, line: 89, type: !806)
!3345 = !DILocalVariable(name: "body", scope: !3339, file: !3, line: 91, type: !806)
!3346 = !DILocalVariable(name: "count", scope: !3347, file: !3, line: 95, type: !799)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 94, column: 5)
!3348 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 93, column: 7)
!3349 = !DILocalVariable(name: "value", scope: !3350, file: !3, line: 106, type: !806)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 105, column: 2)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 104, column: 11)
!3352 = !DILocalVariable(name: "i", scope: !3353, file: !3, line: 121, type: !799)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 120, column: 5)
!3354 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 119, column: 12)
!3355 = !DILocalVariable(name: "count", scope: !3353, file: !3, line: 122, type: !799)
!3356 = !DILocalVariable(name: "value", scope: !3353, file: !3, line: 123, type: !806)
!3357 = !DILocalVariable(name: "part", scope: !3358, file: !3, line: 132, type: !806)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 131, column: 6)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 130, column: 4)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 130, column: 4)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 129, column: 2)
!3362 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 128, column: 11)
!3363 = !DILocalVariable(name: "part", scope: !3364, file: !3, line: 142, type: !806)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 141, column: 2)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 140, column: 7)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 140, column: 7)
!3367 = !DILocation(line: 0, scope: !3339)
!3368 = !DILocation(line: 91, column: 14, scope: !3339)
!3369 = !DILocation(line: 93, column: 7, scope: !3348)
!3370 = !DILocation(line: 93, column: 23, scope: !3348)
!3371 = !DILocation(line: 93, column: 7, scope: !3339)
!3372 = !DILocation(line: 0, scope: !3347)
!3373 = !DILocation(line: 102, column: 16, scope: !3347)
!3374 = !DILocation(line: 104, column: 12, scope: !3351)
!3375 = !DILocation(line: 104, column: 18, scope: !3351)
!3376 = !DILocation(line: 104, column: 21, scope: !3351)
!3377 = !DILocation(line: 104, column: 11, scope: !3347)
!3378 = !DILocation(line: 110, column: 4, scope: !3350)
!3379 = !DILocation(line: 114, column: 17, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 114, column: 11)
!3381 = !DILocation(line: 114, column: 11, scope: !3347)
!3382 = !DILocation(line: 115, column: 2, scope: !3380)
!3383 = !DILocation(line: 117, column: 2, scope: !3380)
!3384 = !DILocation(line: 119, column: 28, scope: !3354)
!3385 = !DILocation(line: 119, column: 12, scope: !3348)
!3386 = !DILocation(line: 0, scope: !3353)
!3387 = !DILocation(line: 128, column: 11, scope: !3362)
!3388 = !DILocation(line: 128, column: 32, scope: !3362)
!3389 = !DILocation(line: 128, column: 11, scope: !3353)
!3390 = !DILocation(line: 130, column: 13, scope: !3360)
!3391 = !DILocation(line: 130, column: 9, scope: !3360)
!3392 = !DILocation(line: 0, scope: !3360)
!3393 = !DILocation(line: 130, column: 38, scope: !3359)
!3394 = !DILocation(line: 130, column: 4, scope: !3360)
!3395 = !DILocation(line: 132, column: 19, scope: !3358)
!3396 = !DILocation(line: 0, scope: !3358)
!3397 = !DILocation(line: 133, column: 12, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 133, column: 12)
!3399 = !DILocation(line: 133, column: 28, scope: !3398)
!3400 = !DILocation(line: 133, column: 39, scope: !3398)
!3401 = !DILocation(line: 133, column: 42, scope: !3398)
!3402 = !DILocation(line: 133, column: 12, scope: !3358)
!3403 = !DILocation(line: 134, column: 3, scope: !3398)
!3404 = !DILocation(line: 130, column: 4, scope: !3359)
!3405 = distinct !{!3405, !3394, !3406}
!3406 = !DILocation(line: 135, column: 6, scope: !3360)
!3407 = !DILocation(line: 140, column: 16, scope: !3366)
!3408 = !DILocation(line: 140, column: 12, scope: !3366)
!3409 = !DILocation(line: 123, column: 11, scope: !3353)
!3410 = !DILocation(line: 0, scope: !3366)
!3411 = !DILocation(line: 140, column: 41, scope: !3365)
!3412 = !DILocation(line: 140, column: 7, scope: !3366)
!3413 = !DILocation(line: 142, column: 15, scope: !3364)
!3414 = !DILocation(line: 0, scope: !3364)
!3415 = !DILocation(line: 143, column: 8, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 143, column: 8)
!3417 = !DILocation(line: 143, column: 24, scope: !3416)
!3418 = !DILocation(line: 143, column: 8, scope: !3364)
!3419 = !DILocation(line: 145, column: 14, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 145, column: 12)
!3421 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 144, column: 6)
!3422 = !DILocation(line: 145, column: 12, scope: !3421)
!3423 = !DILocation(line: 147, column: 12, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 147, column: 12)
!3425 = !DILocation(line: 148, column: 5, scope: !3424)
!3426 = !DILocation(line: 148, column: 8, scope: !3424)
!3427 = !DILocation(line: 147, column: 12, scope: !3421)
!3428 = !DILocation(line: 150, column: 9, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 150, column: 9)
!3430 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 149, column: 3)
!3431 = !DILocation(line: 150, column: 9, scope: !3430)
!3432 = !DILocation(line: 153, column: 3, scope: !3430)
!3433 = !DILocation(line: 155, column: 29, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 155, column: 13)
!3435 = !DILocation(line: 155, column: 13, scope: !3416)
!3436 = !DILocation(line: 157, column: 2, scope: !3365)
!3437 = !DILocation(line: 140, column: 7, scope: !3365)
!3438 = distinct !{!3438, !3412, !3439}
!3439 = !DILocation(line: 157, column: 2, scope: !3366)
!3440 = !DILocation(line: 159, column: 13, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 159, column: 11)
!3442 = !DILocation(line: 159, column: 11, scope: !3353)
!3443 = !DILocation(line: 161, column: 4, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 160, column: 2)
!3445 = !DILocation(line: 163, column: 4, scope: !3444)
!3446 = !DILocation(line: 167, column: 16, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 167, column: 7)
!3448 = !DILocation(line: 167, column: 12, scope: !3447)
!3449 = !DILocation(line: 0, scope: !3447)
!3450 = !DILocation(line: 167, column: 41, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 167, column: 7)
!3452 = !DILocation(line: 167, column: 7, scope: !3447)
!3453 = !DILocation(line: 168, column: 6, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 168, column: 6)
!3455 = !DILocation(line: 168, column: 38, scope: !3454)
!3456 = !DILocation(line: 168, column: 6, scope: !3451)
!3457 = !DILocation(line: 169, column: 13, scope: !3454)
!3458 = !DILocation(line: 169, column: 10, scope: !3454)
!3459 = !DILocation(line: 169, column: 4, scope: !3454)
!3460 = !DILocation(line: 167, column: 7, scope: !3451)
!3461 = distinct !{!3461, !3452, !3462}
!3462 = !DILocation(line: 169, column: 64, scope: !3447)
!3463 = !DILocation(line: 171, column: 17, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 171, column: 11)
!3465 = !DILocation(line: 171, column: 11, scope: !3353)
!3466 = !DILocation(line: 172, column: 2, scope: !3464)
!3467 = !DILocation(line: 174, column: 2, scope: !3464)
!3468 = !DILocation(line: 176, column: 1, scope: !3339)
!3469 = distinct !DISubprogram(name: "reload_cse_simplify_set", scope: !3, file: !3, line: 224, type: !3470, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!799, !806, !806}
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3487}
!3473 = !DILocalVariable(name: "set", arg: 1, scope: !3469, file: !3, line: 224, type: !806)
!3474 = !DILocalVariable(name: "insn", arg: 2, scope: !3469, file: !3, line: 224, type: !806)
!3475 = !DILocalVariable(name: "did_change", scope: !3469, file: !3, line: 226, type: !799)
!3476 = !DILocalVariable(name: "dreg", scope: !3469, file: !3, line: 227, type: !799)
!3477 = !DILocalVariable(name: "src", scope: !3469, file: !3, line: 228, type: !806)
!3478 = !DILocalVariable(name: "dclass", scope: !3469, file: !3, line: 229, type: !710)
!3479 = !DILocalVariable(name: "old_cost", scope: !3469, file: !3, line: 230, type: !799)
!3480 = !DILocalVariable(name: "val", scope: !3469, file: !3, line: 231, type: !877)
!3481 = !DILocalVariable(name: "l", scope: !3469, file: !3, line: 232, type: !865)
!3482 = !DILocalVariable(name: "speed", scope: !3469, file: !3, line: 236, type: !798)
!3483 = !DILocalVariable(name: "this_rtx", scope: !3484, file: !3, line: 275, type: !806)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 274, column: 5)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 273, column: 3)
!3486 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 273, column: 3)
!3487 = !DILocalVariable(name: "this_cost", scope: !3484, file: !3, line: 276, type: !799)
!3488 = !DILocation(line: 0, scope: !3469)
!3489 = !DILocation(line: 236, column: 41, scope: !3469)
!3490 = !DILocation(line: 236, column: 16, scope: !3469)
!3491 = !DILocation(line: 238, column: 23, scope: !3469)
!3492 = !DILocation(line: 238, column: 10, scope: !3469)
!3493 = !DILocation(line: 239, column: 12, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 239, column: 7)
!3495 = !DILocation(line: 239, column: 7, scope: !3469)
!3496 = !DILocation(line: 242, column: 9, scope: !3469)
!3497 = !DILocation(line: 243, column: 7, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 243, column: 7)
!3499 = !DILocation(line: 243, column: 28, scope: !3498)
!3500 = !DILocation(line: 243, column: 31, scope: !3498)
!3501 = !DILocation(line: 243, column: 49, scope: !3498)
!3502 = !DILocation(line: 243, column: 7, scope: !3469)
!3503 = !DILocation(line: 246, column: 12, scope: !3469)
!3504 = !DILocation(line: 260, column: 29, scope: !3469)
!3505 = !DILocation(line: 260, column: 9, scope: !3469)
!3506 = !DILocation(line: 261, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 261, column: 7)
!3508 = !DILocation(line: 261, column: 7, scope: !3469)
!3509 = !DILocation(line: 265, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 265, column: 7)
!3511 = !DILocation(line: 265, column: 7, scope: !3469)
!3512 = !DILocation(line: 266, column: 16, scope: !3510)
!3513 = !DILocation(line: 266, column: 5, scope: !3510)
!3514 = !DILocation(line: 267, column: 12, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 267, column: 12)
!3516 = !DILocation(line: 267, column: 12, scope: !3510)
!3517 = !DILocation(line: 268, column: 16, scope: !3515)
!3518 = !DILocation(line: 268, column: 5, scope: !3515)
!3519 = !DILocation(line: 271, column: 16, scope: !3515)
!3520 = !DILocation(line: 0, scope: !3510)
!3521 = !DILocation(line: 273, column: 17, scope: !3486)
!3522 = !DILocation(line: 0, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 327, column: 11)
!3524 = !DILocation(line: 273, column: 8, scope: !3486)
!3525 = !DILocation(line: 0, scope: !3486)
!3526 = !DILocation(line: 273, column: 3, scope: !3486)
!3527 = !DILocation(line: 275, column: 25, scope: !3484)
!3528 = !DILocation(line: 0, scope: !3484)
!3529 = !DILocation(line: 278, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 278, column: 11)
!3531 = !DILocation(line: 278, column: 33, scope: !3530)
!3532 = !DILocation(line: 278, column: 38, scope: !3530)
!3533 = !DILocation(line: 278, column: 11, scope: !3484)
!3534 = !DILocation(line: 308, column: 16, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 308, column: 16)
!3536 = !DILocation(line: 306, column: 16, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 279, column: 2)
!3538 = !DILocation(line: 307, column: 2, scope: !3537)
!3539 = !DILocation(line: 308, column: 16, scope: !3530)
!3540 = !DILocation(line: 318, column: 18, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 309, column: 2)
!3542 = !DILocation(line: 0, scope: !3530)
!3543 = !DILocation(line: 327, column: 21, scope: !3523)
!3544 = !DILocation(line: 328, column: 4, scope: !3523)
!3545 = !DILocation(line: 328, column: 18, scope: !3523)
!3546 = !DILocation(line: 329, column: 8, scope: !3523)
!3547 = !DILocation(line: 329, column: 11, scope: !3523)
!3548 = !DILocation(line: 330, column: 8, scope: !3523)
!3549 = !DILocation(line: 330, column: 12, scope: !3523)
!3550 = !DILocation(line: 327, column: 11, scope: !3484)
!3551 = !DILocation(line: 348, column: 4, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 331, column: 2)
!3553 = !DILocation(line: 350, column: 2, scope: !3552)
!3554 = !DILocation(line: 273, column: 33, scope: !3485)
!3555 = !DILocation(line: 273, column: 3, scope: !3485)
!3556 = distinct !{!3556, !3526, !3557}
!3557 = !DILocation(line: 351, column: 5, scope: !3486)
!3558 = !DILocation(line: 354, column: 1, scope: !3469)
!3559 = distinct !DISubprogram(name: "reload_cse_noop_set_p", scope: !3, file: !3, line: 79, type: !3560, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3562)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!799, !806}
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "set", arg: 1, scope: !3559, file: !3, line: 79, type: !806)
!3564 = !DILocation(line: 0, scope: !3559)
!3565 = !DILocation(line: 81, column: 28, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 81, column: 7)
!3567 = !DILocation(line: 81, column: 7, scope: !3566)
!3568 = !DILocation(line: 81, column: 47, scope: !3566)
!3569 = !DILocation(line: 81, column: 44, scope: !3566)
!3570 = !DILocation(line: 81, column: 7, scope: !3559)
!3571 = !DILocation(line: 84, column: 50, scope: !3559)
!3572 = !DILocation(line: 84, column: 10, scope: !3559)
!3573 = !DILocation(line: 84, column: 3, scope: !3559)
!3574 = !DILocation(line: 85, column: 1, scope: !3559)
!3575 = distinct !DISubprogram(name: "reload_cse_simplify_operands", scope: !3, file: !3, line: 368, type: !3470, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3585, !3587, !3588, !3589, !3591, !3592, !3596, !3597, !3598, !3602, !3603, !3604, !3606, !3610, !3614, !3618, !3619, !3620, !3621, !3625, !3626, !3630, !3634}
!3577 = !DILocalVariable(name: "insn", arg: 1, scope: !3575, file: !3, line: 368, type: !806)
!3578 = !DILocalVariable(name: "testreg", arg: 2, scope: !3575, file: !3, line: 368, type: !806)
!3579 = !DILocalVariable(name: "i", scope: !3575, file: !3, line: 370, type: !799)
!3580 = !DILocalVariable(name: "j", scope: !3575, file: !3, line: 370, type: !799)
!3581 = !DILocalVariable(name: "equiv_regs", scope: !3575, file: !3, line: 373, type: !3582)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 1920, elements: !3583)
!3583 = !{!3584}
!3584 = !DISubrange(count: 30)
!3585 = !DILocalVariable(name: "constraints", scope: !3575, file: !3, line: 375, type: !3586)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 1920, elements: !3583)
!3587 = !DILocalVariable(name: "alternative_reject", scope: !3575, file: !3, line: 378, type: !1995)
!3588 = !DILocalVariable(name: "alternative_nregs", scope: !3575, file: !3, line: 381, type: !1995)
!3589 = !DILocalVariable(name: "op_alt_regno", scope: !3575, file: !3, line: 385, type: !3590)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 1920, elements: !3583)
!3591 = !DILocalVariable(name: "alternative_order", scope: !3575, file: !3, line: 387, type: !1995)
!3592 = !DILocalVariable(name: "v", scope: !3593, file: !3, line: 407, type: !877)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 406, column: 5)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 405, column: 3)
!3595 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 405, column: 3)
!3596 = !DILocalVariable(name: "l", scope: !3593, file: !3, line: 408, type: !865)
!3597 = !DILocalVariable(name: "op", scope: !3593, file: !3, line: 409, type: !806)
!3598 = !DILocalVariable(name: "mode", scope: !3599, file: !3, line: 485, type: !5)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 484, column: 5)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 483, column: 3)
!3601 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 483, column: 3)
!3602 = !DILocalVariable(name: "regno", scope: !3599, file: !3, line: 486, type: !799)
!3603 = !DILocalVariable(name: "p", scope: !3599, file: !3, line: 487, type: !804)
!3604 = !DILocalVariable(name: "c", scope: !3605, file: !3, line: 501, type: !802)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 500, column: 2)
!3606 = !DILocalVariable(name: "rclass", scope: !3607, file: !3, line: 520, type: !710)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 519, column: 2)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 518, column: 7)
!3609 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 518, column: 7)
!3610 = !DILocalVariable(name: "c", scope: !3611, file: !3, line: 535, type: !802)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 534, column: 6)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 533, column: 4)
!3613 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 533, column: 4)
!3614 = !DILocalVariable(name: "best", scope: !3615, file: !3, line: 603, type: !799)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 602, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 601, column: 3)
!3617 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 601, column: 3)
!3618 = !DILocalVariable(name: "best_reject", scope: !3615, file: !3, line: 604, type: !799)
!3619 = !DILocalVariable(name: "best_nregs", scope: !3615, file: !3, line: 605, type: !799)
!3620 = !DILocalVariable(name: "tmp", scope: !3615, file: !3, line: 606, type: !799)
!3621 = !DILocalVariable(name: "this_reject", scope: !3622, file: !3, line: 610, type: !799)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 609, column: 2)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 608, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 608, column: 7)
!3625 = !DILocalVariable(name: "this_nregs", scope: !3622, file: !3, line: 611, type: !799)
!3626 = !DILocalVariable(name: "mode", scope: !3627, file: !3, line: 633, type: !5)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 632, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 631, column: 3)
!3629 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 631, column: 3)
!3630 = !DILocalVariable(name: "op", scope: !3631, file: !3, line: 643, type: !799)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 642, column: 5)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 641, column: 3)
!3633 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 641, column: 3)
!3634 = !DILocalVariable(name: "mode", scope: !3631, file: !3, line: 644, type: !5)
!3635 = !DILocation(line: 0, scope: !3575)
!3636 = !DILocation(line: 373, column: 3, scope: !3575)
!3637 = !DILocation(line: 373, column: 16, scope: !3575)
!3638 = !DILocation(line: 385, column: 3, scope: !3575)
!3639 = !DILocation(line: 385, column: 8, scope: !3575)
!3640 = !DILocation(line: 389, column: 3, scope: !3575)
!3641 = !DILocation(line: 391, column: 18, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 391, column: 7)
!3643 = !DILocation(line: 391, column: 33, scope: !3642)
!3644 = !DILocation(line: 391, column: 38, scope: !3642)
!3645 = !DILocation(line: 391, column: 52, scope: !3642)
!3646 = !DILocation(line: 391, column: 63, scope: !3642)
!3647 = !DILocation(line: 391, column: 7, scope: !3575)
!3648 = !DILocation(line: 395, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 395, column: 7)
!3650 = !DILocation(line: 395, column: 7, scope: !3575)
!3651 = !DILocation(line: 396, column: 5, scope: !3649)
!3652 = !DILocation(line: 398, column: 24, scope: !3575)
!3653 = !DILocation(line: 399, column: 23, scope: !3575)
!3654 = !DILocation(line: 400, column: 23, scope: !3575)
!3655 = !DILocation(line: 401, column: 11, scope: !3575)
!3656 = !DILocation(line: 401, column: 60, scope: !3575)
!3657 = !DILocation(line: 401, column: 3, scope: !3575)
!3658 = !DILocation(line: 402, column: 11, scope: !3575)
!3659 = !DILocation(line: 402, column: 44, scope: !3575)
!3660 = !DILocation(line: 402, column: 33, scope: !3575)
!3661 = !DILocation(line: 402, column: 59, scope: !3575)
!3662 = !DILocation(line: 402, column: 3, scope: !3575)
!3663 = !DILocation(line: 405, column: 8, scope: !3595)
!3664 = !DILocation(line: 0, scope: !3595)
!3665 = !DILocation(line: 405, column: 30, scope: !3594)
!3666 = !DILocation(line: 405, column: 17, scope: !3594)
!3667 = !DILocation(line: 405, column: 3, scope: !3595)
!3668 = !DILocation(line: 0, scope: !3607)
!3669 = !DILocation(line: 0, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 569, column: 9)
!3671 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 538, column: 3)
!3672 = !DILocation(line: 483, column: 3, scope: !3601)
!3673 = !DILocation(line: 411, column: 7, scope: !3593)
!3674 = !DILocation(line: 416, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 416, column: 11)
!3676 = !DILocation(line: 417, column: 4, scope: !3675)
!3677 = !DILocation(line: 417, column: 8, scope: !3675)
!3678 = !DILocation(line: 418, column: 8, scope: !3675)
!3679 = !DILocation(line: 0, scope: !3593)
!3680 = !DILocation(line: 474, column: 30, scope: !3593)
!3681 = !DILocation(line: 418, column: 11, scope: !3675)
!3682 = !DILocation(line: 418, column: 38, scope: !3675)
!3683 = !DILocation(line: 416, column: 11, scope: !3593)
!3684 = !DILocation(line: 474, column: 11, scope: !3593)
!3685 = !DILocation(line: 475, column: 13, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 475, column: 11)
!3687 = !DILocation(line: 475, column: 11, scope: !3593)
!3688 = !DILocation(line: 478, column: 19, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 478, column: 7)
!3690 = !DILocation(line: 478, column: 12, scope: !3689)
!3691 = !DILocation(line: 0, scope: !3689)
!3692 = !DILocation(line: 478, column: 7, scope: !3689)
!3693 = !DILocation(line: 479, column: 6, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 479, column: 6)
!3695 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 478, column: 7)
!3696 = !DILocation(line: 479, column: 6, scope: !3695)
!3697 = !DILocation(line: 480, column: 4, scope: !3694)
!3698 = !DILocation(line: 478, column: 35, scope: !3695)
!3699 = !DILocation(line: 478, column: 7, scope: !3695)
!3700 = distinct !{!3700, !3692, !3701}
!3701 = !DILocation(line: 480, column: 4, scope: !3689)
!3702 = !DILocation(line: 405, column: 43, scope: !3594)
!3703 = !DILocation(line: 405, column: 3, scope: !3594)
!3704 = distinct !{!3704, !3667, !3705}
!3705 = !DILocation(line: 481, column: 5, scope: !3595)
!3706 = !DILocation(line: 483, column: 30, scope: !3600)
!3707 = !DILocation(line: 483, column: 17, scope: !3600)
!3708 = !DILocation(line: 0, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 594, column: 3)
!3710 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 594, column: 3)
!3711 = !DILocation(line: 0, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 595, column: 9)
!3713 = !DILocation(line: 594, column: 3, scope: !3710)
!3714 = !DILocation(line: 489, column: 25, scope: !3599)
!3715 = !DILocation(line: 489, column: 7, scope: !3599)
!3716 = !DILocation(line: 489, column: 23, scope: !3599)
!3717 = !DILocation(line: 490, column: 12, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 490, column: 7)
!3719 = !DILocation(line: 0, scope: !3718)
!3720 = !DILocation(line: 490, column: 21, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 490, column: 7)
!3722 = !DILocation(line: 490, column: 7, scope: !3718)
!3723 = !DILocation(line: 491, column: 2, scope: !3721)
!3724 = !DILocation(line: 491, column: 21, scope: !3721)
!3725 = !DILocation(line: 490, column: 51, scope: !3721)
!3726 = !DILocation(line: 490, column: 7, scope: !3721)
!3727 = distinct !{!3727, !3722, !3728}
!3728 = !DILocation(line: 491, column: 24, scope: !3718)
!3729 = !DILocation(line: 493, column: 28, scope: !3599)
!3730 = !DILocation(line: 0, scope: !3599)
!3731 = !DILocation(line: 494, column: 14, scope: !3599)
!3732 = !DILocation(line: 499, column: 7, scope: !3599)
!3733 = !DILocation(line: 499, column: 14, scope: !3599)
!3734 = !DILocation(line: 499, column: 17, scope: !3599)
!3735 = !DILocation(line: 501, column: 15, scope: !3605)
!3736 = !DILocation(line: 0, scope: !3605)
!3737 = !DILocation(line: 502, column: 10, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 502, column: 8)
!3739 = !DILocation(line: 502, column: 8, scope: !3605)
!3740 = !DILocation(line: 503, column: 7, scope: !3738)
!3741 = !DILocation(line: 503, column: 6, scope: !3738)
!3742 = !DILocation(line: 504, column: 15, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 504, column: 13)
!3744 = !DILocation(line: 504, column: 13, scope: !3738)
!3745 = !DILocation(line: 505, column: 6, scope: !3743)
!3746 = !DILocation(line: 505, column: 28, scope: !3743)
!3747 = !DILocation(line: 506, column: 15, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 506, column: 13)
!3749 = !DILocation(line: 506, column: 13, scope: !3743)
!3750 = !DILocation(line: 507, column: 6, scope: !3748)
!3751 = !DILocation(line: 507, column: 28, scope: !3748)
!3752 = distinct !{!3752, !3732, !3753}
!3753 = !DILocation(line: 508, column: 2, scope: !3599)
!3754 = !DILocation(line: 512, column: 28, scope: !3599)
!3755 = !DILocation(line: 512, column: 15, scope: !3599)
!3756 = !DILocation(line: 513, column: 17, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 513, column: 11)
!3758 = !DILocation(line: 514, column: 4, scope: !3757)
!3759 = !DILocation(line: 514, column: 7, scope: !3757)
!3760 = !DILocation(line: 514, column: 25, scope: !3757)
!3761 = !DILocation(line: 515, column: 4, scope: !3757)
!3762 = !DILocation(line: 515, column: 25, scope: !3757)
!3763 = !DILocation(line: 513, column: 11, scope: !3599)
!3764 = !DILocation(line: 0, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 522, column: 8)
!3766 = !DILocation(line: 518, column: 7, scope: !3609)
!3767 = !DILocation(line: 518, column: 29, scope: !3608)
!3768 = !DILocation(line: 522, column: 10, scope: !3765)
!3769 = !DILocation(line: 522, column: 8, scope: !3607)
!3770 = !DILocation(line: 525, column: 4, scope: !3607)
!3771 = !DILocation(line: 526, column: 4, scope: !3607)
!3772 = !DILocation(line: 533, column: 4, scope: !3607)
!3773 = !DILocation(line: 531, column: 6, scope: !3607)
!3774 = !DILocation(line: 535, column: 17, scope: !3611)
!3775 = !DILocation(line: 0, scope: !3611)
!3776 = !DILocation(line: 537, column: 16, scope: !3611)
!3777 = !DILocation(line: 537, column: 8, scope: !3611)
!3778 = !DILocation(line: 554, column: 14, scope: !3671)
!3779 = !DILocation(line: 555, column: 5, scope: !3671)
!3780 = !DILocation(line: 559, column: 10, scope: !3671)
!3781 = !DILocation(line: 561, column: 17, scope: !3671)
!3782 = !DILocation(line: 562, column: 5, scope: !3671)
!3783 = !DILocation(line: 569, column: 9, scope: !3670)
!3784 = !DILocation(line: 569, column: 28, scope: !3670)
!3785 = !DILocation(line: 570, column: 9, scope: !3670)
!3786 = !DILocation(line: 570, column: 12, scope: !3670)
!3787 = !DILocation(line: 571, column: 9, scope: !3670)
!3788 = !DILocation(line: 571, column: 14, scope: !3670)
!3789 = !DILocation(line: 572, column: 6, scope: !3670)
!3790 = !DILocation(line: 573, column: 33, scope: !3670)
!3791 = !DILocation(line: 573, column: 8, scope: !3670)
!3792 = !DILocation(line: 572, column: 10, scope: !3670)
!3793 = !DILocation(line: 575, column: 33, scope: !3670)
!3794 = !DILocation(line: 575, column: 8, scope: !3670)
!3795 = !DILocation(line: 574, column: 12, scope: !3670)
!3796 = !DILocation(line: 574, column: 10, scope: !3670)
!3797 = !DILocation(line: 569, column: 9, scope: !3671)
!3798 = !DILocation(line: 577, column: 9, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 576, column: 7)
!3800 = !DILocation(line: 577, column: 29, scope: !3799)
!3801 = !DILocation(line: 578, column: 9, scope: !3799)
!3802 = !DILocation(line: 578, column: 28, scope: !3799)
!3803 = !DILocation(line: 579, column: 7, scope: !3799)
!3804 = !DILocation(line: 580, column: 6, scope: !3671)
!3805 = !DILocation(line: 582, column: 5, scope: !3671)
!3806 = !DILocation(line: 584, column: 13, scope: !3611)
!3807 = !DILocation(line: 584, column: 10, scope: !3611)
!3808 = !DILocation(line: 586, column: 14, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 586, column: 12)
!3810 = !DILocation(line: 518, column: 59, scope: !3608)
!3811 = !DILocation(line: 518, column: 7, scope: !3608)
!3812 = distinct !{!3812, !3766, !3813}
!3813 = !DILocation(line: 589, column: 2, scope: !3609)
!3814 = !DILocation(line: 483, column: 43, scope: !3600)
!3815 = !DILocation(line: 483, column: 3, scope: !3600)
!3816 = distinct !{!3816, !3672, !3817}
!3817 = !DILocation(line: 590, column: 5, scope: !3601)
!3818 = !DILocation(line: 0, scope: !3710)
!3819 = !DILocation(line: 594, column: 21, scope: !3709)
!3820 = !DILocation(line: 595, column: 9, scope: !3712)
!3821 = !DILocation(line: 595, column: 34, scope: !3712)
!3822 = !DILocation(line: 595, column: 31, scope: !3712)
!3823 = !DILocation(line: 595, column: 9, scope: !3709)
!3824 = !DILocation(line: 596, column: 26, scope: !3712)
!3825 = !DILocation(line: 596, column: 7, scope: !3712)
!3826 = !DILocation(line: 596, column: 30, scope: !3712)
!3827 = !DILocation(line: 594, column: 51, scope: !3709)
!3828 = !DILocation(line: 594, column: 3, scope: !3709)
!3829 = distinct !{!3829, !3713, !3830}
!3830 = !DILocation(line: 596, column: 32, scope: !3710)
!3831 = !DILocation(line: 597, column: 31, scope: !3575)
!3832 = !DILocation(line: 597, column: 29, scope: !3575)
!3833 = !DILocation(line: 0, scope: !3616)
!3834 = !DILocation(line: 601, column: 8, scope: !3617)
!3835 = !DILocation(line: 0, scope: !3617)
!3836 = !DILocation(line: 601, column: 17, scope: !3616)
!3837 = !DILocation(line: 601, column: 3, scope: !3617)
!3838 = !DILocation(line: 0, scope: !3615)
!3839 = !DILocation(line: 604, column: 44, scope: !3615)
!3840 = !DILocation(line: 604, column: 25, scope: !3615)
!3841 = !DILocation(line: 605, column: 24, scope: !3615)
!3842 = !DILocation(line: 608, column: 25, scope: !3623)
!3843 = !DILocation(line: 608, column: 12, scope: !3624)
!3844 = !DILocation(line: 0, scope: !3624)
!3845 = !DILocation(line: 608, column: 7, scope: !3624)
!3846 = !DILocation(line: 610, column: 41, scope: !3622)
!3847 = !DILocation(line: 610, column: 22, scope: !3622)
!3848 = !DILocation(line: 0, scope: !3622)
!3849 = !DILocation(line: 611, column: 21, scope: !3622)
!3850 = !DILocation(line: 613, column: 20, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 613, column: 8)
!3852 = !DILocation(line: 614, column: 8, scope: !3851)
!3853 = !DILocation(line: 614, column: 24, scope: !3851)
!3854 = !DILocation(line: 614, column: 53, scope: !3851)
!3855 = !DILocation(line: 614, column: 39, scope: !3851)
!3856 = !DILocation(line: 619, column: 6, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 615, column: 6)
!3858 = !DILocation(line: 608, column: 7, scope: !3623)
!3859 = distinct !{!3859, !3845, !3860}
!3860 = !DILocation(line: 620, column: 2, scope: !3624)
!3861 = !DILocation(line: 622, column: 13, scope: !3615)
!3862 = !DILocation(line: 623, column: 31, scope: !3615)
!3863 = !DILocation(line: 624, column: 28, scope: !3615)
!3864 = !DILocation(line: 601, column: 51, scope: !3616)
!3865 = !DILocation(line: 601, column: 3, scope: !3616)
!3866 = distinct !{!3866, !3837, !3867}
!3867 = !DILocation(line: 625, column: 5, scope: !3617)
!3868 = !DILocation(line: 629, column: 7, scope: !3575)
!3869 = !DILocation(line: 0, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 634, column: 11)
!3871 = !DILocation(line: 631, column: 8, scope: !3629)
!3872 = !DILocation(line: 631, column: 30, scope: !3628)
!3873 = !DILocation(line: 631, column: 17, scope: !3628)
!3874 = !DILocation(line: 631, column: 3, scope: !3629)
!3875 = !DILocation(line: 0, scope: !3627)
!3876 = !DILocation(line: 634, column: 11, scope: !3870)
!3877 = !DILocation(line: 634, column: 30, scope: !3870)
!3878 = !DILocation(line: 634, column: 11, scope: !3627)
!3879 = !DILocation(line: 633, column: 32, scope: !3627)
!3880 = !DILocation(line: 637, column: 30, scope: !3627)
!3881 = !DILocation(line: 638, column: 10, scope: !3627)
!3882 = !DILocation(line: 637, column: 7, scope: !3627)
!3883 = !DILocation(line: 639, column: 5, scope: !3628)
!3884 = !DILocation(line: 631, column: 43, scope: !3628)
!3885 = !DILocation(line: 631, column: 3, scope: !3628)
!3886 = distinct !{!3886, !3874, !3887}
!3887 = !DILocation(line: 639, column: 5, scope: !3629)
!3888 = !DILocation(line: 641, column: 23, scope: !3633)
!3889 = !DILocation(line: 641, column: 8, scope: !3633)
!3890 = !DILocation(line: 0, scope: !3633)
!3891 = !DILocation(line: 641, column: 37, scope: !3632)
!3892 = !DILocation(line: 641, column: 3, scope: !3633)
!3893 = !DILocation(line: 643, column: 16, scope: !3631)
!3894 = !DILocation(line: 0, scope: !3631)
!3895 = !DILocation(line: 646, column: 11, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 646, column: 11)
!3897 = !DILocation(line: 646, column: 31, scope: !3896)
!3898 = !DILocation(line: 646, column: 11, scope: !3631)
!3899 = !DILocation(line: 644, column: 32, scope: !3631)
!3900 = !DILocation(line: 649, column: 30, scope: !3631)
!3901 = !DILocation(line: 650, column: 10, scope: !3631)
!3902 = !DILocation(line: 649, column: 7, scope: !3631)
!3903 = !DILocation(line: 651, column: 5, scope: !3632)
!3904 = !DILocation(line: 641, column: 3, scope: !3632)
!3905 = distinct !{!3905, !3892, !3906}
!3906 = !DILocation(line: 651, column: 5, scope: !3633)
!3907 = !DILocation(line: 653, column: 10, scope: !3575)
!3908 = !DILocation(line: 653, column: 3, scope: !3575)
!3909 = !DILocation(line: 654, column: 1, scope: !3575)
!3910 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !3911, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3916)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!7, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !807, line: 51, baseType: !3914)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!3916 = !{!3917}
!3917 = !DILocalVariable(name: "x", arg: 1, scope: !3910, file: !568, line: 1051, type: !3913)
!3918 = !DILocation(line: 0, scope: !3910)
!3919 = !DILocation(line: 1053, column: 10, scope: !3910)
!3920 = !DILocation(line: 1053, column: 3, scope: !3910)
!3921 = distinct !DISubprogram(name: "insn_constraint_len", scope: !3922, file: !3922, line: 177, type: !3923, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3925)
!3922 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!1299, !802, !804}
!3925 = !{!3926, !3927}
!3926 = !DILocalVariable(name: "fc", arg: 1, scope: !3921, file: !3922, line: 177, type: !802)
!3927 = !DILocalVariable(name: "str", arg: 2, scope: !3921, file: !3922, line: 177, type: !804)
!3928 = !DILocation(line: 0, scope: !3921)
!3929 = !DILocation(line: 179, column: 3, scope: !3921)
!3930 = !DILocation(line: 185, column: 1, scope: !3921)
!3931 = distinct !DISubprogram(name: "reload_combine_note_use", scope: !3, file: !3, line: 1038, type: !3932, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !2014, !806}
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3947, !3948, !3949, !3951, !3952}
!3935 = !DILocalVariable(name: "xp", arg: 1, scope: !3931, file: !3, line: 1038, type: !2014)
!3936 = !DILocalVariable(name: "insn", arg: 2, scope: !3931, file: !3, line: 1038, type: !806)
!3937 = !DILocalVariable(name: "x", scope: !3931, file: !3, line: 1040, type: !806)
!3938 = !DILocalVariable(name: "code", scope: !3931, file: !3, line: 1041, type: !567)
!3939 = !DILocalVariable(name: "fmt", scope: !3931, file: !3, line: 1042, type: !804)
!3940 = !DILocalVariable(name: "i", scope: !3931, file: !3, line: 1043, type: !799)
!3941 = !DILocalVariable(name: "j", scope: !3931, file: !3, line: 1043, type: !799)
!3942 = !DILocalVariable(name: "offset", scope: !3931, file: !3, line: 1044, type: !806)
!3943 = !DILocalVariable(name: "reg", scope: !3944, file: !3, line: 1061, type: !806)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 1059, column: 2)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1058, column: 11)
!3946 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1047, column: 5)
!3947 = !DILocalVariable(name: "regno", scope: !3944, file: !3, line: 1062, type: !799)
!3948 = !DILocalVariable(name: "nregs", scope: !3944, file: !3, line: 1063, type: !799)
!3949 = !DILocalVariable(name: "regno", scope: !3950, file: !3, line: 1090, type: !799)
!3950 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1089, column: 7)
!3951 = !DILocalVariable(name: "use_index", scope: !3950, file: !3, line: 1091, type: !799)
!3952 = !DILocalVariable(name: "nregs", scope: !3950, file: !3, line: 1092, type: !799)
!3953 = !DILocation(line: 1051, column: 4, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 1050, column: 2)
!3955 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1049, column: 11)
!3956 = !DILocation(line: 0, scope: !3931)
!3957 = !DILocation(line: 1040, column: 11, scope: !3931)
!3958 = !DILocation(line: 1041, column: 27, scope: !3931)
!3959 = !DILocation(line: 1046, column: 3, scope: !3931)
!3960 = !DILocation(line: 1049, column: 11, scope: !3955)
!3961 = !DILocation(line: 1049, column: 11, scope: !3946)
!3962 = !DILocation(line: 1051, column: 30, scope: !3954)
!3963 = !DILocation(line: 1058, column: 11, scope: !3945)
!3964 = !DILocation(line: 1058, column: 31, scope: !3945)
!3965 = !DILocation(line: 1058, column: 34, scope: !3945)
!3966 = !DILocation(line: 1058, column: 11, scope: !3946)
!3967 = !DILocation(line: 0, scope: !3944)
!3968 = !DILocation(line: 1062, column: 16, scope: !3944)
!3969 = !DILocation(line: 1063, column: 16, scope: !3944)
!3970 = !DILocation(line: 1063, column: 40, scope: !3944)
!3971 = !DILocation(line: 1065, column: 4, scope: !3944)
!3972 = !DILocation(line: 1065, column: 11, scope: !3944)
!3973 = !DILocation(line: 1065, column: 19, scope: !3944)
!3974 = !DILocation(line: 1066, column: 22, scope: !3944)
!3975 = !DILocation(line: 1066, column: 31, scope: !3944)
!3976 = !DILocation(line: 1066, column: 41, scope: !3944)
!3977 = distinct !{!3977, !3971, !3978}
!3978 = !DILocation(line: 1066, column: 44, scope: !3944)
!3979 = !DILocation(line: 1072, column: 11, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1072, column: 11)
!3981 = !DILocation(line: 1072, column: 11, scope: !3946)
!3982 = !DILocation(line: 1075, column: 4, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 1073, column: 2)
!3984 = !DILocation(line: 1082, column: 12, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1082, column: 11)
!3986 = !DILocation(line: 1083, column: 4, scope: !3985)
!3987 = !DILocation(line: 1083, column: 8, scope: !3985)
!3988 = !DILocation(line: 1082, column: 11, scope: !3946)
!3989 = !DILocation(line: 1086, column: 7, scope: !3946)
!3990 = !DILocation(line: 1090, column: 14, scope: !3950)
!3991 = !DILocation(line: 0, scope: !3950)
!3992 = !DILocation(line: 1095, column: 2, scope: !3950)
!3993 = !DILocation(line: 1097, column: 10, scope: !3950)
!3994 = !DILocation(line: 1097, column: 34, scope: !3950)
!3995 = !DILocation(line: 1100, column: 12, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1100, column: 6)
!3997 = !DILocation(line: 1100, column: 6, scope: !3950)
!3998 = !DILocation(line: 1102, column: 6, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1101, column: 4)
!4000 = !DILocation(line: 1102, column: 13, scope: !3999)
!4001 = !DILocation(line: 1102, column: 21, scope: !3999)
!4002 = !DILocation(line: 1103, column: 24, scope: !3999)
!4003 = !DILocation(line: 1103, column: 33, scope: !3999)
!4004 = !DILocation(line: 1103, column: 43, scope: !3999)
!4005 = distinct !{!4005, !3998, !4006}
!4006 = !DILocation(line: 1103, column: 46, scope: !3999)
!4007 = !DILocation(line: 1111, column: 33, scope: !3950)
!4008 = !DILocation(line: 1111, column: 14, scope: !3950)
!4009 = !DILocation(line: 1112, column: 16, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1112, column: 6)
!4011 = !DILocation(line: 1112, column: 6, scope: !3950)
!4012 = !DILocation(line: 1115, column: 16, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1115, column: 6)
!4014 = !DILocation(line: 0, scope: !4013)
!4015 = !DILocation(line: 1115, column: 6, scope: !3950)
!4016 = !DILocation(line: 1120, column: 50, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 1120, column: 10)
!4018 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 1116, column: 4)
!4019 = !DILocation(line: 1120, column: 12, scope: !4017)
!4020 = !DILocation(line: 1120, column: 10, scope: !4018)
!4021 = !DILocation(line: 1122, column: 30, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 1121, column: 8)
!4023 = !DILocation(line: 1123, column: 3, scope: !4022)
!4024 = !DILocation(line: 1130, column: 30, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 1127, column: 4)
!4026 = !DILocation(line: 1131, column: 34, scope: !4025)
!4027 = !DILocation(line: 1131, column: 23, scope: !4025)
!4028 = !DILocation(line: 1131, column: 32, scope: !4025)
!4029 = !DILocation(line: 1133, column: 2, scope: !3950)
!4030 = !DILocation(line: 1133, column: 38, scope: !3950)
!4031 = !DILocation(line: 1133, column: 43, scope: !3950)
!4032 = !DILocation(line: 1134, column: 38, scope: !3950)
!4033 = !DILocation(line: 1134, column: 43, scope: !3950)
!4034 = !DILocation(line: 1135, column: 2, scope: !3950)
!4035 = !DILocation(line: 1143, column: 9, scope: !3931)
!4036 = !DILocation(line: 1144, column: 12, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1144, column: 3)
!4038 = !DILocation(line: 0, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1150, column: 4)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1149, column: 2)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1148, column: 16)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1146, column: 11)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1145, column: 5)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 1144, column: 3)
!4045 = !DILocation(line: 1144, column: 8, scope: !4037)
!4046 = !DILocation(line: 0, scope: !4037)
!4047 = !DILocation(line: 1144, column: 41, scope: !4044)
!4048 = !DILocation(line: 1144, column: 3, scope: !4037)
!4049 = !DILocation(line: 1146, column: 11, scope: !4042)
!4050 = !DILocation(line: 1146, column: 18, scope: !4042)
!4051 = !DILocation(line: 1146, column: 11, scope: !4043)
!4052 = !DILocation(line: 1147, column: 28, scope: !4042)
!4053 = !DILocation(line: 1147, column: 2, scope: !4042)
!4054 = !DILocation(line: 1148, column: 23, scope: !4041)
!4055 = !DILocation(line: 1148, column: 16, scope: !4042)
!4056 = !DILocation(line: 1150, column: 13, scope: !4039)
!4057 = !DILocation(line: 1150, column: 9, scope: !4039)
!4058 = !DILocation(line: 1150, column: 35, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1150, column: 4)
!4060 = !DILocation(line: 1150, column: 4, scope: !4039)
!4061 = !DILocation(line: 1151, column: 32, scope: !4059)
!4062 = !DILocation(line: 1151, column: 6, scope: !4059)
!4063 = !DILocation(line: 1150, column: 4, scope: !4059)
!4064 = distinct !{!4064, !4060, !4065}
!4065 = !DILocation(line: 1151, column: 55, scope: !4039)
!4066 = !DILocation(line: 1144, column: 3, scope: !4044)
!4067 = distinct !{!4067, !4048, !4068}
!4068 = !DILocation(line: 1153, column: 5, scope: !4037)
!4069 = !DILocation(line: 1154, column: 1, scope: !3931)
!4070 = distinct !DISubprogram(name: "reload_combine_note_store", scope: !3, file: !3, line: 992, type: !4071, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !806, !3913, !803}
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079}
!4074 = !DILocalVariable(name: "dst", arg: 1, scope: !4070, file: !3, line: 992, type: !806)
!4075 = !DILocalVariable(name: "set", arg: 2, scope: !4070, file: !3, line: 992, type: !3913)
!4076 = !DILocalVariable(name: "data", arg: 3, scope: !4070, file: !3, line: 992, type: !803)
!4077 = !DILocalVariable(name: "regno", scope: !4070, file: !3, line: 994, type: !799)
!4078 = !DILocalVariable(name: "i", scope: !4070, file: !3, line: 995, type: !799)
!4079 = !DILocalVariable(name: "mode", scope: !4070, file: !3, line: 996, type: !5)
!4080 = !DILocation(line: 0, scope: !4070)
!4081 = !DILocation(line: 996, column: 28, scope: !4070)
!4082 = !DILocation(line: 998, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 998, column: 7)
!4084 = !DILocation(line: 998, column: 22, scope: !4083)
!4085 = !DILocation(line: 998, column: 7, scope: !4070)
!4086 = !DILocation(line: 1000, column: 36, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 999, column: 5)
!4088 = !DILocation(line: 1001, column: 8, scope: !4087)
!4089 = !DILocation(line: 1002, column: 8, scope: !4087)
!4090 = !DILocation(line: 1003, column: 8, scope: !4087)
!4091 = !DILocation(line: 1000, column: 15, scope: !4087)
!4092 = !DILocation(line: 1004, column: 13, scope: !4087)
!4093 = !DILocation(line: 0, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1006, column: 7)
!4095 = !DILocation(line: 1006, column: 8, scope: !4094)
!4096 = !DILocation(line: 1005, column: 5, scope: !4087)
!4097 = !DILocation(line: 1006, column: 7, scope: !4070)
!4098 = !DILocation(line: 1008, column: 12, scope: !4070)
!4099 = !DILocation(line: 1008, column: 9, scope: !4070)
!4100 = !DILocation(line: 1013, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1013, column: 7)
!4102 = !DILocation(line: 1013, column: 22, scope: !4101)
!4103 = !DILocation(line: 1014, column: 7, scope: !4101)
!4104 = !DILocation(line: 1014, column: 10, scope: !4101)
!4105 = !DILocation(line: 1014, column: 36, scope: !4101)
!4106 = !DILocation(line: 1015, column: 7, scope: !4101)
!4107 = !DILocation(line: 1015, column: 36, scope: !4101)
!4108 = !DILocation(line: 1013, column: 7, scope: !4070)
!4109 = !DILocation(line: 1017, column: 16, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1017, column: 7)
!4111 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1016, column: 5)
!4112 = !DILocation(line: 0, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1018, column: 2)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1017, column: 7)
!4115 = !DILocation(line: 1017, column: 12, scope: !4110)
!4116 = !DILocation(line: 0, scope: !4110)
!4117 = !DILocation(line: 1017, column: 61, scope: !4114)
!4118 = !DILocation(line: 1017, column: 7, scope: !4110)
!4119 = !DILocation(line: 1019, column: 17, scope: !4113)
!4120 = !DILocation(line: 1019, column: 27, scope: !4113)
!4121 = !DILocation(line: 1020, column: 17, scope: !4113)
!4122 = !DILocation(line: 1020, column: 28, scope: !4113)
!4123 = !DILocation(line: 1017, column: 72, scope: !4114)
!4124 = !DILocation(line: 1017, column: 7, scope: !4114)
!4125 = distinct !{!4125, !4118, !4126}
!4126 = !DILocation(line: 1021, column: 2, scope: !4110)
!4127 = !DILocation(line: 1025, column: 16, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1025, column: 7)
!4129 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1024, column: 5)
!4130 = !DILocation(line: 0, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1026, column: 2)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1025, column: 7)
!4133 = !DILocation(line: 1025, column: 12, scope: !4128)
!4134 = !DILocation(line: 0, scope: !4128)
!4135 = !DILocation(line: 1025, column: 61, scope: !4132)
!4136 = !DILocation(line: 1025, column: 7, scope: !4128)
!4137 = !DILocation(line: 1027, column: 17, scope: !4131)
!4138 = !DILocation(line: 1027, column: 28, scope: !4131)
!4139 = !DILocation(line: 1028, column: 17, scope: !4131)
!4140 = !DILocation(line: 1028, column: 27, scope: !4131)
!4141 = !DILocation(line: 1025, column: 72, scope: !4132)
!4142 = !DILocation(line: 1025, column: 7, scope: !4132)
!4143 = distinct !{!4143, !4136, !4144}
!4144 = !DILocation(line: 1029, column: 2, scope: !4128)
!4145 = !DILocation(line: 1031, column: 1, scope: !4070)
!4146 = distinct !DISubprogram(name: "move2add_note_store", scope: !3, file: !3, line: 1434, type: !4071, scopeLine: 1435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4158, !4159, !4160, !4161, !4162, !4164}
!4148 = !DILocalVariable(name: "dst", arg: 1, scope: !4146, file: !3, line: 1434, type: !806)
!4149 = !DILocalVariable(name: "set", arg: 2, scope: !4146, file: !3, line: 1434, type: !3913)
!4150 = !DILocalVariable(name: "data", arg: 3, scope: !4146, file: !3, line: 1434, type: !803)
!4151 = !DILocalVariable(name: "regno", scope: !4146, file: !3, line: 1436, type: !7)
!4152 = !DILocalVariable(name: "nregs", scope: !4146, file: !3, line: 1437, type: !7)
!4153 = !DILocalVariable(name: "i", scope: !4146, file: !3, line: 1438, type: !7)
!4154 = !DILocalVariable(name: "mode", scope: !4146, file: !3, line: 1439, type: !5)
!4155 = !DILocalVariable(name: "src", scope: !4156, file: !3, line: 1473, type: !806)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 1472, column: 5)
!4157 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 1468, column: 7)
!4158 = !DILocalVariable(name: "base_reg", scope: !4156, file: !3, line: 1474, type: !806)
!4159 = !DILocalVariable(name: "offset", scope: !4156, file: !3, line: 1475, type: !914)
!4160 = !DILocalVariable(name: "base_regno", scope: !4156, file: !3, line: 1476, type: !799)
!4161 = !DILocalVariable(name: "dst_mode", scope: !4156, file: !3, line: 1479, type: !5)
!4162 = !DILocalVariable(name: "endregno", scope: !4163, file: !3, line: 1569, type: !7)
!4163 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 1568, column: 5)
!4164 = !DILabel(scope: !4165, name: "invalidate", file: !3, line: 1535)
!4165 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1482, column: 2)
!4166 = !DILocation(line: 0, scope: !4146)
!4167 = !DILocation(line: 1439, column: 28, scope: !4146)
!4168 = !DILocation(line: 1441, column: 7, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 1441, column: 7)
!4170 = !DILocation(line: 1441, column: 22, scope: !4169)
!4171 = !DILocation(line: 1441, column: 7, scope: !4146)
!4172 = !DILocation(line: 1443, column: 36, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 1442, column: 5)
!4174 = !DILocation(line: 1444, column: 8, scope: !4173)
!4175 = !DILocation(line: 1445, column: 8, scope: !4173)
!4176 = !DILocation(line: 1446, column: 8, scope: !4173)
!4177 = !DILocation(line: 1443, column: 15, scope: !4173)
!4178 = !DILocation(line: 1447, column: 15, scope: !4173)
!4179 = !DILocation(line: 1448, column: 13, scope: !4173)
!4180 = !DILocation(line: 0, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 1453, column: 7)
!4182 = !DILocation(line: 1453, column: 7, scope: !4181)
!4183 = !DILocation(line: 1449, column: 5, scope: !4173)
!4184 = !DILocation(line: 1453, column: 7, scope: !4146)
!4185 = !DILocation(line: 1455, column: 13, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 1454, column: 5)
!4187 = !DILocation(line: 1456, column: 11, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 1456, column: 11)
!4189 = !DILocation(line: 1456, column: 26, scope: !4188)
!4190 = !DILocation(line: 1456, column: 37, scope: !4188)
!4191 = !DILocation(line: 1456, column: 55, scope: !4188)
!4192 = !DILocation(line: 1457, column: 4, scope: !4188)
!4193 = !DILocation(line: 1457, column: 22, scope: !4188)
!4194 = !DILocation(line: 1457, column: 33, scope: !4188)
!4195 = !DILocation(line: 1457, column: 51, scope: !4188)
!4196 = !DILocation(line: 1456, column: 11, scope: !4186)
!4197 = !DILocation(line: 1458, column: 15, scope: !4188)
!4198 = !DILocation(line: 1458, column: 2, scope: !4188)
!4199 = !DILocation(line: 1458, column: 38, scope: !4188)
!4200 = !DILocation(line: 1461, column: 8, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 1461, column: 7)
!4202 = !DILocation(line: 1461, column: 7, scope: !4146)
!4203 = !DILocation(line: 1464, column: 12, scope: !4146)
!4204 = !DILocation(line: 1464, column: 9, scope: !4146)
!4205 = !DILocation(line: 1465, column: 8, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 1465, column: 7)
!4207 = !DILocation(line: 1465, column: 7, scope: !4146)
!4208 = !DILocation(line: 1466, column: 13, scope: !4206)
!4209 = !DILocation(line: 1466, column: 5, scope: !4206)
!4210 = !DILocation(line: 1468, column: 7, scope: !4157)
!4211 = !DILocation(line: 1469, column: 16, scope: !4157)
!4212 = !DILocation(line: 1469, column: 7, scope: !4157)
!4213 = !DILocation(line: 1469, column: 21, scope: !4157)
!4214 = !DILocation(line: 1469, column: 24, scope: !4157)
!4215 = !DILocation(line: 1469, column: 39, scope: !4157)
!4216 = !DILocation(line: 1470, column: 7, scope: !4157)
!4217 = !DILocation(line: 1470, column: 10, scope: !4157)
!4218 = !DILocation(line: 1470, column: 36, scope: !4157)
!4219 = !DILocation(line: 1471, column: 7, scope: !4157)
!4220 = !DILocation(line: 1471, column: 36, scope: !4157)
!4221 = !DILocation(line: 1468, column: 7, scope: !4146)
!4222 = !DILocation(line: 1473, column: 17, scope: !4156)
!4223 = !DILocation(line: 0, scope: !4156)
!4224 = !DILocation(line: 1481, column: 15, scope: !4156)
!4225 = !DILocation(line: 1481, column: 7, scope: !4156)
!4226 = !DILocation(line: 1484, column: 8, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1484, column: 8)
!4228 = !DILocation(line: 1484, column: 8, scope: !4165)
!4229 = !DILocation(line: 1488, column: 12, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 1488, column: 12)
!4231 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 1485, column: 6)
!4232 = !DILocation(line: 1488, column: 12, scope: !4231)
!4233 = !DILocation(line: 1489, column: 12, scope: !4230)
!4234 = !DILocation(line: 1489, column: 3, scope: !4230)
!4235 = !DILocation(line: 1490, column: 17, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 1490, column: 17)
!4237 = !DILocation(line: 1491, column: 10, scope: !4236)
!4238 = !DILocation(line: 1491, column: 27, scope: !4236)
!4239 = !DILocation(line: 1491, column: 14, scope: !4236)
!4240 = !DILocation(line: 1492, column: 9, scope: !4236)
!4241 = !DILocation(line: 1492, column: 7, scope: !4236)
!4242 = !DILocation(line: 1493, column: 10, scope: !4236)
!4243 = !DILocation(line: 1493, column: 14, scope: !4236)
!4244 = !DILocation(line: 1490, column: 17, scope: !4230)
!4245 = !DILocation(line: 1496, column: 22, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 1496, column: 9)
!4247 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 1495, column: 3)
!4248 = !DILocation(line: 1496, column: 9, scope: !4246)
!4249 = !DILocation(line: 1496, column: 45, scope: !4246)
!4250 = !DILocation(line: 1496, column: 9, scope: !4247)
!4251 = !DILocation(line: 1497, column: 27, scope: !4246)
!4252 = !DILocation(line: 1497, column: 16, scope: !4246)
!4253 = !DILocation(line: 1497, column: 7, scope: !4246)
!4254 = !DILocation(line: 1500, column: 27, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 1500, column: 14)
!4256 = !DILocation(line: 1500, column: 14, scope: !4255)
!4257 = !DILocation(line: 1501, column: 9, scope: !4255)
!4258 = !DILocation(line: 1501, column: 7, scope: !4255)
!4259 = !DILocation(line: 1502, column: 7, scope: !4255)
!4260 = !DILocation(line: 1502, column: 11, scope: !4255)
!4261 = !DILocation(line: 1504, column: 7, scope: !4255)
!4262 = !DILocation(line: 1504, column: 23, scope: !4255)
!4263 = !DILocation(line: 1504, column: 10, scope: !4255)
!4264 = !DILocation(line: 1504, column: 41, scope: !4255)
!4265 = !DILocation(line: 1500, column: 14, scope: !4246)
!4266 = !DILocation(line: 1506, column: 29, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 1505, column: 7)
!4268 = !DILocation(line: 1506, column: 18, scope: !4267)
!4269 = !DILocation(line: 1507, column: 20, scope: !4267)
!4270 = !DILocation(line: 1527, column: 4, scope: !4165)
!4271 = !DILocation(line: 1527, column: 24, scope: !4165)
!4272 = !DILocation(line: 1528, column: 24, scope: !4165)
!4273 = !DILocation(line: 1528, column: 4, scope: !4165)
!4274 = !DILocation(line: 1528, column: 22, scope: !4165)
!4275 = !DILocation(line: 1530, column: 26, scope: !4165)
!4276 = !DILocation(line: 1530, column: 51, scope: !4165)
!4277 = !DILocation(line: 1530, column: 4, scope: !4165)
!4278 = !DILocation(line: 1530, column: 24, scope: !4165)
!4279 = !DILocation(line: 1531, column: 4, scope: !4165)
!4280 = !DILocation(line: 1531, column: 20, scope: !4165)
!4281 = !DILocation(line: 1532, column: 4, scope: !4165)
!4282 = !DILocation(line: 1535, column: 2, scope: !4165)
!4283 = !DILocation(line: 1537, column: 4, scope: !4165)
!4284 = !DILocation(line: 1537, column: 24, scope: !4165)
!4285 = !DILocation(line: 1538, column: 4, scope: !4165)
!4286 = !DILocation(line: 0, scope: !4165)
!4287 = !DILocation(line: 1541, column: 20, scope: !4156)
!4288 = !DILocation(line: 1545, column: 11, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1545, column: 11)
!4290 = !DILocation(line: 1545, column: 39, scope: !4289)
!4291 = !DILocation(line: 1545, column: 36, scope: !4289)
!4292 = !DILocation(line: 1545, column: 11, scope: !4156)
!4293 = !DILocation(line: 1547, column: 4, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 1546, column: 2)
!4295 = !DILocation(line: 1547, column: 29, scope: !4294)
!4296 = !DILocation(line: 1548, column: 4, scope: !4294)
!4297 = !DILocation(line: 1548, column: 27, scope: !4294)
!4298 = !DILocation(line: 1549, column: 31, scope: !4294)
!4299 = !DILocation(line: 1549, column: 29, scope: !4294)
!4300 = !DILocation(line: 1550, column: 4, scope: !4294)
!4301 = !DILocation(line: 1550, column: 25, scope: !4294)
!4302 = !DILocation(line: 1551, column: 2, scope: !4294)
!4303 = !DILocation(line: 1552, column: 18, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 1552, column: 16)
!4305 = !DILocation(line: 1552, column: 16, scope: !4289)
!4306 = !DILocation(line: 1559, column: 29, scope: !4156)
!4307 = !DILocation(line: 1556, column: 7, scope: !4156)
!4308 = !DILocation(line: 1556, column: 23, scope: !4156)
!4309 = !DILocation(line: 1559, column: 7, scope: !4156)
!4310 = !DILocation(line: 1559, column: 27, scope: !4156)
!4311 = !DILocation(line: 1560, column: 29, scope: !4156)
!4312 = !DILocation(line: 1560, column: 7, scope: !4156)
!4313 = !DILocation(line: 1560, column: 27, scope: !4156)
!4314 = !DILocation(line: 1564, column: 14, scope: !4156)
!4315 = !DILocation(line: 1564, column: 12, scope: !4156)
!4316 = !DILocation(line: 1563, column: 27, scope: !4156)
!4317 = !DILocation(line: 1563, column: 7, scope: !4156)
!4318 = !DILocation(line: 1563, column: 25, scope: !4156)
!4319 = !DILocation(line: 1566, column: 5, scope: !4157)
!4320 = !DILocation(line: 1569, column: 37, scope: !4163)
!4321 = !DILocation(line: 0, scope: !4163)
!4322 = !DILocation(line: 1571, column: 12, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 1571, column: 7)
!4324 = !DILocation(line: 0, scope: !4323)
!4325 = !DILocation(line: 1571, column: 25, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1571, column: 7)
!4327 = !DILocation(line: 1571, column: 7, scope: !4323)
!4328 = !DILocation(line: 1573, column: 2, scope: !4326)
!4329 = !DILocation(line: 1573, column: 18, scope: !4326)
!4330 = !DILocation(line: 1571, column: 38, scope: !4326)
!4331 = !DILocation(line: 1571, column: 7, scope: !4326)
!4332 = distinct !{!4332, !4327, !4333}
!4333 = !DILocation(line: 1573, column: 20, scope: !4323)
!4334 = !DILocation(line: 1575, column: 1, scope: !4146)
