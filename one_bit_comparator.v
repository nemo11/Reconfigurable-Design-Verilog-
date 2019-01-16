`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2019 09:23:22
// Design Name: 
// Module Name: one_bit_comparator
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


module one_bit_comparator(
    input A,
    input B,
    output [2:0] Y
    );
    
assign Y[0] = !(A^B);               // A=B
assign Y[1] = !(A)&B;            // A<B
assign Y[2] = (A)&!(B);          // A>B

endmodule
