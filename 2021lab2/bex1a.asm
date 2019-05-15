c: DD 1024
d:DD 2028
e: DD 4096
f: DD 8192
g: DD 0
ld x5,c(x0)
ld x6,d(x0)
ld x7,e(x0)
ld x8,f(x0)
add x9 ,x5,x6
add x10,x7,x8
add x11,x10,x9
srli x12,x11,2
sd x12,g(x0)


