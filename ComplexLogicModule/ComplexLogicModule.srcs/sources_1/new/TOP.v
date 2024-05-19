`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 12:27:27 PM
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(
        input [2:0] A, B,
        input ck, reset,
        output outp,
        output [3:0] out_sum,
        output [2:0] out_num
    );
wire [3:0] wdmux; // wires for dmux into mux
wire wmux_num; // wire from mux into num

// from sum.v module
sum SUM (
    .in1 (A),
    .in2 (B),
    .out (out_sum)
);

// from DMUX.v module
dmux DMUX (
    .en (1),
    .sel (A[1:0]),
    .out (wdmux)
);

// from MUX.v module
mux MUX (
    .in0 (wdmux[3]),
    .in1 (wdmux[2]),
    .in2 (wdmux[0]),
    .in3 (wdmux[1]),
    .out (wmux_num)
);

// from counter.v module
counter COUNTER(
    .CK (ck),
    .reset (reset),
    .en (wmuxnum),
    .out (out_num)

);
endmodule 
