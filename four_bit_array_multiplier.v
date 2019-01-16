`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2019 10:12:25
// Design Name: 
// Module Name: four_bit_array_multiplier
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


module four_bit_array_multiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] M
    );

wire [0:3] d1,d2,d3,d4;
wire [0:2] w1,w2,w3;
wire [0:2] c1,c2,c3,c4;  

assign d1[0] = A[0] &B[0];assign d1[1] = A[1] &B[0];assign d1[2] = A[2] &B[0];assign d1[3] = A[3] &B[0]; 
assign d2[0] = A[0] &B[1];assign d2[1] = A[1] &B[1];assign d2[2] = A[2] &B[1];assign d2[3] = A[3] &B[1]; 
assign d3[0] = A[0] &B[2];assign d3[1] = A[1] &B[2];assign d3[2] = A[2] &B[2];assign d3[3] = A[3] &B[2]; 
assign d4[0] = A[0] &B[3];assign d4[1] = A[1] &B[3];assign d4[2] = A[2] &B[3];assign d4[3] = A[3] &B[3]; 

assign M[0] = d1[0];
//first layer;
half_adder_structural X1(d1[1],d2[0],w1[0],c1[0]);
half_adder_structural X2(d1[2],d2[1],w1[1],c1[1]);
half_adder_structural X3(d1[3],d2[2],w1[2],c1[2]);
assign M[1] = w1[0];
//seacond layer;
FA_using_HA L1(d3[0],w1[1],c1[0],w2[0],c2[0]);
FA_using_HA L2(d3[1],w1[2],c1[1],w2[1],c2[1]);
FA_using_HA L3(d3[2],d2[3],c1[2],w2[2],c2[2]);
assign M[2] = w2[0];
//third layer;
FA_using_HA L4(d4[0],w2[1],c2[0],w3[0],c3[0]);
FA_using_HA L5(d4[1],w2[2],c2[1],w3[1],c3[1]);
FA_using_HA L6(d4[2],d3[3],c2[2],w3[2],c3[2]);
assign M[3] = w3[0];
//fourth layer;
half_adder_structural X4(w3[1],c3[0],M[4],c4[0]);
FA_using_HA L7(w3[2],c3[1],c4[0],M[5],c4[1]);
FA_using_HA L8(d4[3],c3[2],c4[1],M[6],M[7]);   
    
endmodule
