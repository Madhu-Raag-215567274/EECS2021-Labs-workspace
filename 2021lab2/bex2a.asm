
src: DD -1, 55, -3, 7, 0
loop: ld x4,src(x1)
      addi x1,x1,8
      beq x4,x0,end
      slt x6,x4,x5
      beq x6,x0,pos
      jal x0,loop

pos:
add x5,x0,x4
jal x0,loop

end:

