c1: DC "Enter"
c2: DC " "
c3: DC "Int"
c4: DC ":"
addi x8,x0,c4
addi x5,x0,c1
addi x6,x0,c2
addi x7,x0,c3
ecall x1,x5,4
ecall x1,x6,4
ecall x5,x7,4
ecall x8,x8,4
ecall x5,x0,5 //inp x5
addi x9,x0,2
addi x10,x0,1

STACK: EQU 0x100000
lui sp, STACK>>12


loop:
beq x5,x0,end
 
rem x11,x5,x9
bne x11,x0,one
beq x0,x0,zero


one:
sd x10, 0(sp)
addi sp, sp, -8
DIV x5,x5,x9
addi x14,x14,1

7jal x0,loop



zero:
sd x11,0(sp)
addi sp, sp, -8
div x5,x5,x9
addi x14,x14,1

jal x0,loop

end:
beq x14,x0,realend
addi sp, sp, 8
ld x13, 0(sp)
ecall x1,x13,0
addi x14,x14,-1
jal x0, end

realend:




