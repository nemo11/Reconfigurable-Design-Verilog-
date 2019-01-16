`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 17:09:13
// Design Name: 
// Module Name: BCD2GRAY
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


module BCD2GRAY(
    input [3:0] X,
    output [3:0] Y
    );
    
assign Y[3] = X[3];
assign Y[2] = X[3]^X[2];
assign Y[1] = X[2]^X[1];
assign Y[0] = X[1]^X[0];  
endmodule
