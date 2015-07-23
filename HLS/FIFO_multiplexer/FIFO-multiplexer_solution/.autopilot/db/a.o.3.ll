; ModuleID = '/home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=25 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=78 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [17 x i8] c"FIFO_multiplexer\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @FIFO_multiplexer(i1* %switch_select, i32* %rx_data_a, i1* %rx_ready_a, i1* %rx_valid_a, i1* %rx_tlast_a, i32* %rx_data_b, i1* %rx_ready_b, i1* %rx_valid_b, i1* %rx_tlast_b, i32* %rx_data, i1* %rx_ready, i1* %rx_valid, i1* %rx_tlast, i32* %tx_data_a, i1* %tx_ready_a, i1* %tx_valid_a, i1* %tx_tlast_a, i32* %tx_data_b, i1* %tx_ready_b, i1* %tx_valid_b, i1* %tx_tlast_b, i32* %tx_data, i1* %tx_ready, i1* %tx_valid, i1* %tx_tlast) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %switch_select) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_a) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_a) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast_a) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_b) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_b) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_b) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast_b) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_a) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_a) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_a) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast_a) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_b) nounwind, !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_b) nounwind, !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_b) nounwind, !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast_b) nounwind, !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data) nounwind, !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready) nounwind, !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid) nounwind, !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast) nounwind, !map !98
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i1* %switch_select}, i64 0, metadata !102), !dbg !115 ; [debug line = 4:17] [debug variable = switch_select]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_a}, i64 0, metadata !116), !dbg !117 ; [debug line = 5:16] [debug variable = rx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_a}, i64 0, metadata !118), !dbg !119 ; [debug line = 6:17] [debug variable = rx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_a}, i64 0, metadata !120), !dbg !121 ; [debug line = 7:17] [debug variable = rx_valid_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast_a}, i64 0, metadata !122), !dbg !123 ; [debug line = 8:17] [debug variable = rx_tlast_a]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_b}, i64 0, metadata !124), !dbg !125 ; [debug line = 9:16] [debug variable = rx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_b}, i64 0, metadata !126), !dbg !127 ; [debug line = 10:17] [debug variable = rx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_b}, i64 0, metadata !128), !dbg !129 ; [debug line = 11:17] [debug variable = rx_valid_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast_b}, i64 0, metadata !130), !dbg !131 ; [debug line = 12:17] [debug variable = rx_tlast_b]
  call void @llvm.dbg.value(metadata !{i32* %rx_data}, i64 0, metadata !132), !dbg !133 ; [debug line = 13:16] [debug variable = rx_data]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready}, i64 0, metadata !134), !dbg !135 ; [debug line = 14:17] [debug variable = rx_ready]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid}, i64 0, metadata !136), !dbg !137 ; [debug line = 15:17] [debug variable = rx_valid]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast}, i64 0, metadata !138), !dbg !139 ; [debug line = 16:17] [debug variable = rx_tlast]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_a}, i64 0, metadata !140), !dbg !141 ; [debug line = 17:16] [debug variable = tx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_a}, i64 0, metadata !142), !dbg !143 ; [debug line = 18:17] [debug variable = tx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_a}, i64 0, metadata !144), !dbg !145 ; [debug line = 19:17] [debug variable = tx_valid_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast_a}, i64 0, metadata !146), !dbg !147 ; [debug line = 20:17] [debug variable = tx_tlast_a]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_b}, i64 0, metadata !148), !dbg !149 ; [debug line = 21:16] [debug variable = tx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_b}, i64 0, metadata !150), !dbg !151 ; [debug line = 22:17] [debug variable = tx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_b}, i64 0, metadata !152), !dbg !153 ; [debug line = 23:17] [debug variable = tx_valid_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast_b}, i64 0, metadata !154), !dbg !155 ; [debug line = 24:17] [debug variable = tx_tlast_b]
  call void @llvm.dbg.value(metadata !{i32* %tx_data}, i64 0, metadata !156), !dbg !157 ; [debug line = 25:16] [debug variable = tx_data]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready}, i64 0, metadata !158), !dbg !159 ; [debug line = 26:17] [debug variable = tx_ready]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid}, i64 0, metadata !160), !dbg !161 ; [debug line = 27:17] [debug variable = tx_valid]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast}, i64 0, metadata !162), !dbg !163 ; [debug line = 28:17] [debug variable = tx_tlast]
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !164 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !166 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !167 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !168 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !169 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !170 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !171 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !172 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !173 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !174 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !175 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !176 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !177 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !178 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !179 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !180 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !181 ; [debug line = 49:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !182 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !183 ; [debug line = 51:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !184 ; [debug line = 52:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !185 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !186 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !187 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !188 ; [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !189 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !190 ; [debug line = 59:1]
  %switch_select_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %switch_select) nounwind, !dbg !191 ; [#uses=1 type=i1] [debug line = 61:2]
  br i1 %switch_select_read, label %1, label %2, !dbg !191 ; [debug line = 61:2]

; <label>:1                                       ; preds = %0
  %rx_data_b_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_b) nounwind, !dbg !192 ; [#uses=1 type=i32] [debug line = 62:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_b_read) nounwind, !dbg !192 ; [debug line = 62:3]
  %rx_valid_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_b) nounwind, !dbg !194 ; [#uses=1 type=i1] [debug line = 63:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_b_read) nounwind, !dbg !194 ; [debug line = 63:3]
  %rx_ready_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind, !dbg !195 ; [#uses=1 type=i1] [debug line = 64:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_b, i1 %rx_ready_read) nounwind, !dbg !195 ; [debug line = 64:3]
  %rx_tlast_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_tlast_b) nounwind, !dbg !196 ; [#uses=1 type=i1] [debug line = 65:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_tlast, i1 %rx_tlast_b_read) nounwind, !dbg !196 ; [debug line = 65:3]
  %tx_ready_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_b) nounwind, !dbg !197 ; [#uses=1 type=i1] [debug line = 67:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_b_read) nounwind, !dbg !197 ; [debug line = 67:3]
  %tx_data_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind, !dbg !198 ; [#uses=1 type=i32] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_b, i32 %tx_data_read) nounwind, !dbg !198 ; [debug line = 69:3]
  %tx_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind, !dbg !199 ; [#uses=1 type=i1] [debug line = 70:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_b, i1 %tx_valid_read) nounwind, !dbg !199 ; [debug line = 70:3]
  %tx_tlast_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_tlast) nounwind, !dbg !200 ; [#uses=1 type=i1] [debug line = 71:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_b, i1 %tx_tlast_read) nounwind, !dbg !200 ; [debug line = 71:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_a, i1 false) nounwind, !dbg !201 ; [debug line = 73:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_a, i32 0) nounwind, !dbg !202 ; [debug line = 75:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_a, i1 false) nounwind, !dbg !203 ; [debug line = 76:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_a, i1 false) nounwind, !dbg !204 ; [debug line = 77:3]
  br label %3, !dbg !205                          ; [debug line = 78:2]

; <label>:2                                       ; preds = %0
  %rx_data_a_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_a) nounwind, !dbg !206 ; [#uses=1 type=i32] [debug line = 80:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_a_read) nounwind, !dbg !206 ; [debug line = 80:3]
  %rx_valid_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_a) nounwind, !dbg !208 ; [#uses=1 type=i1] [debug line = 81:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_a_read) nounwind, !dbg !208 ; [debug line = 81:3]
  %rx_ready_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind, !dbg !209 ; [#uses=1 type=i1] [debug line = 82:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_a, i1 %rx_ready_read_1) nounwind, !dbg !209 ; [debug line = 82:3]
  %rx_tlast_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_tlast_a) nounwind, !dbg !210 ; [#uses=1 type=i1] [debug line = 83:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_tlast, i1 %rx_tlast_a_read) nounwind, !dbg !210 ; [debug line = 83:3]
  %tx_ready_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_a) nounwind, !dbg !211 ; [#uses=1 type=i1] [debug line = 85:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_a_read) nounwind, !dbg !211 ; [debug line = 85:3]
  %tx_data_read_1 = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind, !dbg !212 ; [#uses=1 type=i32] [debug line = 87:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_a, i32 %tx_data_read_1) nounwind, !dbg !212 ; [debug line = 87:3]
  %tx_valid_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind, !dbg !213 ; [#uses=1 type=i1] [debug line = 88:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_a, i1 %tx_valid_read_1) nounwind, !dbg !213 ; [debug line = 88:3]
  %tx_tlast_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_tlast) nounwind, !dbg !214 ; [#uses=1 type=i1] [debug line = 89:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_a, i1 %tx_tlast_read_1) nounwind, !dbg !214 ; [debug line = 89:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_b, i1 false) nounwind, !dbg !215 ; [debug line = 91:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_b, i32 0) nounwind, !dbg !216 ; [debug line = 93:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_b, i1 false) nounwind, !dbg !217 ; [debug line = 94:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_b, i1 false) nounwind, !dbg !218 ; [debug line = 95:3]
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !219                             ; [debug line = 98:1]
}

; [#uses=26]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=25]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=13]
define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0                            ; [#uses=1 type=i1]
  ret i1 %empty
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=18]
define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_Write.ap_none.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 0, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"switch_select", metadata !4, metadata !"bool", i32 0, i32 0}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"rx_data_a", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"rx_ready_a", metadata !4, metadata !"bool", i32 0, i32 0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"rx_valid_a", metadata !4, metadata !"bool", i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"rx_tlast_a", metadata !4, metadata !"bool", i32 0, i32 0}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"rx_data_b", metadata !4, metadata !"int", i32 0, i32 31}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 0, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"rx_ready_b", metadata !4, metadata !"bool", i32 0, i32 0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"rx_valid_b", metadata !4, metadata !"bool", i32 0, i32 0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"rx_tlast_b", metadata !4, metadata !"bool", i32 0, i32 0}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"rx_data", metadata !4, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 0, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"rx_ready", metadata !4, metadata !"bool", i32 0, i32 0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"rx_valid", metadata !4, metadata !"bool", i32 0, i32 0}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"rx_tlast", metadata !4, metadata !"bool", i32 0, i32 0}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"tx_data_a", metadata !4, metadata !"int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 0, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"tx_ready_a", metadata !4, metadata !"bool", i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 0, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"tx_valid_a", metadata !4, metadata !"bool", i32 0, i32 0}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 0, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"tx_tlast_a", metadata !4, metadata !"bool", i32 0, i32 0}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 31, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"tx_data_b", metadata !4, metadata !"int", i32 0, i32 31}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"tx_ready_b", metadata !4, metadata !"bool", i32 0, i32 0}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 0, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"tx_valid_b", metadata !4, metadata !"bool", i32 0, i32 0}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 0, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"tx_tlast_b", metadata !4, metadata !"bool", i32 0, i32 0}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 31, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"tx_data", metadata !4, metadata !"int", i32 0, i32 31}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 0, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"tx_ready", metadata !4, metadata !"bool", i32 0, i32 0}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 0, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"tx_valid", metadata !4, metadata !"bool", i32 0, i32 0}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 0, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"tx_tlast", metadata !4, metadata !"bool", i32 0, i32 0}
!102 = metadata !{i32 786689, metadata !103, metadata !"switch_select", metadata !104, i32 16777220, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 786478, i32 0, metadata !104, metadata !"FIFO_multiplexer", metadata !"FIFO_multiplexer", metadata !"_Z16FIFO_multiplexerPVbPViS0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_", metadata !104, i32 3, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*)* @FIFO_multiplexer, null, null, metadata !113, i32 29} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786473, metadata !"FIFO_multiplexer/FIFO_multiplexer.cpp", metadata !"/home/controls/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107, metadata !110, metadata !107, metadata !107, metadata !107}
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_volatile_type ]
!109 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_volatile_type ]
!112 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!115 = metadata !{i32 4, i32 17, metadata !103, null}
!116 = metadata !{i32 786689, metadata !103, metadata !"rx_data_a", metadata !104, i32 33554437, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 5, i32 16, metadata !103, null}
!118 = metadata !{i32 786689, metadata !103, metadata !"rx_ready_a", metadata !104, i32 50331654, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 6, i32 17, metadata !103, null}
!120 = metadata !{i32 786689, metadata !103, metadata !"rx_valid_a", metadata !104, i32 67108871, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 7, i32 17, metadata !103, null}
!122 = metadata !{i32 786689, metadata !103, metadata !"rx_tlast_a", metadata !104, i32 83886088, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 8, i32 17, metadata !103, null}
!124 = metadata !{i32 786689, metadata !103, metadata !"rx_data_b", metadata !104, i32 100663305, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 9, i32 16, metadata !103, null}
!126 = metadata !{i32 786689, metadata !103, metadata !"rx_ready_b", metadata !104, i32 117440522, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 10, i32 17, metadata !103, null}
!128 = metadata !{i32 786689, metadata !103, metadata !"rx_valid_b", metadata !104, i32 134217739, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 11, i32 17, metadata !103, null}
!130 = metadata !{i32 786689, metadata !103, metadata !"rx_tlast_b", metadata !104, i32 150994956, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 12, i32 17, metadata !103, null}
!132 = metadata !{i32 786689, metadata !103, metadata !"rx_data", metadata !104, i32 167772173, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 13, i32 16, metadata !103, null}
!134 = metadata !{i32 786689, metadata !103, metadata !"rx_ready", metadata !104, i32 184549390, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 14, i32 17, metadata !103, null}
!136 = metadata !{i32 786689, metadata !103, metadata !"rx_valid", metadata !104, i32 201326607, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 15, i32 17, metadata !103, null}
!138 = metadata !{i32 786689, metadata !103, metadata !"rx_tlast", metadata !104, i32 218103824, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 16, i32 17, metadata !103, null}
!140 = metadata !{i32 786689, metadata !103, metadata !"tx_data_a", metadata !104, i32 234881041, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 17, i32 16, metadata !103, null}
!142 = metadata !{i32 786689, metadata !103, metadata !"tx_ready_a", metadata !104, i32 251658258, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 18, i32 17, metadata !103, null}
!144 = metadata !{i32 786689, metadata !103, metadata !"tx_valid_a", metadata !104, i32 268435475, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 19, i32 17, metadata !103, null}
!146 = metadata !{i32 786689, metadata !103, metadata !"tx_tlast_a", metadata !104, i32 285212692, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 20, i32 17, metadata !103, null}
!148 = metadata !{i32 786689, metadata !103, metadata !"tx_data_b", metadata !104, i32 301989909, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 21, i32 16, metadata !103, null}
!150 = metadata !{i32 786689, metadata !103, metadata !"tx_ready_b", metadata !104, i32 318767126, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 22, i32 17, metadata !103, null}
!152 = metadata !{i32 786689, metadata !103, metadata !"tx_valid_b", metadata !104, i32 335544343, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 23, i32 17, metadata !103, null}
!154 = metadata !{i32 786689, metadata !103, metadata !"tx_tlast_b", metadata !104, i32 352321560, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 24, i32 17, metadata !103, null}
!156 = metadata !{i32 786689, metadata !103, metadata !"tx_data", metadata !104, i32 369098777, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 25, i32 16, metadata !103, null}
!158 = metadata !{i32 786689, metadata !103, metadata !"tx_ready", metadata !104, i32 385875994, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 26, i32 17, metadata !103, null}
!160 = metadata !{i32 786689, metadata !103, metadata !"tx_valid", metadata !104, i32 402653211, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 27, i32 17, metadata !103, null}
!162 = metadata !{i32 786689, metadata !103, metadata !"tx_tlast", metadata !104, i32 419430428, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 28, i32 17, metadata !103, null}
!164 = metadata !{i32 31, i32 1, metadata !165, null}
!165 = metadata !{i32 786443, metadata !103, i32 29, i32 2, metadata !104, i32 0} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 33, i32 1, metadata !165, null}
!167 = metadata !{i32 34, i32 1, metadata !165, null}
!168 = metadata !{i32 35, i32 1, metadata !165, null}
!169 = metadata !{i32 36, i32 1, metadata !165, null}
!170 = metadata !{i32 37, i32 1, metadata !165, null}
!171 = metadata !{i32 38, i32 1, metadata !165, null}
!172 = metadata !{i32 39, i32 1, metadata !165, null}
!173 = metadata !{i32 40, i32 1, metadata !165, null}
!174 = metadata !{i32 41, i32 1, metadata !165, null}
!175 = metadata !{i32 42, i32 1, metadata !165, null}
!176 = metadata !{i32 43, i32 1, metadata !165, null}
!177 = metadata !{i32 44, i32 1, metadata !165, null}
!178 = metadata !{i32 46, i32 1, metadata !165, null}
!179 = metadata !{i32 47, i32 1, metadata !165, null}
!180 = metadata !{i32 48, i32 1, metadata !165, null}
!181 = metadata !{i32 49, i32 1, metadata !165, null}
!182 = metadata !{i32 50, i32 1, metadata !165, null}
!183 = metadata !{i32 51, i32 1, metadata !165, null}
!184 = metadata !{i32 52, i32 1, metadata !165, null}
!185 = metadata !{i32 53, i32 1, metadata !165, null}
!186 = metadata !{i32 54, i32 1, metadata !165, null}
!187 = metadata !{i32 55, i32 1, metadata !165, null}
!188 = metadata !{i32 56, i32 1, metadata !165, null}
!189 = metadata !{i32 57, i32 1, metadata !165, null}
!190 = metadata !{i32 59, i32 1, metadata !165, null}
!191 = metadata !{i32 61, i32 2, metadata !165, null}
!192 = metadata !{i32 62, i32 3, metadata !193, null}
!193 = metadata !{i32 786443, metadata !165, i32 61, i32 20, metadata !104, i32 1} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 63, i32 3, metadata !193, null}
!195 = metadata !{i32 64, i32 3, metadata !193, null}
!196 = metadata !{i32 65, i32 3, metadata !193, null}
!197 = metadata !{i32 67, i32 3, metadata !193, null}
!198 = metadata !{i32 69, i32 3, metadata !193, null}
!199 = metadata !{i32 70, i32 3, metadata !193, null}
!200 = metadata !{i32 71, i32 3, metadata !193, null}
!201 = metadata !{i32 73, i32 3, metadata !193, null}
!202 = metadata !{i32 75, i32 3, metadata !193, null}
!203 = metadata !{i32 76, i32 3, metadata !193, null}
!204 = metadata !{i32 77, i32 3, metadata !193, null}
!205 = metadata !{i32 78, i32 2, metadata !193, null}
!206 = metadata !{i32 80, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !165, i32 79, i32 6, metadata !104, i32 2} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 81, i32 3, metadata !207, null}
!209 = metadata !{i32 82, i32 3, metadata !207, null}
!210 = metadata !{i32 83, i32 3, metadata !207, null}
!211 = metadata !{i32 85, i32 3, metadata !207, null}
!212 = metadata !{i32 87, i32 3, metadata !207, null}
!213 = metadata !{i32 88, i32 3, metadata !207, null}
!214 = metadata !{i32 89, i32 3, metadata !207, null}
!215 = metadata !{i32 91, i32 3, metadata !207, null}
!216 = metadata !{i32 93, i32 3, metadata !207, null}
!217 = metadata !{i32 94, i32 3, metadata !207, null}
!218 = metadata !{i32 95, i32 3, metadata !207, null}
!219 = metadata !{i32 98, i32 1, metadata !165, null}
