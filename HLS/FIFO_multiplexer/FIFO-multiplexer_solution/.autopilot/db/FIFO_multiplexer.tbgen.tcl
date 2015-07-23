set moduleName FIFO_multiplexer
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {FIFO_multiplexer}
set C_modelType { void 0 }
set C_modelArgList { 
	{ switch_select int 1 regular {pointer 0 volatile }  }
	{ rx_data_a int 32 regular {pointer 0 volatile }  }
	{ rx_ready_a int 1 regular {pointer 1 volatile }  }
	{ rx_valid_a int 1 regular {pointer 0 volatile }  }
	{ rx_tlast_a int 1 regular {pointer 0 volatile }  }
	{ rx_data_b int 32 regular {pointer 0 volatile }  }
	{ rx_ready_b int 1 regular {pointer 1 volatile }  }
	{ rx_valid_b int 1 regular {pointer 0 volatile }  }
	{ rx_tlast_b int 1 regular {pointer 0 volatile }  }
	{ rx_data int 32 regular {pointer 1 volatile }  }
	{ rx_ready int 1 regular {pointer 0 volatile }  }
	{ rx_valid int 1 regular {pointer 1 volatile }  }
	{ rx_tlast int 1 regular {pointer 1 volatile }  }
	{ tx_data_a int 32 regular {pointer 1 volatile }  }
	{ tx_ready_a int 1 regular {pointer 0 volatile }  }
	{ tx_valid_a int 1 regular {pointer 1 volatile }  }
	{ tx_tlast_a int 1 regular {pointer 1 volatile }  }
	{ tx_data_b int 32 regular {pointer 1 volatile }  }
	{ tx_ready_b int 1 regular {pointer 0 volatile }  }
	{ tx_valid_b int 1 regular {pointer 1 volatile }  }
	{ tx_tlast_b int 1 regular {pointer 1 volatile }  }
	{ tx_data int 32 regular {pointer 0 volatile }  }
	{ tx_ready int 1 regular {pointer 1 volatile }  }
	{ tx_valid int 1 regular {pointer 0 volatile }  }
	{ tx_tlast int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "switch_select", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "switch_select","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_data_a", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rx_data_a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_ready_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_ready_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_valid_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_valid_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_tlast_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_tlast_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_data_b", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rx_data_b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_ready_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_ready_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_valid_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_valid_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_tlast_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_tlast_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_data", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rx_data","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_ready", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_ready","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_valid", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rx_tlast", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rx_tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_data_a", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tx_data_a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_ready_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_ready_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_valid_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_valid_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_tlast_a", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_tlast_a","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_data_b", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tx_data_b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_ready_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_ready_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_valid_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_valid_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_tlast_b", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_tlast_b","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_data", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tx_data","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_ready", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_ready","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_valid", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_tlast", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tx_tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ switch_select sc_in sc_logic 1 signal 0 } 
	{ rx_data_a sc_in sc_lv 32 signal 1 } 
	{ rx_ready_a sc_out sc_logic 1 signal 2 } 
	{ rx_valid_a sc_in sc_logic 1 signal 3 } 
	{ rx_tlast_a sc_in sc_logic 1 signal 4 } 
	{ rx_data_b sc_in sc_lv 32 signal 5 } 
	{ rx_ready_b sc_out sc_logic 1 signal 6 } 
	{ rx_valid_b sc_in sc_logic 1 signal 7 } 
	{ rx_tlast_b sc_in sc_logic 1 signal 8 } 
	{ rx_data sc_out sc_lv 32 signal 9 } 
	{ rx_ready sc_in sc_logic 1 signal 10 } 
	{ rx_valid sc_out sc_logic 1 signal 11 } 
	{ rx_tlast sc_out sc_logic 1 signal 12 } 
	{ tx_data_a sc_out sc_lv 32 signal 13 } 
	{ tx_ready_a sc_in sc_logic 1 signal 14 } 
	{ tx_valid_a sc_out sc_logic 1 signal 15 } 
	{ tx_tlast_a sc_out sc_logic 1 signal 16 } 
	{ tx_data_b sc_out sc_lv 32 signal 17 } 
	{ tx_ready_b sc_in sc_logic 1 signal 18 } 
	{ tx_valid_b sc_out sc_logic 1 signal 19 } 
	{ tx_tlast_b sc_out sc_logic 1 signal 20 } 
	{ tx_data sc_in sc_lv 32 signal 21 } 
	{ tx_ready sc_out sc_logic 1 signal 22 } 
	{ tx_valid sc_in sc_logic 1 signal 23 } 
	{ tx_tlast sc_in sc_logic 1 signal 24 } 
}
set NewPortList {[ 
	{ "name": "switch_select", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "switch_select", "role": "default" }} , 
 	{ "name": "rx_data_a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rx_data_a", "role": "default" }} , 
 	{ "name": "rx_ready_a", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_ready_a", "role": "default" }} , 
 	{ "name": "rx_valid_a", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_valid_a", "role": "default" }} , 
 	{ "name": "rx_tlast_a", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_tlast_a", "role": "default" }} , 
 	{ "name": "rx_data_b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rx_data_b", "role": "default" }} , 
 	{ "name": "rx_ready_b", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_ready_b", "role": "default" }} , 
 	{ "name": "rx_valid_b", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_valid_b", "role": "default" }} , 
 	{ "name": "rx_tlast_b", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_tlast_b", "role": "default" }} , 
 	{ "name": "rx_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rx_data", "role": "default" }} , 
 	{ "name": "rx_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_ready", "role": "default" }} , 
 	{ "name": "rx_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_valid", "role": "default" }} , 
 	{ "name": "rx_tlast", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_tlast", "role": "default" }} , 
 	{ "name": "tx_data_a", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx_data_a", "role": "default" }} , 
 	{ "name": "tx_ready_a", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_ready_a", "role": "default" }} , 
 	{ "name": "tx_valid_a", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_valid_a", "role": "default" }} , 
 	{ "name": "tx_tlast_a", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_tlast_a", "role": "default" }} , 
 	{ "name": "tx_data_b", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx_data_b", "role": "default" }} , 
 	{ "name": "tx_ready_b", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_ready_b", "role": "default" }} , 
 	{ "name": "tx_valid_b", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_valid_b", "role": "default" }} , 
 	{ "name": "tx_tlast_b", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_tlast_b", "role": "default" }} , 
 	{ "name": "tx_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx_data", "role": "default" }} , 
 	{ "name": "tx_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_ready", "role": "default" }} , 
 	{ "name": "tx_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_valid", "role": "default" }} , 
 	{ "name": "tx_tlast", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_tlast", "role": "default" }}  ]}
set Spec2ImplPortList { 
	switch_select { ap_none {  { switch_select in_data 0 1 } } }
	rx_data_a { ap_none {  { rx_data_a in_data 0 32 } } }
	rx_ready_a { ap_none {  { rx_ready_a out_data 1 1 } } }
	rx_valid_a { ap_none {  { rx_valid_a in_data 0 1 } } }
	rx_tlast_a { ap_none {  { rx_tlast_a in_data 0 1 } } }
	rx_data_b { ap_none {  { rx_data_b in_data 0 32 } } }
	rx_ready_b { ap_none {  { rx_ready_b out_data 1 1 } } }
	rx_valid_b { ap_none {  { rx_valid_b in_data 0 1 } } }
	rx_tlast_b { ap_none {  { rx_tlast_b in_data 0 1 } } }
	rx_data { ap_none {  { rx_data out_data 1 32 } } }
	rx_ready { ap_none {  { rx_ready in_data 0 1 } } }
	rx_valid { ap_none {  { rx_valid out_data 1 1 } } }
	rx_tlast { ap_none {  { rx_tlast out_data 1 1 } } }
	tx_data_a { ap_none {  { tx_data_a out_data 1 32 } } }
	tx_ready_a { ap_none {  { tx_ready_a in_data 0 1 } } }
	tx_valid_a { ap_none {  { tx_valid_a out_data 1 1 } } }
	tx_tlast_a { ap_none {  { tx_tlast_a out_data 1 1 } } }
	tx_data_b { ap_none {  { tx_data_b out_data 1 32 } } }
	tx_ready_b { ap_none {  { tx_ready_b in_data 0 1 } } }
	tx_valid_b { ap_none {  { tx_valid_b out_data 1 1 } } }
	tx_tlast_b { ap_none {  { tx_tlast_b out_data 1 1 } } }
	tx_data { ap_none {  { tx_data in_data 0 32 } } }
	tx_ready { ap_none {  { tx_ready out_data 1 1 } } }
	tx_valid { ap_none {  { tx_valid in_data 0 1 } } }
	tx_tlast { ap_none {  { tx_tlast in_data 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
