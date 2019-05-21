c1: DC "sum(1..n"
c2: DC "-1) Ente"
c3: DC "r n:"
c4: DC "sum(1..1"
c5: DC "9)="
c6: DC "n*(n-1"
c7: DC "))/2="
ld x5, c1(x0)
ecall x6,x5,3
ld x7, c2(x0)
ecall x8,x7,3
ld x9,c3(x0)
ecall x9,x9,5 // inp int into x9
addi x10,x9,-1 // dup minus 1
addi x12,x0,1
loop:
beq x10,x0,end
add x11,x11,x12
addi x12,x12,1
addi x10,x10,-1
jal x0,loop
end: 
ld x13,c4(x0)
ecall x14,x13,3
ld x15,c5(x0)
ecall x15,x15,3
ecall x11,x11,0

ld x16,c6(x0)
ecall x0,x0,3
ecall x16,x16,3
ld x17,c7(x0)
ecall x17,x17,3

addi x18,x9,-1
mul x19,x18,x9
addi x20,x0,2
div x19,x19,x20
ecall x19,x19,0










