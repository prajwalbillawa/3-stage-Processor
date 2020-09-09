`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:36 08/25/2020 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    input ce,
    input clr,
    inout f,
    inout d,
    inout e,
    inout i
    );
	 
	 dff_pre u1(.d(i),.pre(clr),.en(ce),.clk(clk),.q(f));
	 dff u2(.d(f),.res(clr),.clk(clk),.en(ce),.q(d));
	 dff u3(.d(d),.res(clr),.clk(clk),.en(ce),.q(e));
	 dff u4(.d(e),.res(clr),.clk(clk),.en(ce),.q(i));

	 
endmodule
