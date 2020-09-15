`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:48 08/28/2020 
// Design Name: 
// Module Name:    mem 
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
module mem(
    input [15:0] din,
    input [7:0] addr,
    input we,
    output reg [15:0] dout
    );
	 
	 reg [15:0] mem[0:7];
	 
	 initial begin
		mem[0] <= 16'h007D;
		mem[1] <= 16'h1024;
		mem[2] <= 16'h5005;
		mem[3] <= 16'hFFFF;
		mem[4] <= 16'hFFFF;
		mem[5] <= 16'hFFFF;
		mem[6] <= 16'hFFFF;
		mem[7] <= 16'hFFFF;
	 end
	 
	 always @(addr,we) begin
	   
	   if(we == 1'b1) begin
			mem[addr] = din;
		end
		dout = mem[addr];
	 end	

endmodule
