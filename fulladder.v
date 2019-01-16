`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 01:10:45
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
 
wire w1, w2 , w3;

assign w1 = A^B;
assign Sum  = w1^Cin;
assign w2 = w1^Cin;
assign w3 = A&B;
assign Cout = w2|w3;
    
endmodule
