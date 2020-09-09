`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:53 08/23/2020
// Design Name:   register_half
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_register_half.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_half
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_register_half;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg en;
	reg res;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	register_half uut (
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
		d <= 4'b1111;
		res = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 en = 1;
		 res = 0;
		 d <= 4'b1111;
		 #100;
		 
		 d <= 4'b1111;
		 #100
		 
		 en = 0;
		 d <= 4'b0000;
		 #100;
		 
		 en = 1;
		 d <= 4'b1111;
		 res = 1;
		  
	end
      
endmodule

