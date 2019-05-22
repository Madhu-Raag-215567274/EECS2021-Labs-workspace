c1: DC  "Enter n:" 
c2: DF 1.0
fld f2,c2(x0)
addi x5,x0,c1
ecall x5,x5,4
ecall x5,x0,5 // inp x5
add x6,x0,x5   // dup
addi x7,x0,1
addi x8,x0,1


loop: 
beq x6,x0,end
mul x8,x8,x7
addi x7,x7,1
fcvt.d.l f1,x8
fdiv.d f3,f2,f1
fadd.d f4,f4,f3
addi x6,x6,-1
jal x0,loop




end:
fadd.d f5,f4,f2
ecall x0,f5,1

