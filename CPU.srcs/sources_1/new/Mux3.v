`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 10:05:24
// Design Name: 
// Module Name: Mux3
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


module Mux3(PC_4,branch,control,out);
input [31:0]PC_4;
input [31:0]branch;
input control;
output reg [31:0]out;
always@(PC_4 or branch or control)begin
if(control == 1'b0)begin
out <= PC_4;
end
else begin
out <= branch;
end
end
endmodule
