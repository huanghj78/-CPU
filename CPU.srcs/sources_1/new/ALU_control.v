`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 13:49:41
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(input [1:0] ALUOp,input [5:0] ins_5_0,output reg [3:0] toALU);
always@(ALUOp or ins_5_0 )begin
if(ALUOp == 2'b00) toALU <= 4'b0010;
if(ALUOp == 2'b01) toALU <= 4'b0110;
if(ALUOp == 2'b10)begin
    case(ins_5_0)
    6'b100000: toALU <= 4'b0010;
    6'b100010: toALU <= 4'b0110;
    6'b100100: toALU <= 4'b0000;
    6'b100101: toALU <= 4'b0001;
    6'b101010: toALU <= 4'b0111;
    endcase
end
end
endmodule
