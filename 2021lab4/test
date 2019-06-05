s0: DC "INPUT\n\0"
s1: DC "INSERT\n\0"
s2: DC "REMOVE\n\0"
sm1: DM 2 ; input string
sm2: DM 2 ; sorted string
ld   x30,s0(x0)
addi x31,x0,sm1
ecall x31,x30,9 ;input a string
ld x30,s1(x0)
ecall x0,x30,3 ;print "insert\0"
addi a0,x0,sm2 ; destinatoin string argument

m1: lb a1,0(x31) ; character to insert argument 
addi x31,x31,1
beq a1,x0,m2 ;end of the string?
jal x1,ins
beq x0,x0,m1


m2: addi x5,x0,sm2
ecall x0,x5,4 ; print sm2
ld x30,s2(x0)
ecall x0,x30,3 ; print "Remove\0"
addi a0,x0,sm2 ; string argument 
jal x1,rem
addi x5,x0,sm2
ecall x0,x5,4 ;print sm2
ld x30,s3(x0)
ecall x0,x30,3 ;print "INVERSE\0"
addi a0,x0,sm2 ;string argument 
jal x1,inv
ebreak x0,x0,0

ins: lb x6,0(x31)
      addi x31,x31,1
      blt x29,x6,ins
          

    jalr x0,0(x1)
rem: 
   jalr x0,0(x1)
inv: 
 jalr x0,0(x1)
