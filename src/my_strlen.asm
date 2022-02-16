BITS 64
SECTION .text
GLOBAL my_strlen

my_strlen:
    MOV RAX, 0

loop:
    CMP BYTE [RDI + RAX], 0
    JE end
    INC RAX
    JMP loop

end:
    RET