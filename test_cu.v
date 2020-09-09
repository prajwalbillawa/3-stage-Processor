`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:13 08/27/2020
// Design Name:   cu
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_cu.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cu;

	// Inputs
	reg [7:0] ir;
	reg clk;
	reg ce;
	reg clr;

	// Outputs
	wire muxa;
	wire muxb;
	wire muxc;
	wire en_da;
	wire en_pc;
	wire en_in;
	wire ram_we;
	wire s0;
	wire s1;
	wire s2;
	wire s3;
	wire s4;

	// Instantiate the Unit Under Test (UUT)
	cu uut (
		.ir(ir), 
		.clk(clk), 
		.ce(ce), 
		.clr(clr), 
		.muxa(muxa), 
		.muxb(muxb), 
		.muxc(muxc), 
		.en_da(en_da), 
		.en_pc(en_pc), 
		.en_in(en_in), 
		.ram_we(ram_we), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4)
	);
	
	initial begin
		clk = 0;
		forever #20 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		ir = 8'b00000000;
		clk = 0;
		ce = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#10;
      clr = 0; 
		// Add stimulus here
		ir = 8'b00010000;
		#100;
		ir = 8'b00100000;
		#100;
		ir = 8'b00110000;
		#100;
		ir = 8'b01000000;
		#100;
		ir = 8'b01010000;
		#100;
	end
      
endmodule

