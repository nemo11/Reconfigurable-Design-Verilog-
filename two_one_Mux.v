`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 01:11:01
// Design Name: 
// Module Name: two_one_Mux
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


module two_one_Mux(
    input D0,
    input D1,
    input S,
    output Y
    );
    
    assign Y = ((!S)&D0)|(S&D1);
    
endmodule
