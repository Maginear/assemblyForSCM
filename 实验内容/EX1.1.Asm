       ORG    0000H
       MOV    R0, #16
       MOV    R1, #30H
       MOV    DPTR, #1030H
LOOP:  MOV    @R1, #01H
       INC    R1
       DJNZ   R0, LOOP       
       
       MOV    R0, #16
		 MOV    R1, #30H
LOOP1: MOV    A, @R1
       MOVX   @DPTR, A
       INC    R1
       INC    DPTR
       DJNZ   R0, LOOP1
       
       SJMP   $
       END


        
