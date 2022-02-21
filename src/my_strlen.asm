BITS 64
SECTION .text
GLOBAL strlen

strlen:
    MOV RAX, 0

loop:
    CMP BYTE[RDI + RAX], 0
    JE end
    INC RAX
    JMP loop

end:
    RET