`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 10:16:03
// Design Name: 
// Module Name: PC_add_4
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


module PC_add_4();
reg clk;
wire [31:0] PCout;
wire [31:0] PC_4;
wire [31:0] out;
initial begin
clk = 0;
end
always #10 clk = ~clk;
Add1 add1(PCout,PC_4);
PC pc(clk,out,PCout);
Mux3 mux3(PC_4,0,0,out);
endmodule
