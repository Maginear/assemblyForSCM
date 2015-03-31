       ORG    0000H
       START  EQU     8000H
MAIN:  MOV    DPTR,   #START      ;起始地址
       MOV    R0, #0              ;设置256字节计数值
       MOV    A, #1H
LOOP:  MOVX   @DPTR, A
       INC    DPTR                ;指向下一个地址
       DJNZ   R0, LOOP            ;计数值减1
       NOP    
       SJMP   $
       END
