`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2019 13:50:10
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [3:0] a,
    input [3:0] b,
    output A, B, S
    );
    
wire [2:0] w1,w2,w3,w0;
wire [1:0] d1,d2,d3;
 
one_bit_comparator L1(a[3],b[3],w3);
one_bit_comparator L2(a[2],b[2],w2);
one_bit_comparator L3(a[1],b[1],w1);
one_bit_comparator L4(a[0],b[0],w0);

assign d1[0] = w3[0]&w2[2];
assign d1[1] = w3[0]&w2[1];

assign d2[0] = w3[0]&w2[0]&w1[2];
assign d2[1] = w3[0]&w2[0]&w1[1];

assign d3[0] = w3[0]&w2[0]&w1[0]&w0[2];
assign d3[1] = w3[0]&w2[0]&w1[0]&w0[1];

assign A = w3[2]|d1[0]|d2[0]|d3[0];
assign B = w3[1]|d1[1]|d2[1]|d3[1];
assign S = w3[0]&w1[0]&w2[0]&w0[0];

endmodule
