RESULT   EQU   30H
         ORG   0000H
	      SJMP  START

ASCIIAB: DB   '0123456789ABCDEF'

BCDTOHEX: MOV  DPTR, #ASCIIAB
         MOV   B, A
	      SWAP  A
	      ANL   A, #0FH
	      MOVC  A, @A+DPTR
	      MOV   RESULT, A
	      MOV   A, B
			ANL   A, #0FH
			MOVC  A, @A+DPTR
			MOV   RESULT+1, A
	 		RET

START:   MOV   SP, #40H
         MOV   A, #1AH
	 		CALL  BCDTOHEX
	 
			SJMP  $
	 		END
