c1: DC "Find all divisors."
c2: DC "Enter i:"
c3: DC "Divisors:"
c4:  DC ":"
ld x20,c4(x0)
ld x19,c3(x0)
addi x3,x0,c1
ecall x4,x3,4
ld x5,c2(x0)
ecall x0,x0,3
ecall x5,x5,3
ecall x7,x7,5 // inp x7
add x8,x0,x7  // dup x8
addi x9,x0,1
ecall x21,x19,3
ecall x0,x20,3
loop:
 beq x8,x0,end
rem x10,x7,x9
beq x10,x0,print
addi x9,x9,1
addi x8,x8,-1
jal x0,loop

print:

ecall x0,x9,0
addi x8,x8,-1
addi x9,x9,1
jal x0,loop

end: 

