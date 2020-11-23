`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/20 13:01:55
// Design Name: 
// Module Name: PC
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


module PC(clk,PCin,PCout);
input clk;
input [31:0]PCin;
output reg [31:0]PCout;
initial begin
PCout = 0;
end
always@(posedge clk) begin
PCout <= PCin;
end
endmodule
