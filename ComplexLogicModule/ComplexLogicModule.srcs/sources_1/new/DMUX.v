`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 12:03:17 PM
// Design Name: 
// Module Name: DMUX
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


module DMUX(
        input [1:0] sel,
        input en,
        output reg [3:0] out        
    );
always@(*)
if (en == 1)
    case (sel)
        0: out = 4'b0001;
        1: out = 4'b0010;
        2: out = 4'b0100;
        3: out = 4'b1000;
    endcase
 else
    out = 4'b0000;
endmodule
