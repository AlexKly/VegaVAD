////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: floating_point_int24_to_float32.v
// /___/   /\     Timestamp: Tue Dec 28 16:06:17 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/Library_Projects_FPGA/VegaVAD/ipcore_dir/tmp/_cg/floating_point_int24_to_float32.ngc D:/Library_Projects_FPGA/VegaVAD/ipcore_dir/tmp/_cg/floating_point_int24_to_float32.v 
// Device	: 6slx16ftg256-3
// Input file	: D:/Library_Projects_FPGA/VegaVAD/ipcore_dir/tmp/_cg/floating_point_int24_to_float32.ngc
// Output file	: D:/Library_Projects_FPGA/VegaVAD/ipcore_dir/tmp/_cg/floating_point_int24_to_float32.v
// # of Modules	: 1
// Design Name	: floating_point_int24_to_float32
// Xilinx        : D:\Program\Xilinx\14.7\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module floating_point_int24_to_float32 (
  s_axis_a_tvalid, m_axis_result_tvalid, s_axis_a_tdata, m_axis_result_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input s_axis_a_tvalid;
  output m_axis_result_tvalid;
  input [23 : 0] s_axis_a_tdata;
  output [31 : 0] m_axis_result_tdata;
  
  // synthesis translate_off
  
  wire NlwRenamedSignal_m_axis_result_tvalid;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire [31 : 31] NlwRenamedSignal_m_axis_result_tdata;
  assign
    NlwRenamedSignal_m_axis_result_tdata[31] = s_axis_a_tdata[23],
    NlwRenamedSignal_m_axis_result_tvalid = s_axis_a_tvalid,
    m_axis_result_tdata[31] = NlwRenamedSignal_m_axis_result_tdata[31],
    m_axis_result_tvalid = NlwRenamedSignal_m_axis_result_tvalid;
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk00000106  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000068 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000078 ),
    .I4(\blk00000001/sig00000088 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000011e )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk00000105  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000065 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000074 ),
    .I4(\blk00000001/sig00000084 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000011d )
  );
  MUXF7   \blk00000001/blk00000104  (
    .I0(\blk00000001/sig0000011d ),
    .I1(\blk00000001/sig0000011e ),
    .S(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig00000118 )
  );
  LUT5 #(
    .INIT ( 32'h8888A888 ))
  \blk00000001/blk00000103  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000009c ),
    .I3(\blk00000001/sig0000009d ),
    .I4(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig00000064 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \blk00000001/blk00000102  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000098 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000097 ),
    .I4(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000e8 )
  );
  LUT6 #(
    .INIT ( 64'h0101000101000000 ))
  \blk00000001/blk00000101  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig000000ab ),
    .I4(\blk00000001/sig00000090 ),
    .I5(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000e9 )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \blk00000001/blk00000100  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000092 ),
    .I3(\blk00000001/sig000000ac ),
    .I4(\blk00000001/sig000000ab ),
    .I5(\blk00000001/sig00000118 ),
    .O(\blk00000001/sig000000d0 )
  );
  LUT6 #(
    .INIT ( 64'hF7F7F70808F70808 ))
  \blk00000001/blk000000ff  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ad ),
    .I2(\blk00000001/sig00000116 ),
    .I3(\blk00000001/sig00000046 ),
    .I4(\blk00000001/sig0000009a ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000062 )
  );
  LUT6 #(
    .INIT ( 64'hBBBBABBB1111A111 ))
  \blk00000001/blk000000fe  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig000000ad ),
    .I3(\blk00000001/sig000000ac ),
    .I4(\blk00000001/sig00000116 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000063 )
  );
  LUT6 #(
    .INIT ( 64'h2FFFFFFFFFFFFFFF ))
  \blk00000001/blk000000fd  (
    .I0(\blk00000001/sig0000005f ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000061 ),
    .I3(\blk00000001/sig00000062 ),
    .I4(\blk00000001/sig00000063 ),
    .I5(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig0000011c )
  );
  LUT6 #(
    .INIT ( 64'h7070707070700770 ))
  \blk00000001/blk000000fc  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000061 ),
    .I3(\blk00000001/sig00000060 ),
    .I4(\blk00000001/sig000000ae ),
    .I5(\blk00000001/sig000000c3 ),
    .O(m_axis_result_tdata[25])
  );
  LUT6 #(
    .INIT ( 64'h4541050144400400 ))
  \blk00000001/blk000000fb  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ae ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000bf ),
    .I4(\blk00000001/sig000000c1 ),
    .I5(\blk00000001/sig000000c0 ),
    .O(\blk00000001/sig000000d2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFBBB ))
  \blk00000001/blk000000fa  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig00000060 ),
    .I2(\blk00000001/sig00000046 ),
    .I3(\blk00000001/sig0000009e ),
    .I4(\blk00000001/sig000000c3 ),
    .O(\blk00000001/sig0000005e )
  );
  LUT5 #(
    .INIT ( 32'h70707007 ))
  \blk00000001/blk000000f9  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000060 ),
    .I3(\blk00000001/sig000000ae ),
    .I4(\blk00000001/sig000000c3 ),
    .O(m_axis_result_tdata[24])
  );
  LUT6 #(
    .INIT ( 64'hBBABBAAA11011000 ))
  \blk00000001/blk000000f8  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000c0 ),
    .I4(\blk00000001/sig000000be ),
    .I5(\blk00000001/sig000000ea ),
    .O(\blk00000001/sig000000d4 )
  );
  LUT6 #(
    .INIT ( 64'hBBABBAAA11011000 ))
  \blk00000001/blk000000f7  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000c1 ),
    .I4(\blk00000001/sig000000bf ),
    .I5(\blk00000001/sig000000e9 ),
    .O(\blk00000001/sig000000d3 )
  );
  LUT5 #(
    .INIT ( 32'hABAA0100 ))
  \blk00000001/blk000000f6  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000c1 ),
    .I4(\blk00000001/sig000000e8 ),
    .O(\blk00000001/sig000000d1 )
  );
  LUT4 #(
    .INIT ( 16'h0770 ))
  \blk00000001/blk000000f5  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig000000ae ),
    .I3(\blk00000001/sig000000c3 ),
    .O(m_axis_result_tdata[23])
  );
  LUT6 #(
    .INIT ( 64'h20A875FD75FD20A8 ))
  \blk00000001/blk000000f4  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ad ),
    .I2(\blk00000001/sig00000117 ),
    .I3(\blk00000001/sig00000116 ),
    .I4(\blk00000001/sig00000118 ),
    .I5(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig00000060 )
  );
  LUT6 #(
    .INIT ( 64'h4141144163639C63 ))
  \blk00000001/blk000000f3  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000005f ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000061 ),
    .I4(\blk00000001/sig0000005e ),
    .I5(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[26])
  );
  LUT5 #(
    .INIT ( 32'h4545EF45 ))
  \blk00000001/blk000000f2  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig00000118 ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000ad ),
    .I4(\blk00000001/sig00000116 ),
    .O(\blk00000001/sig00000061 )
  );
  LUT5 #(
    .INIT ( 32'h5501FFFF ))
  \blk00000001/blk000000f1  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig0000005e ),
    .I2(\blk00000001/sig0000011c ),
    .I3(\blk00000001/sig0000005f ),
    .I4(\blk00000001/sig00000046 ),
    .O(m_axis_result_tdata[30])
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \blk00000001/blk000000f0  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ad ),
    .I2(\blk00000001/sig00000116 ),
    .O(\blk00000001/sig0000005f )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000ef  (
    .I0(\blk00000001/sig00000042 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[21])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000ee  (
    .I0(\blk00000001/sig00000043 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[22])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000ed  (
    .I0(\blk00000001/sig0000003f ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[18])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000ec  (
    .I0(\blk00000001/sig00000041 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[20])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000eb  (
    .I0(\blk00000001/sig00000040 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[19])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000ea  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[15])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e9  (
    .I0(\blk00000001/sig0000003e ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[17])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e8  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[16])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e7  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[12])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e6  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[14])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e5  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[13])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e4  (
    .I0(\blk00000001/sig000000f7 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[9])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e3  (
    .I0(\blk00000001/sig000000f4 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[11])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e2  (
    .I0(\blk00000001/sig000000f5 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[10])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e1  (
    .I0(\blk00000001/sig000000fd ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[6])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000e0  (
    .I0(\blk00000001/sig000000f9 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[8])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000df  (
    .I0(\blk00000001/sig000000fb ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[7])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000de  (
    .I0(\blk00000001/sig00000103 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[3])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000dd  (
    .I0(\blk00000001/sig000000ff ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[5])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000dc  (
    .I0(\blk00000001/sig00000101 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[4])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000db  (
    .I0(\blk00000001/sig00000105 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[2])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000da  (
    .I0(\blk00000001/sig00000107 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[1])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \blk00000001/blk000000d9  (
    .I0(\blk00000001/sig00000109 ),
    .I1(\blk00000001/sig00000046 ),
    .I2(\blk00000001/sig0000009e ),
    .O(m_axis_result_tdata[0])
  );
  LUT6 #(
    .INIT ( 64'h7070707007707070 ))
  \blk00000001/blk000000d8  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000063 ),
    .I3(\blk00000001/sig00000062 ),
    .I4(\blk00000001/sig00000061 ),
    .I5(\blk00000001/sig0000005e ),
    .O(m_axis_result_tdata[27])
  );
  LUT6 #(
    .INIT ( 64'h4444444404444444 ))
  \blk00000001/blk000000d7  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig00000064 ),
    .I2(\blk00000001/sig00000062 ),
    .I3(\blk00000001/sig00000061 ),
    .I4(\blk00000001/sig00000063 ),
    .I5(\blk00000001/sig0000005e ),
    .O(m_axis_result_tdata[29])
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d6  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000066 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000076 ),
    .I4(\blk00000001/sig00000086 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000011a )
  );
  LUT6 #(
    .INIT ( 64'h8A8A8ADFDF8ADFDF ))
  \blk00000001/blk000000d5  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000088 ),
    .I3(\blk00000001/sig0000009a ),
    .I4(\blk00000001/sig00000068 ),
    .I5(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000119 )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d4  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000072 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000082 ),
    .I4(\blk00000001/sig00000092 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000b1 )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d3  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000006e ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig0000007e ),
    .I4(\blk00000001/sig0000008e ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000b0 )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d2  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000006a ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig0000007a ),
    .I4(\blk00000001/sig0000008a ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000af )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d1  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000bc ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000be ),
    .I4(\blk00000001/sig000000c0 ),
    .I5(\blk00000001/sig000000ad ),
    .O(\blk00000001/sig000000eb )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000d0  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000bd ),
    .I2(\blk00000001/sig000000ab ),
    .I3(\blk00000001/sig000000bf ),
    .I4(\blk00000001/sig000000c1 ),
    .I5(\blk00000001/sig000000ad ),
    .O(\blk00000001/sig000000ea )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000cf  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000c1 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000ce  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000c0 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000cd  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000bf )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000cc  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000be )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000cb  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000bd )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000ca  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000bc )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000c9  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000bb )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \blk00000001/blk000000c8  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000ba )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c7  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000076 ),
    .I3(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000b3 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c6  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000074 ),
    .I3(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000b2 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c5  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000082 ),
    .I3(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000b9 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c4  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000080 ),
    .I3(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000b8 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c3  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000007e ),
    .I3(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000b7 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c2  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000007c ),
    .I3(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000b6 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c1  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig0000007a ),
    .I3(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000b5 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000001/blk000000c0  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009a ),
    .I2(\blk00000001/sig00000078 ),
    .I3(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000b4 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000bf  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e7 ),
    .I2(\blk00000001/sig0000011b ),
    .O(\blk00000001/sig000000ce )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000be  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000af ),
    .I3(\blk00000001/sig000000b1 ),
    .I4(\blk00000001/sig000000b0 ),
    .I5(\blk00000001/sig0000011a ),
    .O(\blk00000001/sig0000011b )
  );
  LUT6 #(
    .INIT ( 64'hF858A808FD5DAD0D ))
  \blk00000001/blk000000bd  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig00000117 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000b2 ),
    .I4(\blk00000001/sig00000116 ),
    .I5(\blk00000001/sig00000119 ),
    .O(\blk00000001/sig000000e7 )
  );
  LUT5 #(
    .INIT ( 32'hFD75A820 ))
  \blk00000001/blk000000bc  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ad ),
    .I2(\blk00000001/sig00000117 ),
    .I3(\blk00000001/sig00000116 ),
    .I4(\blk00000001/sig00000118 ),
    .O(\blk00000001/sig000000ae )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000bb  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000006c ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig0000007c ),
    .I4(\blk00000001/sig0000008c ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000117 )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk000000ba  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000070 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000080 ),
    .I4(\blk00000001/sig00000090 ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000116 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b9  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ee ),
    .I2(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig000000d9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b8  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ed ),
    .I2(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig000000d8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b7  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ec ),
    .I2(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig000000d7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b6  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000eb ),
    .I2(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig000000d6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b5  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ea ),
    .I2(\blk00000001/sig000000eb ),
    .O(\blk00000001/sig000000d5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b4  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000f0 ),
    .I2(\blk00000001/sig000000dd ),
    .O(\blk00000001/sig000000db )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b3  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000ef ),
    .I2(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig000000da )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b2  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e6 ),
    .I2(\blk00000001/sig000000e7 ),
    .O(\blk00000001/sig000000cd )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b1  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e5 ),
    .I2(\blk00000001/sig000000e6 ),
    .O(\blk00000001/sig000000cc )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000b0  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e4 ),
    .I2(\blk00000001/sig000000e5 ),
    .O(\blk00000001/sig000000cb )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000af  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e3 ),
    .I2(\blk00000001/sig000000e4 ),
    .O(\blk00000001/sig000000ca )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000ae  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e2 ),
    .I2(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000c9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000ad  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e1 ),
    .I2(\blk00000001/sig000000e2 ),
    .O(\blk00000001/sig000000c8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000ac  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000e0 ),
    .I2(\blk00000001/sig000000e1 ),
    .O(\blk00000001/sig000000c7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000ab  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000df ),
    .I2(\blk00000001/sig000000e0 ),
    .O(\blk00000001/sig000000c6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000aa  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000de ),
    .I2(\blk00000001/sig000000df ),
    .O(\blk00000001/sig000000c5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a9  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000dd ),
    .I2(\blk00000001/sig000000de ),
    .O(\blk00000001/sig000000c4 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a8  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b0 ),
    .I3(\blk00000001/sig000000b3 ),
    .I4(\blk00000001/sig000000b1 ),
    .I5(\blk00000001/sig000000af ),
    .O(\blk00000001/sig000000e6 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a7  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b1 ),
    .I3(\blk00000001/sig000000b5 ),
    .I4(\blk00000001/sig000000b3 ),
    .I5(\blk00000001/sig000000b0 ),
    .O(\blk00000001/sig000000e4 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a6  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b2 ),
    .I3(\blk00000001/sig000000b6 ),
    .I4(\blk00000001/sig000000b4 ),
    .I5(\blk00000001/sig00000116 ),
    .O(\blk00000001/sig000000e3 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a5  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b3 ),
    .I3(\blk00000001/sig000000b7 ),
    .I4(\blk00000001/sig000000b5 ),
    .I5(\blk00000001/sig000000b1 ),
    .O(\blk00000001/sig000000e2 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a4  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b4 ),
    .I3(\blk00000001/sig000000b8 ),
    .I4(\blk00000001/sig000000b6 ),
    .I5(\blk00000001/sig000000b2 ),
    .O(\blk00000001/sig000000e1 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a3  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b5 ),
    .I3(\blk00000001/sig000000b9 ),
    .I4(\blk00000001/sig000000b7 ),
    .I5(\blk00000001/sig000000b3 ),
    .O(\blk00000001/sig000000e0 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a2  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig00000116 ),
    .I3(\blk00000001/sig000000b4 ),
    .I4(\blk00000001/sig000000b2 ),
    .I5(\blk00000001/sig00000117 ),
    .O(\blk00000001/sig000000e5 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a1  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b6 ),
    .I3(\blk00000001/sig000000ba ),
    .I4(\blk00000001/sig000000b8 ),
    .I5(\blk00000001/sig000000b4 ),
    .O(\blk00000001/sig000000df )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk000000a0  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b7 ),
    .I3(\blk00000001/sig000000bb ),
    .I4(\blk00000001/sig000000b9 ),
    .I5(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig000000de )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009f  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b8 ),
    .I3(\blk00000001/sig000000bc ),
    .I4(\blk00000001/sig000000ba ),
    .I5(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig000000dd )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009e  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000b9 ),
    .I3(\blk00000001/sig000000bd ),
    .I4(\blk00000001/sig000000bb ),
    .I5(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000f0 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009d  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000ba ),
    .I3(\blk00000001/sig000000be ),
    .I4(\blk00000001/sig000000bc ),
    .I5(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig000000ef )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009c  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000bb ),
    .I3(\blk00000001/sig000000bf ),
    .I4(\blk00000001/sig000000bd ),
    .I5(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig000000ee )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009b  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000bc ),
    .I3(\blk00000001/sig000000c0 ),
    .I4(\blk00000001/sig000000be ),
    .I5(\blk00000001/sig000000ba ),
    .O(\blk00000001/sig000000ed )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \blk00000001/blk0000009a  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig000000c1 ),
    .I4(\blk00000001/sig000000bf ),
    .I5(\blk00000001/sig000000bb ),
    .O(\blk00000001/sig000000ec )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk00000099  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000097 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000094 ),
    .I4(\blk00000001/sig0000009b ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000ab )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk00000098  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000098 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000095 ),
    .I4(\blk00000001/sig0000009c ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000ac )
  );
  LUT6 #(
    .INIT ( 64'h54045404FEAE5404 ))
  \blk00000001/blk00000097  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig00000099 ),
    .I2(\blk00000001/sig0000009a ),
    .I3(\blk00000001/sig00000096 ),
    .I4(\blk00000001/sig0000009d ),
    .I5(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000ad )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000096  (
    .I0(\blk00000001/sig00000090 ),
    .I1(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000aa )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000095  (
    .I0(\blk00000001/sig0000008c ),
    .I1(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000a9 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000094  (
    .I0(\blk00000001/sig00000088 ),
    .I1(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000a8 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000093  (
    .I0(\blk00000001/sig00000084 ),
    .I1(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000a7 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000092  (
    .I0(\blk00000001/sig00000080 ),
    .I1(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000a6 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000091  (
    .I0(\blk00000001/sig0000007c ),
    .I1(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000a5 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000090  (
    .I0(\blk00000001/sig00000078 ),
    .I1(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000a4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000008f  (
    .I0(\blk00000001/sig00000074 ),
    .I1(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig000000a3 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000008e  (
    .I0(\blk00000001/sig00000070 ),
    .I1(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig000000a2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000008d  (
    .I0(\blk00000001/sig0000006c ),
    .I1(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig000000a1 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000008c  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000008b  (
    .I0(\blk00000001/sig00000065 ),
    .I1(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000009f )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000008a  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000044 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000089  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig000000ab ),
    .I2(\blk00000001/sig000000ad ),
    .O(\blk00000001/sig00000045 )
  );
  LUT6 #(
    .INIT ( 64'h4444444414444444 ))
  \blk00000001/blk00000088  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig00000064 ),
    .I2(\blk00000001/sig00000063 ),
    .I3(\blk00000001/sig00000062 ),
    .I4(\blk00000001/sig00000061 ),
    .I5(\blk00000001/sig0000005e ),
    .O(m_axis_result_tdata[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000087  (
    .I0(s_axis_a_tdata[9]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000050 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000086  (
    .I0(s_axis_a_tdata[8]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000085  (
    .I0(s_axis_a_tdata[7]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000084  (
    .I0(s_axis_a_tdata[6]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000083  (
    .I0(s_axis_a_tdata[5]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000082  (
    .I0(s_axis_a_tdata[4]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000081  (
    .I0(s_axis_a_tdata[3]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000080  (
    .I0(s_axis_a_tdata[2]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007f  (
    .I0(s_axis_a_tdata[22]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000005d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007e  (
    .I0(s_axis_a_tdata[21]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000005c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d  (
    .I0(s_axis_a_tdata[20]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000005b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007c  (
    .I0(s_axis_a_tdata[1]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007b  (
    .I0(s_axis_a_tdata[19]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007a  (
    .I0(s_axis_a_tdata[18]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000079  (
    .I0(s_axis_a_tdata[17]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000078  (
    .I0(s_axis_a_tdata[16]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000077  (
    .I0(s_axis_a_tdata[15]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000076  (
    .I0(s_axis_a_tdata[14]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000075  (
    .I0(s_axis_a_tdata[13]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000054 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000074  (
    .I0(s_axis_a_tdata[12]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000053 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000073  (
    .I0(s_axis_a_tdata[11]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000052 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000072  (
    .I0(s_axis_a_tdata[10]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000051 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000071  (
    .I0(s_axis_a_tdata[0]),
    .I1(NlwRenamedSignal_m_axis_result_tdata[31]),
    .O(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk00000070  (
    .CI(\blk00000001/sig000000cf ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c4 ),
    .O(\blk00000001/sig00000115 )
  );
  XORCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig000000cf ),
    .LI(\blk00000001/sig000000c4 ),
    .O(\blk00000001/sig00000039 )
  );
  MUXCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig00000115 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c5 ),
    .O(\blk00000001/sig00000114 )
  );
  XORCY   \blk00000001/blk0000006d  (
    .CI(\blk00000001/sig00000115 ),
    .LI(\blk00000001/sig000000c5 ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig00000114 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c6 ),
    .O(\blk00000001/sig00000113 )
  );
  XORCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig00000114 ),
    .LI(\blk00000001/sig000000c6 ),
    .O(\blk00000001/sig0000003b )
  );
  MUXCY   \blk00000001/blk0000006a  (
    .CI(\blk00000001/sig00000113 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c7 ),
    .O(\blk00000001/sig00000112 )
  );
  XORCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig00000113 ),
    .LI(\blk00000001/sig000000c7 ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig00000112 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c8 ),
    .O(\blk00000001/sig00000111 )
  );
  XORCY   \blk00000001/blk00000067  (
    .CI(\blk00000001/sig00000112 ),
    .LI(\blk00000001/sig000000c8 ),
    .O(\blk00000001/sig0000003d )
  );
  MUXCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig00000111 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000c9 ),
    .O(\blk00000001/sig00000110 )
  );
  XORCY   \blk00000001/blk00000065  (
    .CI(\blk00000001/sig00000111 ),
    .LI(\blk00000001/sig000000c9 ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk00000064  (
    .CI(\blk00000001/sig00000110 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000ca ),
    .O(\blk00000001/sig0000010f )
  );
  XORCY   \blk00000001/blk00000063  (
    .CI(\blk00000001/sig00000110 ),
    .LI(\blk00000001/sig000000ca ),
    .O(\blk00000001/sig0000003f )
  );
  MUXCY   \blk00000001/blk00000062  (
    .CI(\blk00000001/sig0000010f ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000cb ),
    .O(\blk00000001/sig0000010e )
  );
  XORCY   \blk00000001/blk00000061  (
    .CI(\blk00000001/sig0000010f ),
    .LI(\blk00000001/sig000000cb ),
    .O(\blk00000001/sig00000040 )
  );
  MUXCY   \blk00000001/blk00000060  (
    .CI(\blk00000001/sig0000010e ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000cc ),
    .O(\blk00000001/sig0000010d )
  );
  XORCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig0000010e ),
    .LI(\blk00000001/sig000000cc ),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig0000010d ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000cd ),
    .O(\blk00000001/sig0000010c )
  );
  XORCY   \blk00000001/blk0000005d  (
    .CI(\blk00000001/sig0000010d ),
    .LI(\blk00000001/sig000000cd ),
    .O(\blk00000001/sig00000042 )
  );
  MUXCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig0000010c ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000ce ),
    .O(\blk00000001/sig0000010b )
  );
  XORCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig0000010c ),
    .LI(\blk00000001/sig000000ce ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig0000010b ),
    .LI(\blk00000001/sig000000c2 ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig000000dc ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d0 ),
    .O(\blk00000001/sig0000010a )
  );
  XORCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig000000dc ),
    .LI(\blk00000001/sig000000d0 ),
    .O(\blk00000001/sig00000109 )
  );
  MUXCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig0000010a ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d1 ),
    .O(\blk00000001/sig00000108 )
  );
  XORCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig0000010a ),
    .LI(\blk00000001/sig000000d1 ),
    .O(\blk00000001/sig00000107 )
  );
  MUXCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig00000108 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d2 ),
    .O(\blk00000001/sig00000106 )
  );
  XORCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig00000108 ),
    .LI(\blk00000001/sig000000d2 ),
    .O(\blk00000001/sig00000105 )
  );
  MUXCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig00000106 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig00000104 )
  );
  XORCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig00000106 ),
    .LI(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig00000103 )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000104 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig00000102 )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000104 ),
    .LI(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig00000101 )
  );
  MUXCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig00000102 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d5 ),
    .O(\blk00000001/sig00000100 )
  );
  XORCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig00000102 ),
    .LI(\blk00000001/sig000000d5 ),
    .O(\blk00000001/sig000000ff )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig00000100 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d6 ),
    .O(\blk00000001/sig000000fe )
  );
  XORCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig00000100 ),
    .LI(\blk00000001/sig000000d6 ),
    .O(\blk00000001/sig000000fd )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig000000fe ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d7 ),
    .O(\blk00000001/sig000000fc )
  );
  XORCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig000000fe ),
    .LI(\blk00000001/sig000000d7 ),
    .O(\blk00000001/sig000000fb )
  );
  MUXCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig000000fc ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d8 ),
    .O(\blk00000001/sig000000fa )
  );
  XORCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig000000fc ),
    .LI(\blk00000001/sig000000d8 ),
    .O(\blk00000001/sig000000f9 )
  );
  MUXCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig000000fa ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000d9 ),
    .O(\blk00000001/sig000000f8 )
  );
  XORCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig000000fa ),
    .LI(\blk00000001/sig000000d9 ),
    .O(\blk00000001/sig000000f7 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig000000f8 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000da ),
    .O(\blk00000001/sig000000f6 )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig000000f8 ),
    .LI(\blk00000001/sig000000da ),
    .O(\blk00000001/sig000000f5 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig000000f6 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000db ),
    .O(\blk00000001/sig000000cf )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000f6 ),
    .LI(\blk00000001/sig000000db ),
    .O(\blk00000001/sig000000f4 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000c2 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig000000f3 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000f3 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig000000f2 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000f2 ),
    .DI(\blk00000001/sig000000c2 ),
    .S(\blk00000001/sig000000c2 ),
    .O(\blk00000001/sig000000dc )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000c2 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig00000097 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000097 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000098 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000098 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig00000099 )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig00000099 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig0000009a )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000009a ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a3 ),
    .O(\blk00000001/sig00000094 )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000094 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig00000095 )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000095 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig00000096 )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig00000096 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a6 ),
    .O(\blk00000001/sig00000046 )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig000000c2 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a7 ),
    .O(\blk00000001/sig0000009b )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig0000009b ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a8 ),
    .O(\blk00000001/sig0000009c )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000009c ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000a9 ),
    .O(\blk00000001/sig0000009d )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000009d ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig000000aa ),
    .O(\blk00000001/sig0000009e )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(NlwRenamedSignal_m_axis_result_tdata[31]),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000093 )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(NlwRenamedSignal_m_axis_result_tdata[31]),
    .LI(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000093 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000091 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000093 ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000090 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000091 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000008f )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000091 ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig0000008f ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000008d )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig0000008f ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig0000008d ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000008b )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig0000008d ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000008a )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig0000008b ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000089 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig0000008b ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000088 )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000089 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000087 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000089 ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000086 )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000087 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000085 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000087 ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000084 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000085 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000083 )
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000085 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000082 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000083 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000083 ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000080 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000081 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000081 ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000007f ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000007d ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000007a )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000007b ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000078 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000079 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000076 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000077 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000075 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000077 ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000074 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000075 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000073 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000075 ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000072 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000073 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000071 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000073 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000071 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig0000006f )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000071 ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig0000006e )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000006f ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000006f ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig0000006c )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000006d ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000006d ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig0000006a )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000006b ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000006b ),
    .LI(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000069 ),
    .DI(\blk00000001/sig000000f1 ),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000067 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000069 ),
    .LI(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000066 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig00000065 )
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig000000f1 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig000000c2 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
