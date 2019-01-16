`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 18:21:55
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(
    input S,
    input R,
    input Clk,
    output Q,
    output Qbar
    );

wire w1,w2;    
nand(w1,S,Clk);
nand(w2,R,Clk);
nand(Q,w1,Qbar);
nand(Qbar,w2,Q);
endmodule
