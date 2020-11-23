`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 13:25:53
// Design Name: 
// Module Name: Mux2
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


module Mux2(input ALUSrc,input [31:0] Read_data_2,input [31:0] Sign_extend,output reg [31:0] out);
always@(ALUSrc or Read_data_2 or Sign_extend)begin
if(ALUSrc == 0)out <= Read_data_2;
else out <= Sign_extend;
end
endmodule
