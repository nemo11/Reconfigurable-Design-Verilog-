`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 17:59:11
// Design Name: 
// Module Name: SevenSegment
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


module SevenSegment(
    input [3:0] X,
    output [6:0] Y
    );
reg [6:0] Out;
always@(X) begin
case(X)
4'b0000 : Out = 7'b1111110;
4'b1000 : Out = 7'b1111111;
default : Out = 7'b0000000;
endcase
end
assign Y = Out;
endmodule   