`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 13:58:34
// Design Name: 
// Module Name: Mux4
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


module Mux4(input MemtoReg,input [31:0] Read_data,input [31:0] result,output reg [31:0] WB);
always@(Read_data or result)begin
if(MemtoReg == 1'b1) WB <= Read_data;
else WB <= result;
end
endmodule
