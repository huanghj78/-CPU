`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 14:53:50
// Design Name: 
// Module Name: CPU_sim
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


module CPU_sim();
reg clk1 =0; always #10 clk1 = ~clk1;
reg clk2 =0; always #10 clk2 = ~clk2;
reg clk3 =0; always #10 clk3 = ~clk3;
reg clk4 =0; always #10 clk4 = ~clk4;
reg init; initial init = 1'b0;
wire Branch;
wire Jump;
wire RegDst;
wire RegWrite1;
wire MemRead ;
wire MemWrite;
wire ALUSrc;
wire MemtoReg;
wire [1:0] ALUOp;

reg [31:0]PC_init;
initial begin
PC_init = 32'b00000000000000000000000000000000;
end

wire [31:0] Mux3_out;
//wire [31:0] PC_in = 32'b00000000000000000000000000000000;
wire [31:0] PC_out;
wire [31:0] Add1_out;
wire [31:0] Add2_out;
wire [31:0] PCforJump;
wire [31:0] instruction ;
wire [4:0] Mux1_out;
wire [31:0] Mux4_out;
wire [31:0] Mux5_out;
wire [31:0] Read_data_1;
wire [31:0] Read_data_2;
wire [31:0] Sign_extend_out;
wire [31:0] Mux2_out;
wire [31:0] Shift_2_out;
wire [3:0] toALU;
wire [31:0] result;
wire [31:0] Read_data;
wire [15:0] Sign_extend_in = instruction[15:0];
wire Zero = init;
wire And_gate_out;


PC pc(clk4,Mux5_out,PC_out);
Add1 add1(PC_out,Add1_out);
Shift_2 shift_2(Sign_extend_out,Shift_2_out);
Add2 add2(Add1_out,Shift_2_out,Add2_out);
And_gate and_gate(Branch,Zero,And_gate_out);
Mux3 mux3(Add1_out,Add2_out,And_gate_out,Mux3_out);//??
PC_for_jump pc_for_jump(PC_out,instruction,PCforJump);
Mux5 mux5(PCforJump,Mux3_out,Jump,Mux5_out);


Instruction_memory instruction_memory(clk3,PC_out,instruction);
Mux1 mux1(RegDst,instruction[15:11],instruction[20:16],Mux1_out);
Registers registers(clk2,RegWrite,instruction[25:21],instruction[20:16],Mux1_out,Mux4_out,Read_data_1,Read_data_2);
Control control(instruction[31:26],RegDst,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite);
Sign_extend sign_extend(Sign_extend_in,Sign_extend_out);
Mux2 mux2(ALUSrc,Read_data_2,Sign_extend_out,Mux2_out);
ALU_control alu_control(ALUOp,instruction[5:0],toALU);
ALU alu(Read_data_1,Mux2_out,toALU,result,Zero);
Data_memory data_memory(clk1,MemRead,MemWrite,result,Read_data_2,Read_data);
Mux4 mux4(MemtoReg,Read_data,result,Mux4_out);

endmodule
