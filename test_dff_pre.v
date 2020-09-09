`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:21:07 08/25/2020
// Design Name:   dff_pre
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_dff_pre.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff_pre
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dff_pre;

	// Inputs
	reg d;
	reg pre;
	reg en;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff_pre uut (
		.d(d), 
		.pre(pre), 
		.en(en), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		d <= 0;
		pre = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 en = 1;
		 pre = 0;
		 d <= 0;
		 #100;
		 
		 d <= 1;
		 #100
		 
		 en = 0;
		 d <= 0;
		 #100;
		 
		 en = 1;
		 d <= 1;
		 pre = 1;
		  
	end
      
endmodule

