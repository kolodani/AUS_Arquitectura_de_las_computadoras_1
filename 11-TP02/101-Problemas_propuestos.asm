            .data
vectorV:    .byte       0, 1, 1, 1, 0
res:        .space      3

            .text
main:
        # res[0] = vectorV[0] && vectorV[4]
        addi   $t0, $0, 0
        lb     $t1, vectorV($t0)
        addi   $t0, $t0, 4
        lb     $t2, vectorV($t0)
        and    $t3, $t1, $t2
        and    $t0, $t0, $0
        sb     $t3, res($t0)
        # res[0] = 0

        # res[1] = vectorV[1] || vectorV[3]
        and    $t0, $t0, $0
        addi   $t0, $0, 1
        lb     $t1, vectorV($t0)
        addi   $t0, $t0, 2
        lb     $t2, vectorV($t0)
        or     $t3, $t1, $t2
        ori    $t0, $0, 1
        sb     $t3, res($t0)
        # res[1] = 1

        # res[2] = (vectorV[0] || vectorV[1]) && vectorV[2]
        and    $t0, $t0, $0
        addi   $t0, $0, 0
        lb     $t1, vectorV($t0)
        addi   $t0, $t0, 1
        lb     $t2, vectorV($t0)
        or     $t4, $t1, $t2
        addi   $t0, $0, 2
        lb     $t3, vectorV($t0)
        and    $t3, $t4, $t3
        addi   $t0, $0, 2
        sb     $t3, res($t0)
        # res[2] = 1