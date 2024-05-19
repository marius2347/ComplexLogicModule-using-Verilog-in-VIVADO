`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 12:09:44 PM
// Design Name: 
// Module Name: MUX
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
// MUX having 4 entries and one exit
module MUX(
        input in0, in1, in2, in3,
        input [1:0] sel,
        output reg out
    );
always@(*)
case (sel)
    0 : out = in0;
    1 : out = in1;
    2 : out = in2;
    3 : out = in3;
endcase
endmodule
