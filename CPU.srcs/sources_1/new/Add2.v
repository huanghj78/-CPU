`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 15:05:06
// Design Name: 
// Module Name: Add2
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


module Add2(input [31:0] Add1_out,input [31:0] Sign_extend,output reg [31:0] out);
reg [31:0] tmp;
always@(Add1_out or Sign_extend)begin
tmp <= Sign_extend << 2;
out = tmp + Add1_out;
end
endmodule
