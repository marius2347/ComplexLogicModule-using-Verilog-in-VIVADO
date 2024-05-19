`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 12:17:25 PM
// Design Name: 
// Module Name: counter
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

// Count the time of clock if it is enabled and not reset
module counter(
        input CK, reset, en, 
        output reg [2:0] out
    );
always@(posedge CK)
if (reset)
    out <= 0;
else if (en == 1)
    out <= out + 1;
else 
    out <= out;
endmodule
