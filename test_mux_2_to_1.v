`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:09 08/22/2020
// Design Name:   mux_2_to_1
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_mux_2_to_1.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux_2_to_1;

	// Inputs
	reg i0;
	reg i1;
	reg s0;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_2_to_1 uut (
		.i0(i0), 
		.i1(i1), 
		.s0(s0), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		s0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i0 = 0;
		i1 = 0;
		s0 = 1;
		#100;
		
		i0 = 0;
		i1 = 1;
		s0 = 0;
		#100;
		
		i0 = 0;
		i1 = 1;
		s0 = 1;
		#100;
		
		i0 = 1;
		i1 = 0;
		s0 = 0;
		#100;
		
		i0 = 1;
		i1 = 0;
		s0 = 1;
		#100;
		
		i0 = 1;
		i1 = 1;
		s0 = 0;
		#100;
		
		i0 = 1;
		i1 = 1;
		s0 = 1;
		#100;
	end
      
endmodule

