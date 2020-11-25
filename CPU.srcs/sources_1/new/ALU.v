`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 14:07:08
// Design Name: 
// Module Name: ALU
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


module ALU(input [31:0] Read_data_1,input [31:0] Mux1,input [3:0] ALU_control,output reg [31:0] result,output reg Zero);
initial 
Zero = 1'b0;
always@(Read_data_1 or Mux1 or ALU_control)begin//Read_data_1 or Mux1 or 
case(ALU_control)
4'b0000:begin result <= Read_data_1 & Mux1;end
4'b0001:begin result <= Read_data_1 | Mux1;end
4'b0010:begin result <= /*32'b00000000000000000000000000000000+2'b11*/Read_data_1+Mux1;end//??????

4'b0110:begin 
result <= Read_data_1 - Mux1; 
if(result == 0) Zero <= 1'b1;
end
4'b0111:begin
if(Read_data_1 < Mux1) result <= 1'b0;
else result <= 1'b1;  
end
4'b1100:result <= ~(Read_data_1 | Mux1);
endcase
end
endmodule
