; ModuleID = '/home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=25 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=78 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [17 x i8] c"FIFO_multiplexer\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @FIFO_multiplexer(i1* %switch_select, i32* %rx_data_a, i1* %rx_ready_a, i1* %rx_valid_a, i1* %rx_tlast_a, i32* %rx_data_b, i1* %rx_ready_b, i1* %rx_valid_b, i1* %rx_tlast_b, i32* %rx_data, i1* %rx_ready, i1* %rx_valid, i1* %rx_tlast, i32* %tx_data_a, i1* %tx_ready_a, i1* %tx_valid_a, i1* %tx_tlast_a, i32* %tx_data_b, i1* %tx_ready_b, i1* %tx_valid_b, i1* %tx_tlast_b, i32* %tx_data, i1* %tx_ready, i1* %tx_valid, i1* %tx_tlast) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %switch_select) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_a) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_a) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_a) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast_a) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_b) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_b) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_b) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast_b) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid) nounwind, !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_tlast) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_a) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_a) nounwind, !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_a) nounwind, !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast_a) nounwind, !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_b) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_b) nounwind, !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_b) nounwind, !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast_b) nounwind, !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data) nounwind, !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready) nounwind, !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid) nounwind, !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_tlast) nounwind, !map !125
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i1* %switch_select}, i64 0, metadata !129), !dbg !130 ; [debug line = 4:17] [debug variable = switch_select]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_a}, i64 0, metadata !131), !dbg !132 ; [debug line = 5:16] [debug variable = rx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_a}, i64 0, metadata !133), !dbg !134 ; [debug line = 6:17] [debug variable = rx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_a}, i64 0, metadata !135), !dbg !136 ; [debug line = 7:17] [debug variable = rx_valid_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast_a}, i64 0, metadata !137), !dbg !138 ; [debug line = 8:17] [debug variable = rx_tlast_a]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_b}, i64 0, metadata !139), !dbg !140 ; [debug line = 9:16] [debug variable = rx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_b}, i64 0, metadata !141), !dbg !142 ; [debug line = 10:17] [debug variable = rx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_b}, i64 0, metadata !143), !dbg !144 ; [debug line = 11:17] [debug variable = rx_valid_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast_b}, i64 0, metadata !145), !dbg !146 ; [debug line = 12:17] [debug variable = rx_tlast_b]
  call void @llvm.dbg.value(metadata !{i32* %rx_data}, i64 0, metadata !147), !dbg !148 ; [debug line = 13:16] [debug variable = rx_data]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready}, i64 0, metadata !149), !dbg !150 ; [debug line = 14:17] [debug variable = rx_ready]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid}, i64 0, metadata !151), !dbg !152 ; [debug line = 15:17] [debug variable = rx_valid]
  call void @llvm.dbg.value(metadata !{i1* %rx_tlast}, i64 0, metadata !153), !dbg !154 ; [debug line = 16:17] [debug variable = rx_tlast]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_a}, i64 0, metadata !155), !dbg !156 ; [debug line = 17:16] [debug variable = tx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_a}, i64 0, metadata !157), !dbg !158 ; [debug line = 18:17] [debug variable = tx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_a}, i64 0, metadata !159), !dbg !160 ; [debug line = 19:17] [debug variable = tx_valid_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast_a}, i64 0, metadata !161), !dbg !162 ; [debug line = 20:17] [debug variable = tx_tlast_a]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_b}, i64 0, metadata !163), !dbg !164 ; [debug line = 21:16] [debug variable = tx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_b}, i64 0, metadata !165), !dbg !166 ; [debug line = 22:17] [debug variable = tx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_b}, i64 0, metadata !167), !dbg !168 ; [debug line = 23:17] [debug variable = tx_valid_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast_b}, i64 0, metadata !169), !dbg !170 ; [debug line = 24:17] [debug variable = tx_tlast_b]
  call void @llvm.dbg.value(metadata !{i32* %tx_data}, i64 0, metadata !171), !dbg !172 ; [debug line = 25:16] [debug variable = tx_data]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready}, i64 0, metadata !173), !dbg !174 ; [debug line = 26:17] [debug variable = tx_ready]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid}, i64 0, metadata !175), !dbg !176 ; [debug line = 27:17] [debug variable = tx_valid]
  call void @llvm.dbg.value(metadata !{i1* %tx_tlast}, i64 0, metadata !177), !dbg !178 ; [debug line = 28:17] [debug variable = tx_tlast]
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !179 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !181 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !182 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !183 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !184 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !185 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !186 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !187 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !188 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !189 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !190 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !191 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !192 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !193 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !194 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !195 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !196 ; [debug line = 49:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !197 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !198 ; [debug line = 51:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !199 ; [debug line = 52:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !200 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !201 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !202 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !203 ; [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !204 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !205 ; [debug line = 59:1]
  %switch_select.load = load volatile i1* %switch_select, align 1, !dbg !206 ; [#uses=1 type=i1] [debug line = 61:2]
  br i1 %switch_select.load, label %1, label %2, !dbg !206 ; [debug line = 61:2]

; <label>:1                                       ; preds = %0
  %rx_data_b.load = load volatile i32* %rx_data_b, align 4, !dbg !207 ; [#uses=1 type=i32] [debug line = 62:3]
  store volatile i32 %rx_data_b.load, i32* %rx_data, align 4, !dbg !207 ; [debug line = 62:3]
  %rx_valid_b.load = load volatile i1* %rx_valid_b, align 1, !dbg !209 ; [#uses=1 type=i1] [debug line = 63:3]
  store volatile i1 %rx_valid_b.load, i1* %rx_valid, align 1, !dbg !209 ; [debug line = 63:3]
  %rx_ready.load = load volatile i1* %rx_ready, align 1, !dbg !210 ; [#uses=1 type=i1] [debug line = 64:3]
  store volatile i1 %rx_ready.load, i1* %rx_ready_b, align 1, !dbg !210 ; [debug line = 64:3]
  %rx_tlast_b.load = load volatile i1* %rx_tlast_b, align 1, !dbg !211 ; [#uses=1 type=i1] [debug line = 65:3]
  store volatile i1 %rx_tlast_b.load, i1* %rx_tlast, align 1, !dbg !211 ; [debug line = 65:3]
  %tx_ready_b.load = load volatile i1* %tx_ready_b, align 1, !dbg !212 ; [#uses=1 type=i1] [debug line = 67:3]
  store volatile i1 %tx_ready_b.load, i1* %tx_ready, align 1, !dbg !212 ; [debug line = 67:3]
  %tx_data.load = load volatile i32* %tx_data, align 4, !dbg !213 ; [#uses=1 type=i32] [debug line = 69:3]
  store volatile i32 %tx_data.load, i32* %tx_data_b, align 4, !dbg !213 ; [debug line = 69:3]
  %tx_valid.load = load volatile i1* %tx_valid, align 1, !dbg !214 ; [#uses=1 type=i1] [debug line = 70:3]
  store volatile i1 %tx_valid.load, i1* %tx_valid_b, align 1, !dbg !214 ; [debug line = 70:3]
  %tx_tlast.load = load volatile i1* %tx_tlast, align 1, !dbg !215 ; [#uses=1 type=i1] [debug line = 71:3]
  store volatile i1 %tx_tlast.load, i1* %tx_tlast_b, align 1, !dbg !215 ; [debug line = 71:3]
  store volatile i1 false, i1* %rx_ready_a, align 1, !dbg !216 ; [debug line = 73:3]
  store volatile i32 0, i32* %tx_data_a, align 4, !dbg !217 ; [debug line = 75:3]
  store volatile i1 false, i1* %tx_valid_a, align 1, !dbg !218 ; [debug line = 76:3]
  store volatile i1 false, i1* %tx_tlast_a, align 1, !dbg !219 ; [debug line = 77:3]
  br label %3, !dbg !220                          ; [debug line = 78:2]

; <label>:2                                       ; preds = %0
  %rx_data_a.load = load volatile i32* %rx_data_a, align 4, !dbg !221 ; [#uses=1 type=i32] [debug line = 80:3]
  store volatile i32 %rx_data_a.load, i32* %rx_data, align 4, !dbg !221 ; [debug line = 80:3]
  %rx_valid_a.load = load volatile i1* %rx_valid_a, align 1, !dbg !223 ; [#uses=1 type=i1] [debug line = 81:3]
  store volatile i1 %rx_valid_a.load, i1* %rx_valid, align 1, !dbg !223 ; [debug line = 81:3]
  %rx_ready.load.1 = load volatile i1* %rx_ready, align 1, !dbg !224 ; [#uses=1 type=i1] [debug line = 82:3]
  store volatile i1 %rx_ready.load.1, i1* %rx_ready_a, align 1, !dbg !224 ; [debug line = 82:3]
  %rx_tlast_a.load = load volatile i1* %rx_tlast_a, align 1, !dbg !225 ; [#uses=1 type=i1] [debug line = 83:3]
  store volatile i1 %rx_tlast_a.load, i1* %rx_tlast, align 1, !dbg !225 ; [debug line = 83:3]
  %tx_ready_a.load = load volatile i1* %tx_ready_a, align 1, !dbg !226 ; [#uses=1 type=i1] [debug line = 85:3]
  store volatile i1 %tx_ready_a.load, i1* %tx_ready, align 1, !dbg !226 ; [debug line = 85:3]
  %tx_data.load.1 = load volatile i32* %tx_data, align 4, !dbg !227 ; [#uses=1 type=i32] [debug line = 87:3]
  store volatile i32 %tx_data.load.1, i32* %tx_data_a, align 4, !dbg !227 ; [debug line = 87:3]
  %tx_valid.load.1 = load volatile i1* %tx_valid, align 1, !dbg !228 ; [#uses=1 type=i1] [debug line = 88:3]
  store volatile i1 %tx_valid.load.1, i1* %tx_valid_a, align 1, !dbg !228 ; [debug line = 88:3]
  %tx_tlast.load.1 = load volatile i1* %tx_tlast, align 1, !dbg !229 ; [#uses=1 type=i1] [debug line = 89:3]
  store volatile i1 %tx_tlast.load.1, i1* %tx_tlast_a, align 1, !dbg !229 ; [debug line = 89:3]
  store volatile i1 false, i1* %rx_ready_b, align 1, !dbg !230 ; [debug line = 91:3]
  store volatile i32 0, i32* %tx_data_b, align 4, !dbg !231 ; [debug line = 93:3]
  store volatile i1 false, i1* %tx_valid_b, align 1, !dbg !232 ; [debug line = 94:3]
  store volatile i1 false, i1* %tx_tlast_b, align 1, !dbg !233 ; [debug line = 95:3]
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !234                             ; [debug line = 98:1]
}

; [#uses=26]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=25]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/.autopilot/db/FIFO_multiplexer.pragma.2.cpp", metadata !"/home/controls/TAIGA/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !17} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"FIFO_multiplexer", metadata !"FIFO_multiplexer", metadata !"_Z16FIFO_multiplexerPVbPViS0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_S2_S0_S0_S0_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*, i32*, i1*, i1*, i1*)* @FIFO_multiplexer, null, null, metadata !15, i32 29} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"FIFO_multiplexer/FIFO_multiplexer.cpp", metadata !"/home/controls/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ]
!11 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_volatile_type ]
!14 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !22, metadata !23, metadata !24, metadata !26}
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !20, i32 320, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/controls/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !20, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !20, i32 321, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !20, i32 322, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !25, i32 26, metadata !14, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/controls/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !25, i32 30, metadata !14, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"switch_select", metadata !31, metadata !"bool", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"rx_data_a", metadata !31, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"rx_ready_a", metadata !31, metadata !"bool", i32 0, i32 0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"rx_valid_a", metadata !31, metadata !"bool", i32 0, i32 0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"rx_tlast_a", metadata !31, metadata !"bool", i32 0, i32 0}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"rx_data_b", metadata !31, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"rx_ready_b", metadata !31, metadata !"bool", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"rx_valid_b", metadata !31, metadata !"bool", i32 0, i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"rx_tlast_b", metadata !31, metadata !"bool", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"rx_data", metadata !31, metadata !"int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"rx_ready", metadata !31, metadata !"bool", i32 0, i32 0}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"rx_valid", metadata !31, metadata !"bool", i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 0, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"rx_tlast", metadata !31, metadata !"bool", i32 0, i32 0}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"tx_data_a", metadata !31, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 0, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"tx_ready_a", metadata !31, metadata !"bool", i32 0, i32 0}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"tx_valid_a", metadata !31, metadata !"bool", i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 0, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"tx_tlast_a", metadata !31, metadata !"bool", i32 0, i32 0}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"tx_data_b", metadata !31, metadata !"int", i32 0, i32 31}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 0, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"tx_ready_b", metadata !31, metadata !"bool", i32 0, i32 0}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 0, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"tx_valid_b", metadata !31, metadata !"bool", i32 0, i32 0}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 0, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"tx_tlast_b", metadata !31, metadata !"bool", i32 0, i32 0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"tx_data", metadata !31, metadata !"int", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"tx_ready", metadata !31, metadata !"bool", i32 0, i32 0}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 0, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"tx_valid", metadata !31, metadata !"bool", i32 0, i32 0}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 0, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"tx_tlast", metadata !31, metadata !"bool", i32 0, i32 0}
!129 = metadata !{i32 786689, metadata !5, metadata !"switch_select", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 4, i32 17, metadata !5, null}
!131 = metadata !{i32 786689, metadata !5, metadata !"rx_data_a", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 5, i32 16, metadata !5, null}
!133 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_a", metadata !6, i32 50331654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 6, i32 17, metadata !5, null}
!135 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_a", metadata !6, i32 67108871, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 7, i32 17, metadata !5, null}
!137 = metadata !{i32 786689, metadata !5, metadata !"rx_tlast_a", metadata !6, i32 83886088, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 8, i32 17, metadata !5, null}
!139 = metadata !{i32 786689, metadata !5, metadata !"rx_data_b", metadata !6, i32 100663305, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 9, i32 16, metadata !5, null}
!141 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_b", metadata !6, i32 117440522, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 10, i32 17, metadata !5, null}
!143 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_b", metadata !6, i32 134217739, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 11, i32 17, metadata !5, null}
!145 = metadata !{i32 786689, metadata !5, metadata !"rx_tlast_b", metadata !6, i32 150994956, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 12, i32 17, metadata !5, null}
!147 = metadata !{i32 786689, metadata !5, metadata !"rx_data", metadata !6, i32 167772173, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 13, i32 16, metadata !5, null}
!149 = metadata !{i32 786689, metadata !5, metadata !"rx_ready", metadata !6, i32 184549390, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 14, i32 17, metadata !5, null}
!151 = metadata !{i32 786689, metadata !5, metadata !"rx_valid", metadata !6, i32 201326607, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 15, i32 17, metadata !5, null}
!153 = metadata !{i32 786689, metadata !5, metadata !"rx_tlast", metadata !6, i32 218103824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 16, i32 17, metadata !5, null}
!155 = metadata !{i32 786689, metadata !5, metadata !"tx_data_a", metadata !6, i32 234881041, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 17, i32 16, metadata !5, null}
!157 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_a", metadata !6, i32 251658258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 18, i32 17, metadata !5, null}
!159 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_a", metadata !6, i32 268435475, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 19, i32 17, metadata !5, null}
!161 = metadata !{i32 786689, metadata !5, metadata !"tx_tlast_a", metadata !6, i32 285212692, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 20, i32 17, metadata !5, null}
!163 = metadata !{i32 786689, metadata !5, metadata !"tx_data_b", metadata !6, i32 301989909, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 21, i32 16, metadata !5, null}
!165 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_b", metadata !6, i32 318767126, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 22, i32 17, metadata !5, null}
!167 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_b", metadata !6, i32 335544343, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 23, i32 17, metadata !5, null}
!169 = metadata !{i32 786689, metadata !5, metadata !"tx_tlast_b", metadata !6, i32 352321560, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 24, i32 17, metadata !5, null}
!171 = metadata !{i32 786689, metadata !5, metadata !"tx_data", metadata !6, i32 369098777, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 25, i32 16, metadata !5, null}
!173 = metadata !{i32 786689, metadata !5, metadata !"tx_ready", metadata !6, i32 385875994, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 26, i32 17, metadata !5, null}
!175 = metadata !{i32 786689, metadata !5, metadata !"tx_valid", metadata !6, i32 402653211, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 27, i32 17, metadata !5, null}
!177 = metadata !{i32 786689, metadata !5, metadata !"tx_tlast", metadata !6, i32 419430428, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 28, i32 17, metadata !5, null}
!179 = metadata !{i32 31, i32 1, metadata !180, null}
!180 = metadata !{i32 786443, metadata !5, i32 29, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 33, i32 1, metadata !180, null}
!182 = metadata !{i32 34, i32 1, metadata !180, null}
!183 = metadata !{i32 35, i32 1, metadata !180, null}
!184 = metadata !{i32 36, i32 1, metadata !180, null}
!185 = metadata !{i32 37, i32 1, metadata !180, null}
!186 = metadata !{i32 38, i32 1, metadata !180, null}
!187 = metadata !{i32 39, i32 1, metadata !180, null}
!188 = metadata !{i32 40, i32 1, metadata !180, null}
!189 = metadata !{i32 41, i32 1, metadata !180, null}
!190 = metadata !{i32 42, i32 1, metadata !180, null}
!191 = metadata !{i32 43, i32 1, metadata !180, null}
!192 = metadata !{i32 44, i32 1, metadata !180, null}
!193 = metadata !{i32 46, i32 1, metadata !180, null}
!194 = metadata !{i32 47, i32 1, metadata !180, null}
!195 = metadata !{i32 48, i32 1, metadata !180, null}
!196 = metadata !{i32 49, i32 1, metadata !180, null}
!197 = metadata !{i32 50, i32 1, metadata !180, null}
!198 = metadata !{i32 51, i32 1, metadata !180, null}
!199 = metadata !{i32 52, i32 1, metadata !180, null}
!200 = metadata !{i32 53, i32 1, metadata !180, null}
!201 = metadata !{i32 54, i32 1, metadata !180, null}
!202 = metadata !{i32 55, i32 1, metadata !180, null}
!203 = metadata !{i32 56, i32 1, metadata !180, null}
!204 = metadata !{i32 57, i32 1, metadata !180, null}
!205 = metadata !{i32 59, i32 1, metadata !180, null}
!206 = metadata !{i32 61, i32 2, metadata !180, null}
!207 = metadata !{i32 62, i32 3, metadata !208, null}
!208 = metadata !{i32 786443, metadata !180, i32 61, i32 20, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 63, i32 3, metadata !208, null}
!210 = metadata !{i32 64, i32 3, metadata !208, null}
!211 = metadata !{i32 65, i32 3, metadata !208, null}
!212 = metadata !{i32 67, i32 3, metadata !208, null}
!213 = metadata !{i32 69, i32 3, metadata !208, null}
!214 = metadata !{i32 70, i32 3, metadata !208, null}
!215 = metadata !{i32 71, i32 3, metadata !208, null}
!216 = metadata !{i32 73, i32 3, metadata !208, null}
!217 = metadata !{i32 75, i32 3, metadata !208, null}
!218 = metadata !{i32 76, i32 3, metadata !208, null}
!219 = metadata !{i32 77, i32 3, metadata !208, null}
!220 = metadata !{i32 78, i32 2, metadata !208, null}
!221 = metadata !{i32 80, i32 3, metadata !222, null}
!222 = metadata !{i32 786443, metadata !180, i32 79, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 81, i32 3, metadata !222, null}
!224 = metadata !{i32 82, i32 3, metadata !222, null}
!225 = metadata !{i32 83, i32 3, metadata !222, null}
!226 = metadata !{i32 85, i32 3, metadata !222, null}
!227 = metadata !{i32 87, i32 3, metadata !222, null}
!228 = metadata !{i32 88, i32 3, metadata !222, null}
!229 = metadata !{i32 89, i32 3, metadata !222, null}
!230 = metadata !{i32 91, i32 3, metadata !222, null}
!231 = metadata !{i32 93, i32 3, metadata !222, null}
!232 = metadata !{i32 94, i32 3, metadata !222, null}
!233 = metadata !{i32 95, i32 3, metadata !222, null}
!234 = metadata !{i32 98, i32 1, metadata !180, null}
