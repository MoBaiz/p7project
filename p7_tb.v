`timescale 1us / 1ps

module p7_tb;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	p7 zch(
		.clk(clk), 
		.rst(rst)
	);
initial 
  
  begin
	 $monitor("PC=%8x,IR=%8x",zch.cpu.PC.pc,zch.cpu.im.dout);
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

