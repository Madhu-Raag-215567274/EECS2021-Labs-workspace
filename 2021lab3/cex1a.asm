c1: DC "n! Enter n:"
c2: DC "!="
addi x5,x0,c1
ecall x1,x5,4
ecall x6,x0,5  // reading inp stored in x6
add x31,x0,x6 // x31 dup

ecall x2,x6,0
ld x7,c2(x0)
ecall x8,x7,3

addi x9,x9,1
addi x10,x10,1
loop:
beq x31,x0,end
mul x11,x9,x10
add x9,x0,x11
addi x10,x10,1
addi x31,x31,-1
jal x0,loop

end:
ecall x2,x9,0


