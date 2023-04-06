.section .rodata
ispis2: .asciiz "%d \n"

.section .text
.globl main
main:

addiu $sp,$sp, -64
sw $ra, 60($sp)

addiu $t0, $0, -5  # a=t0=5
addiu $t1, $0, 0 

sw $t1, 56($sp)
addiu $a0,$sp,56  #a0-&s
addu $a1,$0,$t0

jal myabs

la $a0,ispis2
move $a1, $t0

jal printf

lw $ra, 60($sp)
addiu $sp,$sp, 64

addiu $v0, $0,0
jr $ra



