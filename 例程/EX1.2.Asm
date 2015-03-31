       ORG    0000H
       START  EQU    3000H   
       MOV    DPTR,  #START         ;设置块的目标地址
       MOV    R5,#0                 ;设置移动长度
       MOV    A,#01H

LOOP:  MOVX   @DPTR,A   
       INC    DPTR
       DJNZ   R5,LOOP               ;将A里边的数值加到@DPTR直到计数完成
       
       MOV    R0, #30H
       MOV    R1, #00H
       MOV    R2, #40H
       MOV    R3, #00H
       MOV    R7, #0

LOOP1: MOV    DPH, R0
       MOV    DPL, R1
       MOVX   A, @DPTR
       MOV    DPH, R2
       MOV    DPL, R3
       MOVX    @DPTR, A
       INC    R1
       INC    R3
       DJNZ   R7, LOOP1
       SJMP   $
       END

