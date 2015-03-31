        ORG    0000H
		  SJMP   START

LOOP1:  CLR    C
         MOV    A, 38H
  		  INC    R0
		  ADD    A, @R0
        MOV    38H, A
		  CLR    A
		  ADDC   A, #0H
		  ADD    A, 39H
		  MOV    39H, A
		  DJNZ   R5, LOOP1
		  RET

START:  MOV    R0, #30H
		  MOV    R5, #7
		  MOV    30H, #25H
		  MOV    31H, #36H
		  MOV    32H, #4AH
		  MOV    33H, #65H
		  MOV    34H, #7FH
		  MOV    35H, #82H
		  MOV    36H, #9BH
		  MOV    37H, #1DH
		  MOV    38H, 30H
		  CALL   LOOP1

		  SJMP   $
		  END
