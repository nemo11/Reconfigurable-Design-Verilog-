`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2018 22:38:48
// Design Name: 
// Module Name: FA_using_HA
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


module FA_using_HA(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
wire w1,w2,w3;    
lab1 X1(A,B,w1,w2);
lab1 X2(w1,Cin,Sum,w3);
or(Cout,w2,w3);  
    
endmodule
