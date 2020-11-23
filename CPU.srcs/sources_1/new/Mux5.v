`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 14:43:13
// Design Name: 
// Module Name: Mux5
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


module Mux5(input [31:0]PCforJump,input [31:0]Mux3,input Jump,output reg[31:0] out);
always@(PCforJump or Mux3)begin
if(Jump == 1'b1)out <= PCforJump;
else out <= Mux3;
end
endmodule
