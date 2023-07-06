%include "asm_io.inc"

segment .text
    global  resta_mult
resta_mult:
    enter   0,0
    push    ebx
    push    ecx

    mov     ebx, [ebp+20]

    imul    ebx,[ebp+20]
    imul    ebx,[ebp+16]
    imul    ebx,[ebp+12]

    sub     eax,ebx
    pop     ebx
    pop     ecx
    leave
    ret