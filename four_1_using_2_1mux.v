`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 02:02:25
// Design Name: 
// Module Name: four_1_using_2_1mux
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


module four_1_using_2_1mux(
    input [3:0] D,
    input [1:0] S,
    output Y
    );
    
wire w1,w2;
    
two_one_Mux L1(D[0],D[1],S[1],w1);     
two_one_Mux L2(D[2],D[3],S[1],w2);    
two_one_Mux L3(w1,w2,S[0],Y);
    
endmodule
