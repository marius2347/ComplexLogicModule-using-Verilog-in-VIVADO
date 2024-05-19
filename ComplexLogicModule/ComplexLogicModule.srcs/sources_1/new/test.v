`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2024 12:48:37 PM
// Design Name: 
// Module Name: test
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

# Simulating the modules
module test();

// declaring the signals
// reg for inputs
reg [2:0] A,B;
reg ck, reset;
// wire for outputs
wire outp;
wire [3:0] out_sum;
wire [2:0] out_num;

// instantiate the TOP circuit
TOP dut (
    .A (A),
    .B (B),
    .ck (ck),
    .reset (reset),
    .outp (outp),
    .out_sum (out_sum),
    .out_num (out_num)
);

// write the signals
initial begin
    ck = 0;
    forever #10 ck = ~ck;
end

initial begin
    reset = 1;
    A = 7;
    B = 4;
    #20 reset = 0;
 end
endmodule
