module ALU(ALUop,a,b,result);
    input[4:0] ALUop;
    input[31:0] a;
    input[31:0] b;
    output[31:0] result;
    reg[31:0] result; 
    
    
   
    always@(ALUop or a or b )
    begin
    case(ALUop)
	 5'b00000:  result=a|b;   //or
	 5'b00001:  result=a+b;   //add
	 5'b00010:  result=a-b;   //sub
	 5'b00011:  result={b[15:0],{16{1'b0}}}; //lui
	 5'b00100:  result=b<<a[4:0];  //sllv,sll
	 5'b00101:  result=b^a;   //xor
	 5'b00110:  result=b>>a[4:0];  //srl,srlv
	 5'b00111:  result=$signed(b)>>>a[4:0]; //sra,srav
	 5'b01000:  result=a&b; //and 
	 5'b01001:  result=~(a|b); //nor
	 5'b01010:  result=($signed(a)<$signed(b))?1:0;  //slt
    5'b01011:  result=({{1'b0},a}<{{1'b0},b})?1:0; //sltu
	 default: ;
	 endcase
	 end
	
endmodule