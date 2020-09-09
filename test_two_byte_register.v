`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:30 08/23/2020
// Design Name:   two_byte_register
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_two_byte_register.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_byte_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_two_byte_register;

	// Inputs
	reg [15:0] d;
	reg clk;
	reg en;
	reg res;

	// Outputs
	wire [15:0] q;

	// Instantiate the Unit Under Test (UUT)
	two_byte_register uut (
		.d(d), 
		.clk(clk), 
		.en(en), 
		.res(res), 
		.q(q)
	);

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		d <= 16'b0000000011111111;
		res = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 en = 1;
		 res = 0;
		 d <= 16'b1111000000001111;
		 #100;
		 
		 d <= 16'b0000111110101010;
		 #100
		 
		 en = 0;
		 d <= 16'b1111000010101010;
		 #100;
		 
		 en = 1;
		 d <= 16'b0000111110101010;
		 res = 1;
		  
	end
      
endmodule

