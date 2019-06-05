c1: DC "Stg:"
c2: DC "Yes"
c3: DC "No"
ld x5,x0,c1
ecall x5,x5,3
ecall x6,x0,9 // input x6

STACK: EQU 0x100000
lui sp, STACK>>12
addi x8,x0,1
loop:
lb x8,0(x6)
beq x8,x0,end
sb x8,0(sp)
addi x6,x6,1
addi sp,sp,-8
jal x0,loop
end:
addi x2,x0,2
div x11,x6,x2

loop2:

lb a3,0(sp)
lb a4,1(sp)
lb a5,-1(sp)
lb a6,-2(sp)

add x19,a3,a4
add x20,a5,a6

bne x19,x20, no
beq x0,x0,yes

no: 
addi x15,x0,c3
ecall x15,x15,4
jall x0,rnd

yes:
addi x16,x0,c2
ecall x16,x16,4

rnd:



ebreak x0,x0,0













