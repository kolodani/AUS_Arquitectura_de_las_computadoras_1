            .data
v1:         .word    6, 7, 8, 9, 10, -1, 34, 23
v2:         .space   32

            .text
main:
        la     $t1, v1
        la     $t2, v2
        and    $t0, $t0, $0
        addi   $t3, $0, 8
for:
        beq    $t0, $t3, finfor
        lw     $t4, 0($t1)
        addi   $t5, $t4, 1
        sw     $t5, 0($t2)
        addi   $t0, $t0, 1
        addi   $t1, $t1, 4
        addi   $t2, $t2, 4
        j      for
finfor:
        li     $v0, 10
        syscall

# cuestion 2.24
