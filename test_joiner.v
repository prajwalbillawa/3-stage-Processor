`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:21 08/27/2020
// Design Name:   joiner
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_joiner.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: joiner
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_joiner;

	// Inputs
	reg [7:0] low;
	reg [7:0] high;

	// Outputs
	wire [15:0] o;

	// Instantiate the Unit Under Test (UUT)
	joiner uut (
		.low(low), 
		.high(high), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		low = 8'b11111111;
		high = 8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		low = 8'b00000000;
		high = 8'b11111111;
	end
      
endmodule

