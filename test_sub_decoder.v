`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:54:50 08/27/2020
// Design Name:   sub_decoder
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_sub_decoder.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sub_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sub_decoder;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire load;
	wire add;
	wire sub;
	wire bitand;
	wire inp;
	wire out;

	// Instantiate the Unit Under Test (UUT)
	sub_decoder uut (
		.a(a), 
		.load(load), 
		.add(add), 
		.sub(sub), 
		.bitand(bitand), 
		.inp(inp), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b00010000;
		#100;
		a = 8'b00100000;
		#100;
		a = 8'b00110000;
		#100;
		a = 8'b01000000;
		#100;
		a = 8'b01010000;
		#100;

	end 
endmodule

