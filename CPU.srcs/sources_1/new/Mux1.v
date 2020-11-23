`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 13:15:12
// Design Name: 
// Module Name: Mux1
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


module Mux1(input RegDst,input [4:0] ins_15_11,input [4:0] ins_20_16,output reg [4:0]out);
always@(ins_15_11 or ins_20_16)begin
if(RegDst == 0)out <= ins_20_16;
else out<= ins_15_11;
end
endmodule
