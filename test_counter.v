`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:33 08/25/2020
// Design Name:   counter
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_counter.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_counter;

	// Inputs
	reg clk;
	reg ce;
	reg clr;

	// Bidirs
	wire f;
	wire d;
	wire e;
	wire i;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.ce(ce), 
		.clr(clr), 
		.f(f), 
		.d(d), 
		.e(e), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		ce = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#50;
      clr = 0;  
		// Add stimulus here

	end
	
		initial begin
		clk = 0;
		forever #50 clk = ~clk;
	end
      
      
endmodule

