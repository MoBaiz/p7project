`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:11:19 12/21/2014
// Design Name:   times
// Module Name:   K:/Users/mobai/Desktop/ise/p7project/TIMES_tb.v
// Project Name:  p7project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: times
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TIMES_tb;

	// Inputs
	reg CLK_I;
	reg RST_I;
	reg [3:2] ADD_I;
	reg WE_I;
	reg [31:0] DAT_I;

	// Outputs
	wire [31:0] DAT_O;
	wire IRQ;

	// Instantiate the Unit Under Test (UUT)
	times uut (
		.CLK_I(CLK_I), 
		.RST_I(RST_I), 
		.ADD_I(ADD_I), 
		.WE_I(WE_I), 
		.DAT_I(DAT_I), 
		.DAT_O(DAT_O), 
		.IRQ(IRQ)
	);

	initial begin
		// Initialize Inputs
		CLK_I = 0;
		RST_I = 0;
		ADD_I = 0;
		WE_I = 0;
		DAT_I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

