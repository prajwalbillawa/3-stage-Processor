`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:42 09/09/2020
// Design Name:   processor
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_processor.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_processor;

	// Inputs
	reg clk;
	reg ce;
	reg clr;

	// Outputs
	wire [15:0] o;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.clk(clk), 
		.ce(ce), 
		.clr(clr), 
		.o(o)
	);
	
	initial begin
		clk = 0;
		forever #20 clk = ~clk;
	end

	initial begin
		//#100;
		// Initialize Inputs
		ce = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		clr = 0;
	end
      
endmodule

