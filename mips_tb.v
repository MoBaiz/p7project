`timescale 1us / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:31 11/27/2014
// Design Name:   mips
// Module Name:   K:/Users/mobai/Desktop/ise/project5/mips_tb.v
// Project Name:  project5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	mips zch (
		.clk(clk), 
		.rst(rst)
	);

	initial 
	begin
	 $monitor("PC=%8x,IR=%8x",zch.PC.pc,zch.im.dout);
		// Initialize Inputs
		#0
		clk = 1;
		rst = 1;
      #1
		rst=0;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      always #1 clk=~clk;

endmodule

