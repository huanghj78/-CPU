`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 14:33:42
// Design Name: 
// Module Name: PC_for_jump
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


module PC_for_jump(input [31:0]PC,input [31:0] ins,output reg [31:0] PCforJump);
reg [31:0] PC_4;
reg [27:0] tmp;
always@(PC)begin
PC_4 <= PC + 3'b100;
tmp[27:0] <= {ins[25:0],{2'b00}};
PCforJump = {PC_4[31:28],tmp};
end
endmodule
