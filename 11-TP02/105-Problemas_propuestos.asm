            .data
vector:     .word   1, 0, 1, 1, 1, 1, 0, 0, 1, 0
n:          .word   10
total:      .space  4

            .text
main:
        addi  $t0, $0, 0           # i = 0
        lw    $t1, vector($t0)     # t1 = vector[i]
        lw    $t2, n               # t2 = n
        addi  $t3, $0, 0           # contador = 0
for:
        beq   $t2, $0, endfor
        bne   $t1, $0, nosumar
        addi  $t3, $t3, 1
nosumar:
        addi  $t0, $t0, 4
        lw    $t1, vector($t0)
        addi  $t2, $t2, -1
        j     for
endfor:
        sw    $t3, total
        li    $v0, 10
        syscall