lui x7,0x12345
addi x8,x0,0x679
add  x9,x7,x8
lui x10,0x9ABCE
addi x11,x0,0xEF0
slli x12,x9,32
add x13,x10,x11
slli x14,x11,4
add x15,x12,x13
srli x6,x15,4
addi x16,x0,0xFF
addi x17,x0,-1
addi x18,x0,-1
slli x19,x17,36
srli x20,x17,36
add x21,x20,x19
and x22,x21,x6
slli x23,x16,28
add x24,x23,x22
srli x25,x24,8
addi x26,x0,0xE
slli x27,x26,60
add x28,x27,x25
addi x29,x0,0xF
slli x30,x29,56
add x5,x30,x28


