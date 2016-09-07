`define rs 25:21
`define rt 20:16
`define rd 15:11
`define funt 5:0
`define op 31:26
`define div   6'b011010
`define divu  6'b011011
`define mult  6'b011000
`define multu 6'b011001
`define mfhi  6'b010000
`define mflo  6'b010010
`define mthi  6'b010001
`define mtlo  6'b010011
`define zero  6'b000000
`define lb 6'b100000
`define lbu 6'b100100
`define lh  6'b100001
`define lhu 6'b100101
`define sw 6'b101011
`define sh 6'b101001
`define sb 6'b101000
`define addi 6'b001000
`define addiu 6'b001001
`define andi 6'b001100
`define xori 6'b001110
`define slti 6'b001010
`define sltiu 6'b001011
`define jalr 6'b001001
`define bgez 6'b000001
`define bgtz 6'b000111
`define blez 6'b000110
`define bltz 6'b000001
`define bne 6'b000101
`define sll 6'b000000
`define srl 6'b000010
`define sra 6'b000011
`define jalr 6'b001001
`define mtc0 11'b01000000100
`define mfc0 11'b01000000000
module hazard(ir_f,ir_d,ir_e,ir_m,ir_w,bypasspc_d,bypassa_d,bypassb_d,bypassa_e,bypassb_e,bypassb_m,pcen,if_iden,if_idclr,id_exclr,branch,jr,clk,pcsel,busy,start,cp0foard);
      input[31:0] ir_f,ir_d,ir_e,ir_m,ir_w;
		input[3:0] branch;
		input jr,clk,busy,start;
		input[1:0] pcsel;
		output[1:0] bypasspc_d,bypassa_d,bypassb_d,bypassa_e,bypassb_e;
		output bypassb_m,cp0foard;                                           //控制转发jr
		reg[1:0] bypasspc_d,bypassa_d,bypassb_d,bypassa_e,bypassb_e;
		reg bypassb_m,cp0foard;
		output pcen,if_iden,if_idclr,id_exclr;
		wire jr_f,a3_d,jr_d,btype_d,rtype_e,alu_rtype,alu_itype,mem_e,store_m,store_e,memtoreg_e;    //定义发生冒险的指令类型及位置（B类，r型计算，I型计算，存贮型）
		wire[4:0] a3_m,a3_w,a3_e;
		wire memtoreg_m,aluouttoreg_m,aluouttoreg_w,memtoreg_w,aluouttoreg_e,aluouttoreg_d;
		wire rtype_d,alu_rtype_d,alu_itype_d,store_d,memtoreg_d;
		assign jr_d=(ir_d[`op]==6'b000000&&(ir_d[`funt]==6'b001000||ir_d[`funt]==`jalr));//jr jalr
		assign jr_f=(ir_f[`op]==6'b000000&&(ir_f[`funt]==6'b001000||ir_f[`funt]==`jalr));//jr jalr
		assign btype_d=(ir_d[`op]==6'b000100||ir_d[`op]==`bgez||ir_d[`op]==`bgtz||ir_d[`op]==`blez||ir_d[`op]==`bltz||ir_d[`op]==`bne);  //beq
		assign rtype_e=(ir_e[`op]==6'b000000);  //  运算型R类-E
		assign rtype_d=(ir_d[`op]==6'b000000);  //  运算型R类-d
		//assign alu_rtype=(rtype_e&&(ir_e[`funt]==6'b100001||ir_e[`funt]==6'b100011||ir_e[`funt]==6'b100101||ir_e[`funt]==6'b100110)); //是addu subu or xor
		assign alu_rtype=(rtype_e&&ir_e!=0);
		assign alu_itype=((ir_e[`op]==6'b001101)||(ir_e[`op]==6'b001111)||(ir_e[`op]==6'b001111)||ir_e[`op]==`addi||ir_e[`op]==`addiu||ir_e[`op]==`sltiu||ir_e[`op]==`andi||ir_e[`op]==`xori||ir_e[`op]==`slti);    //lui ori addiu slti andi sltiu  addiu addi xori
		assign alu_rtype_d=(rtype_d); //是addu or subu xor
		assign alu_itype_d=((ir_d[`op]==6'b001101)||(ir_d[`op]==6'b001111)||(ir_d[`op]==6'b001001)||ir_d[`op]==`addi||ir_d[`op]==`addiu||ir_d[`op]==`sltiu||ir_d[`op]==`andi||ir_d[`op]==`xori||ir_d[`op]==`slti);    //lui ori addiu
		
		assign store_m=(ir_m[`op]==6'b101011||ir_m[`op]==`sb||ir_m[`op]==`sh);   //sw类;
      assign store_e=(ir_e[`op]==6'b101011||ir_e[`op]==`sb||ir_e[`op]==`sh);
		assign store_d=(ir_d[`op]==6'b101011||ir_d[`op]==`sb||ir_d[`op]==`sh);
		
		assign a3_d=(ir_d[`op]==6'b000000)?ir_d[`rd]:ir_d[`rt];   //r型rd   eles rt
		assign a3_e=(ir_e[`op]==6'b000000)?ir_e[`rd]:ir_e[`rt];   //r型rd   eles rt
      assign a3_m=(ir_m[`op]==6'b000000)?ir_m[`rd]:ir_m[`rt];   //r型rd   eles rt
      assign a3_w=(ir_w[`op]==6'b000000)?ir_w[`rd]:ir_w[`rt];   //r型rd   eles rt  
		
      assign memtoreg_m=(ir_m[`op]==6'b100011||ir_m[`op]==`lb||ir_m[`op]==`lbu||ir_m[`op]==`lh||ir_m[`op]==`lhu)?1:0;
		assign memtoreg_d=(ir_d[`op]==6'b100011||ir_d[`op]==`lb||ir_d[`op]==`lbu||ir_d[`op]==`lh||ir_d[`op]==`lhu)?1:0;
		assign memtoreg_w=(ir_w[`op]==6'b100011||ir_w[`op]==`lb||ir_w[`op]==`lbu||ir_w[`op]==`lh||ir_w[`op]==`lhu)?1:0; 
      assign memtoreg_e=(ir_e[`op]==6'b100011||ir_e[`op]==`lb||ir_e[`op]==`lbu||ir_e[`op]==`lh||ir_e[`op]==`lhu)?1:0;		// load类
		
      assign aluouttoreg_m=((ir_m[`op]==6'b000000)||(ir_m[`op]==6'b001101)||(ir_m[`op]==6'b001111)||(ir_m[`op]==6'b001001)||ir_m[`op]==`addi||ir_m[`op]==`addiu||ir_m[`op]==`sltiu||ir_m[`op]==`andi||ir_m[`op]==`xori||ir_m[`op]==`slti||((ir_m[`funt])==`mfhi&&ir_m[`op]==`zero)||((ir_m[`funt])==`mflo&&ir_m[`op]==`zero))?1:0;	//ori,lui,addiu,r_type(jr)
		assign aluouttoreg_w=((ir_w[`op]==6'b000000)||(ir_w[`op]==6'b001101)||(ir_w[`op]==6'b001111)||(ir_w[`op]==6'b001001)||ir_w[`op]==`addi||ir_w[`op]==`addiu||ir_w[`op]==`sltiu||ir_w[`op]==`andi||ir_w[`op]==`xori||ir_w[`op]==`slti||((ir_w[`funt])==`mfhi&&ir_w[`op]==`zero)||((ir_w[`funt])==`mflo&&ir_w[`op]==`zero))?1:0;	
	   assign aluouttoreg_e=((ir_e[`op]==6'b000000)||(ir_e[`op]==6'b001101)||(ir_e[`op]==6'b001111)||(ir_e[`op]==6'b001001)||ir_e[`op]==`addi||ir_e[`op]==`addiu||ir_e[`op]==`sltiu||ir_e[`op]==`andi||ir_e[`op]==`xori||ir_e[`op]==`slti||((ir_e[`funt])==`mfhi&&ir_e[`op]==`zero)||((ir_e[`funt])==`mflo&&ir_e[`op]==`zero))?1:0;
      assign aluouttoreg_d=((ir_d[`op]==6'b000000)||(ir_d[`op]==6'b001101)||(ir_d[`op]==6'b001111)||(ir_d[`op]==6'b001001)||ir_d[`op]==`addi||ir_d[`op]==`addiu||ir_d[`op]==`sltiu||ir_d[`op]==`andi||ir_d[`op]==`xori||ir_d[`op]==`slti||((ir_d[`funt])==`mfhi&&ir_d[`op]==`zero)||((ir_d[`funt])==`mflo&&ir_d[`op]==`zero))?1:0;		
    	reg nop,pcen,if_iden,if_idclr,id_exclr;
      wire jump,jal_m,jal_w;
		assign jal_m=(ir_m[`op]==6'b000011||ir_m[`op]==`jalr)?1:0;
		assign jal_w=(ir_w[`op]==6'b000011||ir_w[`op]==`jalr)?1:0;
		assign jump=((ir_f[`op]==6'b000100)||(ir_f[`op]==6'b000011)||(ir_f[`op]==6'b000010)||((ir_f[`funt]==6'b001000)&&(ir_f[`op]==6'b000000)))?1:0;
		wire start_d;
		assign start_d=(ir_d[`funt]==`div||ir_d[`funt]==`divu||ir_d[`funt]==`mult||ir_d[`funt]==`multu)?1:0;
		wire issa_e,issa_m,issa_w,issa_d;
		assign issa_e=(ir_e[31:21]==0&&(ir_e[`funt]==`sll||ir_e[`funt]==`srl||ir_e[`funt]==`sra))?0:1;
		assign issa_m=(ir_m[31:21]==0&&(ir_m[`funt]==`sll||ir_m[`funt]==`srl||ir_m[`funt]==`sra))?0:1;
		assign issa_w=(ir_w[31:21]==0&&(ir_w[`funt]==`sll||ir_w[`funt]==`srl||ir_w[`funt]==`sra))?0:1;
		assign issa_d=(ir_d[31:21]==0&&(ir_d[`funt]==`sll||ir_d[`funt]==`srl||ir_d[`funt]==`sra))?0:1;
		wire mtc0;
		assign mtc0=(ir_m[31:21]==`mtc0)?1:0;
		integer a,b;
  //------------------------------------------------------------------------------------------------------------------------------------------------------
       
	                                                                        
	                                                                //pcen,if_iden,if_idclr,id_exclreeere
	                                                                      //nop=1,create nop
	     
	always@(*)                                                                           //jr转发
	begin                                                                  //pcen,if_iden,if_idclr,id_exclreeere
	  if(jr_d&&(ir_d[`rs]==a3_e)&&aluouttoreg_e==1&&ir_d[`rs]!=0)        //计算--jr--e 
      nop<=1;
	  else if(jr_d&&(ir_d[`rs]==a3_e)&&memtoreg_e==1&&ir_d[`rs]!=0)        //lw--jr--e
      nop<=1;
	  else if(jr_d&&(ir_d[`rs]==a3_m)&&memtoreg_m==1&&ir_d[`rs]!=0)        //lw--jr--m
      nop<=1;
	  else if(btype_d&&(ir_d[`rs]==a3_e)&&aluouttoreg_e==1&&ir_e!=0&&ir_d[`rs]!=0)    //  计算--b(rs)--e                     
	   nop<=1;
	  else if(btype_d&&(ir_d[`rs]==a3_e)&&memtoreg_e&&ir_e!=0&&ir_d[`rs]!=0)    //  lw(rt)--b(rs)--e                    
	   nop<=1;   
     else if(btype_d&&(ir_d[`rs]==a3_m)&&memtoreg_m&&ir_m!=0&&ir_d[`rs]!=0)    //  lw(rt)--b(rs)--m                    
	   nop<=1;    	
     else if(btype_d&&(ir_d[`rt]==a3_e)&&aluouttoreg_e==1&&ir_e!=0&&ir_d[`rt]!=0)    //  计算--b(rt)--e                     
	   nop<=1;
	  else if(btype_d&&(ir_d[`rt]==a3_e)&&memtoreg_e&&ir_e!=0&&ir_d[`rt]!=0)    //  lw(rt)--b(rt)--e                    
	   nop<=1;   
     else if(btype_d&&(ir_d[`rt]==a3_m)&&memtoreg_m&&ir_m!=0&&ir_d[`rt]!=0)    //  lw(rt)--b(rt)--m                    
	   nop<=1; 
	  else if(alu_rtype_d&&(memtoreg_e==1)&&(ir_d[`rs]==a3_e)&&ir_e!=0&&ir_d[`rs]!=0)     //lw_r计算（rs）e求m   在d级判断
      nop<=1;	  
     else if(alu_itype_d&&(memtoreg_e==1)&&(ir_d[`rs]==a3_e)&&ir_e!=0&&ir_d[`rs]!=0)      //lw_i计算（rs）e求m   在D级判断                  
      nop<=1;  
     else if(!issa_d&&(memtoreg_e==1)&&(ir_d[`rt]==a3_e)&&ir_e!=0&&ir_d[`rt]!=0)      //lw_issa（rt）e求m   在D级判断                  
      nop<=1;		
	  else if(memtoreg_d&&(memtoreg_e==1)&&(ir_d[`rs]==ir_e[`rt])&&ir_e!=0&&ir_d[`rs]!=0) //lw_lw(rs)_e______m   在D级判断
	     nop<=1;
	  else if(memtoreg_e&&(store_d==1)&&(ir_d[`rs]==ir_e[`rt])&&ir_e!=0&&ir_d[`rs]!=0) //lw_sw(rs)e_____m   在D级判断
	     nop<=1;  
	  else if(store_d&&memtoreg_e&&(ir_d[`rt]==a3_e)&&ir_d[`rt]!=0)//lw_sw(rt)_m  在D级判断
        nop<=1;
	  else if((start||busy)&&(((ir_d[`funt]==`mfhi||ir_d[`funt]==`mflo)&&ir_d[`op]==`zero)||start_d))      //(mf||md)_md[e]
        nop<=1;		  
     else nop<=0;                                                                        		  //itype_lw_m
					                                                                      //lw_sw
	 pcen<=!nop;  
    if_iden<=!nop;
	 id_exclr<=nop;                                                             //插入nop
	  
	  begin
	  if((pcsel!=0)&&jump)
	  if_idclr<=1;
	  else 
	  if_idclr<=0;
	  end
	  
	  
	  
	 
	
	begin 
                                                                             //jrforad  
																									  
	if(jr_d&&(ir_d[`rs]==a3_m)&&aluouttoreg_m==1&&ir_d[`rs]!=0)         // 计算--jr_d【rs】_m
	  bypasspc_d<=1;
	else if(jr_d&&(ir_d[`rs]==a3_w)&&aluouttoreg_w==1&&ir_d[`rs]!=0)     //计算--jr_d[rs]_w
	 bypasspc_d<=2;
	else if(jr_d&&jal_m)        //jal--jr--m
      bypasspc_d<=1;
   else if(jr_d&&memtoreg_w&&ir_d[`rs]==a3_w&&ir_d[`rs]!=0)                   //lw_jr_d[rs]_w
   	bypasspc_d<=2;
	else
	   bypasspc_d<=0;
	end
	                                                                   
    
    begin                                                                                   	 //com_a
	 if(btype_d&&(ir_d[`rs]==a3_m)&&aluouttoreg_m==1&&ir_d[`rs]!=0)  //  计算--b(rs)--m                     
	 bypassa_d<=1;
	 else if(btype_d&&(ir_d[`rs]==a3_w)&&aluouttoreg_w==1&&ir_d[`rs]!=0)//计算--b(rs)--w
	 bypassa_d<=2;
	 else if(btype_d&&(ir_d[`rs]==a3_w)&&memtoreg_w==1&&ir_d[`rs]!=0)//lw---b(rs)---w
	 bypassa_d<=2;
	// else if(btype_d&&(ir_d[`rs]==31)&&jal_m)//jal_b(rs)---m
	 //bypassa_d<=1;
	// else if(btype_d&&(ir_d[`rs]==31)&&jal_w)//jal_b(rs)---w
	// bypassa_d<=2;
	 else
	 bypassa_d<=0;
	 end
	
	
	                                                                                                       //com_b
	 begin
	 if(btype_d&&(ir_d[`rt]==a3_m)&&aluouttoreg_m==1&&ir_d[`rt]!=0)  //  计算--b(rt)--m                     
	 bypassb_d<=1;
	 else if(btype_d&&(ir_d[`rt]==a3_w)&&aluouttoreg_w==1&&ir_d[`rt]!=0)//计算--b(rt)--w
	 bypassb_d<=2;
	 else if(btype_d&&(ir_d[`rt]==a3_w)&&memtoreg_w==1&&ir_d[`rt]!=0)//lw---b(rt)---w
	 bypassb_d<=2;
	 else if(btype_d&&(ir_d[`rt]==31)&&jal_m&&ir_d[`rt]!=0)//jal_b(rt)---m
	 bypassa_d<=1;
	 else if(btype_d&&(ir_d[`rt]==31)&&jal_w&&ir_d[`rt]!=0)//jal_b(rt)---w
	 bypassa_d<=2;
	 else
	 bypassb_d<=0;
	 end
	 
	                                                                                                    //alu_a
	 begin
		if(alu_rtype&&(ir_e[`rs]==a3_m)&&aluouttoreg_m==1&&ir_e[`rs]!=0)   // 计算_r型计算（e需求）（rs）--m级冲突
		   bypassa_e<=1;
		else if((alu_rtype&&(ir_e[`rs]==a3_w)&&aluouttoreg_w==1)&&ir_e[`rs]!=0)    // 计算_r型计算（e需求）（rs）--w级冲突   
		   bypassa_e<=2;
		else if(alu_itype&&(ir_e[`rs]==a3_m&&a3_m!=0)&&aluouttoreg_m==1&&ir_e[`rs]!=0)   // 计算_i型计算（e需求）（rs）--m级冲突
		   bypassa_e<=1;
		else if((alu_itype&&(ir_e[`rs]==a3_w&&a3_w!=0)&&aluouttoreg_w==1)&&ir_e[`rs]!=0)//计算--i型计算--w
		   bypassa_e<=2;
		else if(memtoreg_e&&(ir_e[`rs]==a3_m)&&aluouttoreg_m==1&&ir_e[`rs]!=0)   // 计算_lw（e需求）（rs）--m级冲突
		   bypassa_e<=1;
		else if((memtoreg_e&&(ir_e[`rs]==a3_w)&&aluouttoreg_w==1)&&ir_e[`rs]!=0)  // 计算_lw（e需求）（rs）--w级冲突
		   bypassa_e<=2;	
		else if((store_e&&(ir_e[`rs]==a3_m)&&aluouttoreg_m==1)&&(issa_m&&ir_e[`rs]!=0&&ir_m[`funt]!=`mfhi&&ir_m[`funt]!=`mflo))   // 计算_sw（e需求）（rs）--m级冲突
		   bypassa_e<=1;
		else if((store_e&&(ir_e[`rs]==a3_w)&&aluouttoreg_w==1)&&(issa_w&&ir_e[`rs]!=0&&ir_w[`funt]!=`mfhi&&ir_w[`funt]!=`mflo))   // 计算_sw（e需求）（rs）--w级冲突
		   bypassa_e<=2;
      else if(ir_e[`rs]!=0&&alu_rtype&&(ir_e[`rs]==a3_w)&&memtoreg_w)//lw_r计算(rs)	w级		
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&alu_itype&&(ir_e[`rs]==a3_w)&&memtoreg_w)//lw_i计算(rs)	w级		
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&memtoreg_e&&(ir_e[`rs]==a3_w)&&memtoreg_w)//lw_lw(rs)	w级		
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&store_e&&(ir_e[`rs]==a3_w)&&memtoreg_w)//lw_sw(rs)	w级		
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&jal_m&&alu_itype&&(ir_e[`rs]==31))//jal_i计算_m
		   bypassa_e<=1;
		else if(ir_e[`rs]!=0&&jal_w&&alu_itype&&(ir_e[`rs]==31))//jal_i计算_w
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&jal_m&&alu_rtype&&(ir_e[`rs]==31))//jal_r计算_m
		   bypassa_e<=1;
		else if(ir_e[`rs]!=0&&jal_w&&alu_rtype&&(ir_e[`rs]==31))//jal_r计算_w
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&jal_w&&(ir_e[`rs]==31)&&memtoreg_e)//jal_lw(rs)	w级		
		   bypassa_e<=2;
		else if(ir_e[`rs]!=0&&jal_w&&(ir_e[`rs]==31)&&store_e)//jal_sw(rs)	w级		
		   bypassa_e<=2;
		else
		   bypassa_e<=0;
	 end
	                  
                                                     							//alu_b
      begin
		if(ir_e[`rt]!=0&&alu_rtype&&(ir_e[`rt]==a3_m)&&aluouttoreg_m==1)   //计算_r型计算（e需求）（rt）--m级冲突             
		    bypassb_e<=1;
	   else if(ir_e[`rt]!=0&&alu_rtype&&(ir_e[`rt]==a3_w)&&aluouttoreg_w==1) //计算_r型计算（e需求）（rt）--w级冲突
		    bypassb_e<=2;
		else if(ir_e[`rt]!=0&&alu_rtype&&(ir_e[`rt]==a3_w)&&memtoreg_w==1)   //lw_r计算(rt)--w
		  bypassb_e<=2;
	   else if(store_e&&(ir_e[`rt]==a3_m)&&aluouttoreg_m)//计算_sw_e(rt)__m
         bypassb_e<=1;	
		else if((store_e&&(ir_e[`rt]==a3_w)&&aluouttoreg_w==1)) //计算_sw_e(rt)__w
		  bypassb_e<=2; 
      else if(ir_e[`rt]!=0&&alu_rtype&&(ir_e[`rt]==31)&&jal_w==1) //jal_r型计算（e需求）（rt）--w级冲突
		    bypassb_e<=2;	
		else if(ir_e[`rt]!=0&&store_e&&memtoreg_w&&(ir_e[`rt]==a3_w))//lw_sw(rt)_w
          bypassb_e<=2;	
      else if(ir_e[`rt]!=0&&store_e&&(ir_e[`rt]==31)&&jal_w==1) //jal_SW（e需求）（rt）--w级冲突
		    bypassb_e<=2;		
      else if(ir_e[`rt]!=0&&!issa_e&&(memtoreg_w==1)&&(ir_d[`rt]==a3_e)&&ir_e!=0)      //lw_issa（rt） w   在D级判断                  
          bypassb_e<=2;		
	   else
		   bypassb_e<=0;
      end
		
		begin
		if(store_m&&(ir_m[`rt]==a3_w)&&aluouttoreg_w)   //计算——sw
		   bypassb_m<=1;
		else if(ir_w[31:21]==`mfc0&&store_m&&ir_m[`rt]==ir_w[`rt])
         bypassb_m<=1;
		else 
		   bypassb_m<=0;
		end
		
		begin
		if(mtc0&&aluouttoreg_w&&(ir_m[`rt]==a3_w)&&ir_m[`rd]!=0)   //计算——mt
		 cp0foard<=1;
		else if(ir_m[31:21]==`mtc0&&(ir_m[`rt]==ir_w[`rt])&&ir_w[31:21]==`mfc0)  //mf_mt
		 cp0foard<=1;
		
      else
		 cp0foard<=0;
		end
		a=ir_m[`rd];
		b=a3_w;
		end		
//---------------------------------------------------------------------------------  todo处理优先级
     
	  
	  
endmodule
