# Test File for 42 Instruction, include:
# 1. Subset 1:
# ADD/ADDU/SUB/SUBU/SLL/SRL/SRA/SLLV/SRLV/SRAV/AND/OR/XOR/NOR/  
# SLT/SLTU														14				
# 2. Subset 2:
# ADDI/ADDIU/ANDI/ORI/XORI/LUI/SLTI/SLTIU						8
# 3. Subset 3:
# LB/LBU/LH/LHU/LW/SB/SH/SW 									8
# 4. Subset 4:
# BEQ/BNE/BGEZ/BGTZ/BLEZ/BLTZ									6
# 5. Subset 5:
# J/JAL/JR/JALR													4
# 6. Subset 6:
# MULT/MUTLU/DIV/DIVU/MFLO/MFHI/MTLO/MTHI						8
# 																50
##################################################################
### Make sure following Settings :
# Settings -> Memory Configuration -> Compact, Data at address 0
# Settings -> Delayed branching

### initial the sp & var
xor $gp, $0, $0
ori $k0, $0, 0x01
ori $k1, $0, 0x04
ori $sp, $0, 0x20
sw $sp, 0($0)
move $s6, $0
move $s7, $0

#### No.1 Instr-sequence
addi $a0, $0, 0x0f0f
addiu $a1, $a0, 0x0080  	# I.E_RS -- Cal.M
xori $a2, $a0, 0x8111  		# I.E_RS -- Cal.W
ori $a3, $a0, 0x0040  		

## after every hazard, save the result for checking
sw $a1, 0($sp)
addu $sp, $sp, $k1		
sh $a2, 2($sp)				# Store.M_Rt -- Cal.W
addu $sp, $k1, $sp			# R.E_Rt -- Cal.W
sb $a3, 3($sp)
move $t1, $k1
addu $sp, $t1, $sp			# R.E_Rt -- Cal.M

#### No.2 Instr-sequence
lh  $t0, 0x26($0)
sra $t1, $t0, 4		# I.E_RS -- Load.M & I.E_RS -- Load.W

sb $t1, 3($sp)
addu $sp, $sp, $k1

#### No.3 Instr-sequence
jal f1						# I.E_RS -- Jal.W
addu $s7, $s7, $k0

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.4 Instr-sequence
addu $t1, $t1, $t0
subu $t2, $t1, $t0			# R.E_RS -- Cal.M
srlv $t3, $t1, $t0			# R.E_RS -- Cal.W

sh $t2, 0($sp)
sb $t3, 5($sp)
addu $sp, $sp, $k1
add $sp, $sp, $k1

#### No.5 Instr-sequence
ori $t1, $0, 0x4
sw 	$a0, 0($t1)				# Store.E_RS -- Cal.M
sw  $a1, 4($t1)				# Store.E_RS -- Cal.W

#### No.6 Instr-sequence
ori $t2, $0, 0x8
lb $t1, 0($t2)				# Load.E_RS -- Cal.M
lh $t3, -4($t2)				# Load.E_RS -- Cal.W

sw $t1, 0($sp)
addu $sp, $sp, $k1
sw $t3, 0($sp)
addu $sp, $sp, $k1

#### No.7 Instr-sequence
lw $t0, -12($sp)
bgez $t0, _lbl_1 			# Br.D_RS -- Load.E & Br.D_RS -- Load.M & Br.D_RS -- Load.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.8 Instr-sequence
_lbl_1:
lw $t0, -4($sp)
bne $t0, $t3, _lbl_2 		# Br.D_RT -- Load.E & Br.D_RT -- Load.M & Br.D_RT -- Load.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.9 Instr-sequence
_lbl_2:
addu $t0, $a1, $0
addu $t1, $a0, $0
bne  $t1, $t0, _lbl_3 		# Br.D_RS -- Cal.E && Br.D_RS -- Cal.M && Br.D_RT -- Cal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.10 Instr-sequence
_lbl_3:
addi $t0, $a2, -10
sllv $t1, $a0, $t0
bltz $t1, _lbl_5 		# Br.D_RT -- Cal.E && Br.D_RT -- Cal.M && Br.D_RS -- Cal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.11 Instr-sequence
_lbl_5:
lw $t0, -8($sp)
srlv $t1, $t0, $t0			# R.E_RS -- Load.M & R.E_RS -- Load.W & R.E_RT -- Load.M & R.E_RT -- Load.W

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.12 Instr-sequence
lw $t0, 0($0)
lw $t1, 0($t0)				# Load.E_RS -- Load.M & Load.E_RS -- Load.W

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.13 Instr-sequence
sw $sp, 0($0)				# prepare for next hazard
addu $sp, $sp, $k1
lw $t0, 0($0)
sw $t0, 0($t0)				# Store.E_RS -- Load.M & Store.E_RS -- Load.W & STORE.M_RT -- Load.W

