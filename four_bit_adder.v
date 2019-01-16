`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2018 22:53:27
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
 
wire w1,w2,w3;    
fulladder L1(A[0],B[0],Cin,S[0],w1);
fulladder L2(A[1],B[1],w1,S[1],w2);
fulladder L3(A[2],B[2],w2,S[2],w3);
fulladder L4(A[3],B[3],w3,S[3],Cout);    
endmodule
