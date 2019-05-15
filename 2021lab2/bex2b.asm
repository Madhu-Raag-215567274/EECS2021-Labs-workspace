
src: DD 121, 33, -5, 242, -45, -12, 0
loop: 
      ld x4,src(x1)
	addi x1, x1, 8
      beq x4,x0,end1
      slt x6,x5,x4
      beq x6,x0,pos
       
      jal x0,loop

pos: 
add x5,x0,x4
jal x0,loop

end1: 

ld x4, src(x2)
addi x2, x2, 8
beq x4,x0,end
beq x4, x5, swap
jal x0, end1

swap:
addi x2, x2, -8
ld x3, src(x0) 
sd x3, src(x2)
sd x5,src(x0)
addi x2, x2, 8
jal x0, end1

end:

