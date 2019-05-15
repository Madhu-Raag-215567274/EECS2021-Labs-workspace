
ORG 8
a: DD 0xAAAABBBBCCCCDDDD
ORG 0
b: DD 0x4444333322221111
ORG 16        //can not get 16 address
C: DD 0

ld x5,a(x0)
ld x6,b(x0)
add x7,x6,x5
sub x7,x5,x6
sub x8,x6,x7
and x9,x5,x6
or x10,x5,x6
xor x11,x5,x6
xori x12,x5,-1
xori x13,x6,-1

sd x5,C(x0)

