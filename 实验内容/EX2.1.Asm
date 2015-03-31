        ORG     0000H
        SJMP    START

LOOP:   MOV     B, @R1
		  MOV     A, @R0
   	  SUBB    A, B
		  MOV		 @R0, A
		  INC		 R0
		  INC		 R1
		  DJNZ	R5, LOOP
	     RET

START:  MOV    R0, #30H
        MOV    R1, #40H
		  MOV	   R5, #4
     	  MOV		33H, #58H 
        MOV	   32H, #0A2H
	     MOV		31H, #34H
	     MOV		30H, #7EH
	     MOV		43H, #07H
        MOV	 	42H, #68H
        MOV		41H, #85H
		  MOV		40H, #3BH
        CALL    LOOP

	     SJMP	$
	     END


