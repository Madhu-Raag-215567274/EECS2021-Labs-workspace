DM 100
c1: DC "No of Int"
c2: DC ":"
c3: DC "ts:"
c4: DC "Int"
ld x4,c1(x0)
ld x5,c3(x0)
ld x6,c2(x0)
ecall x4,x4,3
ecall x5,x5,5   // entered no of integer is stored in x5
//////////////////
add x7,x0,x5
add x31,x0,x5
add x29,x0,x5
 
loop: 
beq x7,x0,end1
addi x8,x8,1
ld x9,c4(x0)
ecall x9,x9,3
ecall x10,x8,0
ecall x11,x6,5
sd x11,0(x1)
addi x1,x1,8
addi x7,x7,-1
jal x0,loop



end1:
beq x31,x0,imm
ld x12,0(x2)
ecall x1,x12,0
addi x2,x2,8
addi x31,x31,-1

jal x0,end1

imm: ecall x0,x0,3
end2:
beq x29,x0,end0
ld x13,-8(x2)
ecall x14,x13,0
addi x29,x29,-1
addi x2,x2,-8
jal x0,end2


end0:



