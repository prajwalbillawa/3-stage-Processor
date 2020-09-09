`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:46 08/27/2020 
// Design Name: 
// Module Name:    inst_decoder 
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
module inst_decoder(
    input [7:0] ir,
    input d,
    input e,
    output loadf,
    output addf,
    output subf,
    output bitandf,
    output inpf,
    output outpf
    );
	 
	 wire wload,wadd,wsub,wbitand,winp,wout;
	 wire win;
	 sub_decoder u1(ir[7:0],wload,wadd,wsub,wbitand,winp,wout);
	 or(win,d,e);
	 and(loadf,wload,win);
	 and(addf,wadd,win);
	 and(subf,wsub,win);
	 and(bitandf,wbitand,win);
	 and(inpf,winp,win);
	 and(outpf,wout,win);
	 
endmodule
