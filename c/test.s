    .text
main:
    addi    sp,sp, -48
    sw  fp,44(sp)
    addi    fp, sp, 48
    li  a5,1        
    sw  a5,-36(fp)  # Guardar 'c' en -20(sp)
    li  a5,2        
    sw  a5,-40(fp)  # Guardar 'b' en -24(sp)
    li  a5,3
    sw  a5,-44(fp)  # GUardar 'a' en -28(sp)
    sw  zero,-20(fp)# Guardar 'accum' en -16(sp)
    sw  zero,-24(fp)# Guardar 'i' en -12(sp)
    j   .L2           # Cuerpo primer for

#Update accum
.L7:
    lw  a5,-20(fp)
    addi    a5,a5, 1
    sw  a5,-20(fp)
    lw  a4, -24(fp)
    addi    a4,a4, 1
    sw  a4, -24(fp)
    j   .L2

#Cargar K antes de la condicion
.L6:
    lw  a4,-36(fp)
    lw  a5,-20(fp)
    blt     a4,a5,.L7
    j   .L6

#Init k
.L5:
    sw  zero,-36(fp) #Guardar 'k' en -4(sp)
    j   .L4

#Cargar J antes de la condicion
.L4:
    lw  a4, -32(fp)
    lw  a5, -24(fp)
    blt     a4,a5,.L4

#Init J
.L3:
    sw  zero,-32(fp) #Guardar 'j' en -8(sp)
    j   .L5

#Cargar i antes de la condicion
.L2: 
    lw  a4,-24(fp)
    lw  a5,-44(fp)
    blt     a4,a5,.L3

# .bodyfor1: 
#     sw zero, -8(sp) #Guardar 'j' en -8(sp)
#     j .

# .L2:
#     lw a4, -12(sp)
#     lw a5, -28(sp)
#     bne a4, a5, .bodyfor1
    