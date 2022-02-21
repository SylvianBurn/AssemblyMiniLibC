BITS 64
SECTION .text
GLOBAL strchr

strchr:
    MOV RAX, 0
    MOV RCX, 0

loop:
    CMP BYTE[RDI + RCX], 0 ;if str[index] != '\0'
    JE end
    JMP loop2

loop2:
    CMP BYTE[RDI + RCX], RSI ;if str[index] == c
    JE setter
    INC RCX;
    JMP loop

setter:
    MOV RAX, RDI
    ADD RAX, RCX
    JMP end

end:
    RET