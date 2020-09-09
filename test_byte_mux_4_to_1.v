`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:19 08/22/2020
// Design Name:   byte_mux_4_to_1
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_mux_4_to_1.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_mux_4_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_mux_4_to_1;

	// Inputs
	reg [7:0] i0;
	reg [7:0] i1;
	reg [7:0] i2;
	reg [7:0] i3;
	reg s0;
	reg s1;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	byte_mux_4_to_1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i0 = 8'b11111111;
		i1 = 8'b00000000;
		i2 = 8'b10101010;
		i3 = 8'b00001111;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i0 = 8'b11111111;
		i1 = 8'b00000000;
		i2 = 8'b10101010;
		i3 = 8'b00001111;
		s0 = 0;
		s1 = 1;
		#100;
		
		i0 = 8'b11111111;
		i1 = 8'b00000000;
		i2 = 8'b10101010;
		i3 = 8'b00001111;
		s0 = 1;
		s1 = 0;
		#100;
		
		i0 = 8'b11111111;
		i1 = 8'b00000000;
		i2 = 8'b10101010;
		i3 = 8'b00001111;
		s0 = 1;
		s1 = 1;
		#100;
		
	end
      
endmodule

