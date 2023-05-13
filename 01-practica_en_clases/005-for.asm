.data

.text
main:
    add  $t0, $zero, $zero       # i = 0
    addi $t1, $zero, 20
    add  $t2, $zero, $zero       # total = 0

for:
    beq $t0, $t1, end
    addi $t0, $t0, 1
    add $t2, $t2, $t0
    j for

end:
    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall
