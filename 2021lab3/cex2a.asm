c1: DF 1.21, 5.85, -7.3, 23.1, -5.55
c2: DF 3.14, -2.1, 44.2, 11.0, -7.77
addi x5,x0,5

loop: 
beq x5,x0,end
fld f1,c1(x1)
fld f2,c2(x2)
fmul.d f3,f1,f2
fadd.d f4,f4,f3
addi x1,x1,8
addi x2,x2,8
addi x5,x5,-1
jal x0,loop

end:
ecall x0,f4,1
fsd f4,m(x9)
m: DM 1