#### No.14 Instr-sequence
jal f2
addu $s7, $s7, $k0

#### No.15 Instr-sequence
move $t1, $ra
addiu $t0, $0, 24
addu $t1, $t1, $t0
move $t9, $0    
jal f3
addu $s7, $s7, $k0

#### No.16 Instr-sequence
ori $t0, $0, 212
addu $t1, $ra, $t0
jal f4
addu $s7, $s7, $k0

#### No.17 Instr-sequence
addi $t0, $0, 80
addu $t1, $ra, $t0
jal f5
addu $s7, $s7, $k0

#### No.18 Instr-sequence
jal f6
addu $s7, $s7, $k0

#### No.19 Instr-sequence
jal f7
addu $s7, $s7, $k0

#### No.20 Instr-sequence
jal f8
addu $s7, $s7, $k0

#### No.21 Instr-sequence
jal f10
addu $s7, $s7, $k0

#### No.22 Instr-sequence
la $t0, f11 
jalr $t0				# JALR.D_RS -- Cal.E & JALR.D_RS -- Cal.M
addu $s7, $s7, $k0

#### No.23 Instr-sequence
sw $t0, 0($sp)
addu $sp, $sp, $k1
lw $t1, -4($sp)
jalr $t1				# JALR.D_RS -- Load.E
addu $s7, $s7, $k0

#### No.24 Instr-sequence
lw $t0, -4($sp)
lw $t1, -8($sp)
mult $t0, $t1
mflo $t2
divu $t1, $t0
mfhi $t3
sw $t2, 0($sp)
addu $sp, $sp, $k1
sw $t3, 0($sp)
addu $sp, $sp, $k1


### store delay slot counter ###
sw $s7, 0($sp)
addu $sp, $sp, $k1
sw $s6, 0($sp)
addu $sp, $sp, $k1

_loop:
j _loop
nop
nop   

### Function List ###
f1:
andi $t1, $31, 0x56			# I.E_RS -- Jal.W
jr $31
addu $s7, $s7, $k0
move $t9, $0    

f2:
lhu $t1, -0x3102($ra)		# Load.E_Rs -- Jal.W
sw $t1, 0($sp)
addu $sp, $sp, $k1
jr $31
addu $s7, $s7, $k0
move $t9, $0    

f3:
move $t9, $0    
beq $t1, $ra, _f3_lbl		# Br.D_RS -- Jal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f3_lbl:
jr $ra
addu $s7, $s7, $k0
move $t9, $0    

f4:
beq $t1, $ra, _f4_lbl		# Br.D_RS -- Jal.M
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f4_lbl:
jr $ra
addu $s7, $s7, $k0
move $t9, $0    


f5:
beq $ra, $t1, _f5_lbl		# Br.D_RT -- Jal.M
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f5_lbl:
jr $ra
addu $s7, $s7, $k0



f6:
addu $t0, $ra, $ra			# R.E_RS -- Jal.W & R.E_RT -- Jal.W
sw $t0, 0($sp)
addu $sp, $sp, $k1		
jr $ra
addu $s7, $s7, $k0



f7:
sw $sp, -0x3160($ra)		# Store.E_Rs -- Jal.W
jr $ra
addu $s7, $s7, $k0


f8:
sw $ra, 0($sp)	
addu $sp, $sp, $k1
subu $ra, $ra, $k1
jal f9
addu $s7, $s7, $k0
lw $ra, -8($sp)				# jr.D_Rs -- Load.E & jr.D_Rs -- Load.M & jr.D_Rs -- Load.W
jr $ra						# jr.D_RS -- Jal.M
addu $s7, $s7, $k0

f9:
sw $ra, 0($sp)
addu $sp, $sp, $k1
ori $t0, $0, 8
addu $ra, $ra, $t0
move $t9, $0    
move $t9, $0    
subu $ra, $ra, $t0			# jr.D_Rs -- Cal.E & jr.D_Rs -- Cal.M
jr $ra
addu $s7, $s7, $k0

f10:
ori $t0, $0, 0x3000
subu $ra, $ra, $t0
sw $ra, 0($sp)
addu $sp, $sp, $k1
ori $ra, $ra, 0x3000
jr $ra						# jr.D_RS -- Jal.M
addu $s7, $s7, $k0


f11:
sw $ra, 0($sp)
addu $sp, $sp, $k1
jr $ra
addu $s7, $s7, $k0


