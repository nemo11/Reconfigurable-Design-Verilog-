`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2018 22:14:57
// Design Name: 
// Module Name: half_adder_structural
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


module half_adder_structural(
    input A,
    input B,
    output Sum,
    output C
    );
    
xor(Sum , A , B);
and(C , A , B);
endmodule
