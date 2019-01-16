`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 17:12:44
// Design Name: 
// Module Name: GRAY2BCD
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


module GRAY2BCD(
    input [3:0] X,
    output [3:0] Y
    );
    
assign Y[3] = X[3];
assign Y[2] = X[2]^Y[3];
assign Y[1] = X[1]^Y[2];
assign Y[0] = X[0]^Y[1];
        
endmodule
