.section .rodata
ispis: .asciiz "%d ^4 = %d \n"

.section .text
.globl main
main:

addiu $sp,$sp,-32
sw $ra,28($sp)

addiu $t0,$0,15
sw $t0, 24($sp)
addiu $a0, $sp, 24
addiu $a1,$0,4



jal power

la $a0,ispis
lw $a1,24($sp)
addu $a2,$0,$v0

jal printf

addiu $v0,$0,0

lw $ra,28($sp)
addiu $sp,$sp, 32

jr $ra




