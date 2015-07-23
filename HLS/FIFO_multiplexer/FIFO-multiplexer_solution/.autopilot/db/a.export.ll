; ModuleID = '/home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@str = internal constant [17 x i8] c"FIFO_multiplexer\00"

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
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_tlast, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_tlast, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %switch_select_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %switch_select) nounwind
  br i1 %switch_select_read, label %1, label %2

; <label>:1                                       ; preds = %0
  %rx_data_b_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_b) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_b_read) nounwind
  %rx_valid_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_b) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_b_read) nounwind
  %rx_ready_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_b, i1 %rx_ready_read) nounwind
  %rx_tlast_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_tlast_b) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_tlast, i1 %rx_tlast_b_read) nounwind
  %tx_ready_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_b) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_b_read) nounwind
  %tx_data_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_b, i32 %tx_data_read) nounwind
  %tx_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_b, i1 %tx_valid_read) nounwind
  %tx_tlast_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_tlast) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_b, i1 %tx_tlast_read) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_a, i1 false) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_a, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_a, i1 false) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_a, i1 false) nounwind
  br label %3

; <label>:2                                       ; preds = %0
  %rx_data_a_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_a) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_a_read) nounwind
  %rx_valid_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_a) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_a_read) nounwind
  %rx_ready_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_a, i1 %rx_ready_read_1) nounwind
  %rx_tlast_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_tlast_a) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_tlast, i1 %rx_tlast_a_read) nounwind
  %tx_ready_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_a) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_a_read) nounwind
  %tx_data_read_1 = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_a, i32 %tx_data_read_1) nounwind
  %tx_valid_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_a, i1 %tx_valid_read_1) nounwind
  %tx_tlast_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_tlast) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_a, i1 %tx_tlast_read_1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_b, i1 false) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_b, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_b, i1 false) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_tlast_b, i1 false) nounwind
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

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
