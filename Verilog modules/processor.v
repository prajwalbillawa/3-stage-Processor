`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:12 08/28/2020 
// Design Name: 
// Module Name:    processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module processor(
    input clk,
    input ce,
    input clr,
    output [15:0] o
    );
	 
	 //Accumulator
	 wire [7:0] qda;
	 
	 //ALU
	 wire [7:0] ao;
	 wire cout;
	 
	 //MuxA
	 wire [7:0] a;
	 
	 //muxB
	 wire [7:0] b;
	 
	 //Splitter top
	 wire [7:0] s_t_low;
	 
	 //Splitter down
	 wire [7:0] s_d_low,s_d_high;
	 
	 //IR
	 wire [15:0] qin;
	 
	 //PC
	 wire [7:0] qpc;
	 
	 //CU
	 wire [7:0] ir;
	 wire muxa,muxb,muxc,en_da,en_pc,en_in,ram_we,s0,s1,s2,s3,s4;
	 
	 
	 //##############
	 
	 //Memory Unit
	 wire [15:0] min;
	 wire [15:0] mout;
	 wire [7:0] addr;
	 mem memory_unit(min,addr,ram_we,mout);
	 //
	 
	 //Joiner
	 wire [7:0] j_b = 8'h00;
	 joiner joiner(qda,j_b,min);
	 //
	 
	 //Accumulator
	 
	 byte_register accumulator(ao,clk,en_da,clr,qda);
	 //
	 
	 //ALU

	 alu aLu(a,b,s0,s1,s2,s3,s4,ao,cout);
	 //
	 
	 //MUXA
	 
	 byte_mux_2_to_1 mxa(qda,qpc,muxa,a);
	 //
	 
	 //MUXB
	 
	 byte_mux_2_to_1 mxb(s_d_low,s_t_low,muxb,b);
	 //
	 
	 //Splitter
	 
	 splitter top_splitter(qin,s_t_low,ir);
	 //
	 
	 //Splitter
	 
	 splitter down_splitter(mout,s_d_low,s_d_high);
	 //
	 
	 //Instruction Register
	 
	 two_byte_register inst_reg(mout,clk,en_in,clr,qin);
	 //
	 
	 //Program Counter
	 
	 byte_register prog_count(ao,clk,en_pc,clr,qpc);
	 //
	 
	 //MUX C
	 byte_mux_2_to_1 mxc(qpc,s_t_low,muxc,addr);
	 //
	 
	 //Control Unit
	 
	 cu control_unit(ir[7:0],clk,ce,clr,muxa,muxb,muxc,en_da,en_pc,en_in,ram_we,s0,s1,s2,s3,s4);
	 //
	 
	 assign o = min;

endmodule
