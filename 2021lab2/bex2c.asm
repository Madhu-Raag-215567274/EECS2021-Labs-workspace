a: DD 1, 5, -7, 23, -5
b: DD 3, -2, 4, 11, -7
c: DM 5


addi x31, x0, 5
SUM:
beq x31, x0, END
ld x5, a(x1)
ld x6, b(x1)
add x7, x5, x6
sd x7, c(x1) 
addi x1, x1, 8
addi x31, x31, -1
jal x0, SUM
END: