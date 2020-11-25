`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 13:29:43
// Design Name: 
// Module Name: Registers
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


module Registers(input RegWrite,input [4:0] Read_register_1,input [4:0] Read_register_2,input [31:0] Mux4,input [4:0] Mux1,
output [31:0] Read_data_1,output [31:0] Read_data_2);
reg [31:0] registers [31:0];
initial begin registers[0] = 32'b00000000000000000000000000000000;end

assign Read_data_1 = registers[Read_register_1];
assign Read_data_2 = registers[Read_register_2];

always@(*/*RegWrite or Mux4 or Mux1*/)begin
if(RegWrite == 1'b1)begin
registers[Mux1] = Mux4; 
end
end
endmodule
