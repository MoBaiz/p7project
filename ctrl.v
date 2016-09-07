`define eret 32'b01000010000000000000000000011000
`define mtc0 11'b01000000100
`define mfc0 11'b01000000000
module control(ir_d,funt,opcode,regdst,alusrc,memtoreg,REGwrite,memwrite,extop,aluop,branch);
  input[31:0] ir_d;
  input[5:0] funt;
  input[5:0] opcode;
  output[3:0] branch;
  output[4:0] aluop;
  output[1:0] memtoreg,regdst;
  output alusrc,REGwrite,extop,memwrite;
  reg[3:0] branch;
  reg[4:0] aluop;
  reg[1:0] memtoreg,regdst;
  reg  alusrc,regwrite,extop,memwrite;
  wire a;
  assign a=ir_d[31:21]==`mfc0;
  always @ (funt or opcode)
  begin
   begin
   casex({funt,opcode})
	//r类
    12'b100001000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000010000;   //addu
    12'b100011000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000100000;   //subu
	 12'b100000000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000010000;   //add
    12'b100010000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000100000;   //sub
	 12'b100101000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000000000;  //or
	 12'b100110000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001010000;  //xor
	 12'b000100000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001000000;  //sllv
	 12'b000000000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001000000;  //sll
	 12'b000010000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001100000;  //srl
	 12'b000011000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001110000;  //sra
	 12'b000110000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001100000;  //srlv
	 12'b000111000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100001110000;  //srav
	 12'b100100000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100010000000;  //and
	 12'b100111000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100010010000;  //nor
	 12'b101010000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100010100000;  //slt
	 12'b101011000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100010110000;  //sltu
	//i类
    12'b??????001101: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100100000000000;   //ori
	 12'b??????001111: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100101000110000;   //lui
	 12'b??????001001: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100101000010000;  //addiu
	 12'b??????001000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100101000010000;  //addi
	 12'b??????001100: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100100010000000;  //andi
	 12'b??????001110: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100100001010000;  //xori
	 12'b??????001010: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100101010100000;  //slti
	 12'b??????001011: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100101010110000;  //sltiu
	 
	//b类
    12'b??????000100: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100001;   //beq
    12'b??????000111: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100011;   //bgtz
    12'b??????000110: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100100;  //blez
	 12'b??????000101: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100110;  //bne
	 //j类
    12'b??????000011: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b10010100000001000;   //jal
    12'b001000000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000001010;   //jr
    12'b??????000010: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000000111;   //j
    12'b001001000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01010100000001010;   //jalr
	 
	//存贮相关
	 12'b??????100011: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00101101000010000;   //lw
	 12'b??????100001: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00101101000010000;   //lh
	 12'b??????100101: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00101101000010000;   //lhu
	 12'b??????100000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00101101000010000;   //lb
	 12'b??????100100: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00101101000010000;   //lbu
	 
    12'b??????101011: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100011000010000;   //sw
	 12'b??????101000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100011000010000;   //sb
	 12'b??????101001: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00100011000010000;   //sh

   //乘除相关
	 12'b010000000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000010000;  //mfhi
	 12'b010010000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000100000010000;  //mflo
	 12'b011000000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //mult
	 12'b011001000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //multu
	 12'b011010000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //div
	 12'b011011000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //divu
	 12'b010001000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //mthi
	 12'b010011000000: {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b01000000000000000;  //mtlo
    default:
	 begin
	 if(opcode==6'b000001&&ir_d[20:16]==5'b00001)
	 {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100010;  //bgez
	 else if(opcode==6'b000001&&ir_d[20:16]==5'b00000)
	 {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000100101;  //bltz
	 else if(ir_d[31:21]==`mtc0)
	 {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000000000;
	 else  {regdst,alusrc,memtoreg,regwrite,memwrite,extop,aluop,branch}=17'b00000000000000000;
	 end
	 endcase
	end
	end
	assign REGwrite=(a==1)?1:regwrite;
endmodule