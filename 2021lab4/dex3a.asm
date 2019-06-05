c1: DC "Enter"
c2: DC " Int1:"
c3: DC  " Int2:"

addi x5,x0,c1
ecall x5,x5,4
addi x6,x0,c2
ecall x9,x6,4
ecall a1,x0,5 // int1 a1(x)
addi x10,x0,c3
ecall x5,x5,4
ecall x10,x10,4
ecall a2,x0,5 // int2 a2 (y)
addi x9,x0,1

beq a2,x0,here1



addi sp, x0, 0
jal x1,fact

here:
ecall a1,a1,0


ebreak x0,x0,1

fact: blt x0,a1,recu
      addi a2,x0,1 
      jalr x0,0(x1)
recu: sd x1,-8(sp)
      sd a1,-16(sp)
      sd a2,-24(sp)
      addi sp,sp,-24
     add x5,x0,a2
     rem a2,a1,a2
     add a1,x0,x5 
     beq a2,x0,here    
jal x1,fact
      

here1:
ecall a2,a2,0
ebreak x0,x0,1

