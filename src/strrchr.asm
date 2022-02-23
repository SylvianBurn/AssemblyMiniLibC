BITS 64
SECTION .text
GLOBAL strrchr

strrchr:
    MOV RAX, 0
    XOR RCX, RCX

loop:
    MOVSX EDX, BYTE[RDI + RCX]
    CMP EDX, 0
    JE end
    CMP EDX, ESI
    JE setter
    INC RCX;
    JMP loop

setter:
    MOV RAX, RDI
    ADD RAX, RCX
    INC RCX
    JMP loop

setnull:
    MOV RAX, RDI
    ADD RAX, RCX
    RET

end:
    CMP ESI, 0
    JE setnull
    RET