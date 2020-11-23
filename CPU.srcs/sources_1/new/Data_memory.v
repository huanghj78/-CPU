`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 14:47:00
// Design Name: 
// Module Name: Data_memory
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


module Data_memory(input clk,input MemRead,input MemWrite,input [31:0] Address,input [31:0] Write_data, output [31:0] Read_data);
reg [7:0] RAM [0:63];

assign Read_data[7:0]   = (MemRead == 1) ? RAM[Address+3] : 8'bz;
assign Read_data[15:8]  = (MemRead == 1) ? RAM[Address+2] : 8'bz;
assign Read_data[23:16]  = (MemRead == 1) ? RAM[Address+1] : 8'bz;
assign Read_data[31:24]  = (MemRead == 1) ? RAM[Address+0] : 8'bz;

always@(posedge clk)begin
if(MemWrite == 1)begin
RAM[Address + 0] <= Write_data[31:24];
RAM[Address + 1] <= Write_data[23:16];
RAM[Address + 2] <= Write_data[15:8];
RAM[Address + 3] <= Write_data[7:0];
end
end
endmodule
