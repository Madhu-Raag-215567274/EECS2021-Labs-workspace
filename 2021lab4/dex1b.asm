c1: DC "Enter"
c2: DC " "
c3: DC "String"
c4: DC ":"
addi x6,x0,c1
addi x7,x0,c2
addi x8,x0,c3
addi x9,x0,c4
ecall x1,x6,4
ecall x1,x7,4
ecall x1,x8,4
ecall x1,x9,4
ecall x5,x0,8 // input x5

STACK: EQU 0x100000
lui sp, STACK>>12


loop: 
sd x5, 0(sp)
addi sp, sp, -8


