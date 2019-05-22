c1: DC "Find all divisors."
c2: DC "Enter i:"
c3: DC "Divisors:"
c5: DM 100

c4:  DC ":"
s1: DC "Prime"
s2: DC "Not Prime"
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

loop:
 beq x8,x0,end
rem x10,x7,x9
beq x10,x0,print
addi x9,x9,1
addi x8,x8,-1
jal x0,loop

print:
sd x9,c5(x1)
addi x23,x23,1
addi x1,x1,8
addi x8,x8,-1
addi x9,x9,1
jal x0,loop

end: 
addi x29,x0,2
slt x24,x29,x23
beq x24,x0,prime

notprime:
addi x27,x0,s2
ecall x3,x27,4
jall x0, end2

prime:
addi x28,x0,s1
ecall x4,x28,4

end2: