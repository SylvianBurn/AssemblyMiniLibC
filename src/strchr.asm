BITS 64
SECTION .text
GLOBAL strchr

sastrchr:
    MOV RAX, 0
    XOR RCX, RCX

loop:
    MOVSX EDX, BYTE[RDI + RCX]
    CMP EDX, 0
    JE end
    JMP loop2

loop2:
    CMP EDX, ESI
    JE setter
    INC RCX;
    JMP loop

setter:
    MOV RAX, RDI
    ADD RAX, RCX
    JMP end

end:
    RET