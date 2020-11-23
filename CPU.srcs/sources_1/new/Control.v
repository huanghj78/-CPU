`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 11:36:04
// Design Name: 
// Module Name: Control
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


module Control(input [5:0] ins_31_26,output reg RegDst,
output reg Branch,output reg MemRead,output reg MemtoReg,
output reg [1:0] ALUOp,output reg MemWrite,output reg ALUSrc,output reg RegWrite);
always@(ins_31_26)begin
case(ins_31_26)
6'b000000:begin
RegDst <= 1;
ALUSrc <= 0;
MemtoReg <= 0;
RegWrite <= 1;
MemRead <= 0;
MemWrite <= 0;
Branch <= 0;
ALUOp <= 2'b10;
end
6'b100011:begin
RegDst <= 0;
ALUSrc <= 1;
MemtoReg <= 1;
RegWrite <= 1;
MemRead <= 1;
MemWrite <= 0;
Branch <= 0;
ALUOp <= 2'b00;
end
6'b101011:begin
RegDst <= 1'bx;
ALUSrc <= 1;
MemtoReg <= 1'bx;
RegWrite <= 0;
MemRead <= 0;
MemWrite <= 1;
Branch <= 0;
ALUOp <= 2'b00;
end
6'b000100:begin
RegDst <= 1'bx;
ALUSrc <= 0;
MemtoReg <= 1'bx;
RegWrite <= 0;
MemRead <= 0;
MemWrite <= 0;
Branch <= 1;
ALUOp <= 2'b01;
end
endcase
end
endmodule
