`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:41:25 08/27/2020
// Design Name:   splitter
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_splitter.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: splitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_splitter;

	// Inputs
	reg [15:0] a;

	// Outputs
	wire [7:0] low;
	wire [7:0] high;

	// Instantiate the Unit Under Test (UUT)
	splitter uut (
		.a(a), 
		.low(low), 
		.high(high)
	);

	initial begin
		// Initialize Inputs
		a = 16'b1111111100000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 16'b0000000011111111;
		#100;
		
		a = 16'b1000000000000001;
		#100;
		
		a = 16'b1010101000000000;
		#100;
		
		a = 16'b0101010110101010;
		#100;
	end
      
endmodule

