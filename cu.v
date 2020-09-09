`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:11 08/27/2020 
// Design Name: 
// Module Name:    cu 
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
module cu(
    input [7:0] ir,
    input clk,
    input ce,
    input clr,
    output muxa,
    output muxb,
    output muxc,
    output en_da,
    output en_pc,
    output en_in,
    output ram_we,
    output s0,
    output s1,
    output s2,
    output s3,
    output s4
    );
	 
	 wire f,d,e,i;
	 wire load,add,sub,bitand,inp,out;
	 
	 counter u1(clk,ce,clr,f,d,e,i);
	 inst_decoder u2(ir[7:0],d,e,load,add,sub,bitand,inp,out);
	 
	 //MUXA
	 buf(muxa,i);	
	 //##########

	 //MUXB
	 wire wmuxb;
	 or(wmuxb,load,add,sub,bitand);
	 buf(muxb,wmuxb);
	 //##########
	 
	 //MUXC
	 wire wmuxc;
	 or(wmuxc,inp,out);
	 buf(muxc,wmuxc);
	 //##########
	 
	 //EN_DA
	 wire w1,w2;
	 or(w1,load,add,sub,bitand,inp);
	 and(w2,w1,e);
	 buf(en_da,w2);
	 //##########
	 
	 //EN_PC
	 buf(en_pc,i);
	 //##########
	 
	 //EN_IN
	 buf(en_in,f);
	 //##########
	 
	 //RAM_WE
	 wire wram;
	 and(wram,e,out);
	 buf(ram_we,wram);
	 //##########
	 
	 //S0
	 wire ws0;
	 or(ws0,load,inp,bitand);
	 buf(s0,ws0);
	 //##########
	 
	 //S1
	 wire ws1;
	 or(ws1,load,inp,out);
	 buf(s1,ws1);
	 //##########
	 
	 //S2
	 wire ws2;
	 or(ws2,i,sub);
	 buf(s2,ws2);
	 //##########
	 
	 //S3
	 buf(s3,sub);
	 //##########
	 
	 //S4
	 buf(s4,i);
	 //##########

endmodule
