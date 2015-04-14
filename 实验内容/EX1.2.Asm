        ORG    0000H
		  SJMP   START
ASCIIAB: DB    '0123456789ABCDEF'      ;定义数字对应的ASCII表
 
START:  MOV    SP, #40H
        MOV    R0, #30H
		  MOV    R1, #40H
		  MOV    R5, #2
        MOV    30H, #1AH
        MOV    31H, #1AH
		  CALL   LOOP

LOOP:   MOV    DPTR, #ASCIIAB
        MOV    A, @R0
        INC    R0
        MOV    B, A
		  SWAP   A
	     ANL    A, #0FH
        MOVC   A, @A+DPTR
	MOV    @R1, A
	INC    R1
	MOV    A, B
	ANL    A, #0FH
	MOVC   A, @A+DPTR
	MOV    @R1, A
	INC    R1
	DJNZ   R5, LOOP

	SJMP   $
	END
