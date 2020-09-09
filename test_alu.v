`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:35 08/22/2020
// Design Name:   alu
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_alu.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg s0;
	reg s1;
	reg s2;
	reg s3;
	reg s4;

	// Outputs
	wire [7:0] o;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4), 
		.o(o), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 8'b11100000;
		b = 8'b00000011;
		s0 = 0;
		s1 = 0;
		s2 = 0;
		s3 = 0;
		s4 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b11100000;
		b = 8'b00000011;
		s0 = 0;
		s1 = 0;
		s2 = 1;
		s3 = 1;
		s4 = 0;
		#100;
		
		a = 8'b11100000;
		b = 8'b00000011;
		s0 = 1;
		s1 = 0;
		s2 = 0;
		s3 = 0;
		s4 = 0;
	end
      
endmodule

