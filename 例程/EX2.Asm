RESULT  EQU   30H
        ORG   0000H
        SJMP  START

BINTOBCD: MOV B, #100
        DIV   AB
	MOV   RESULT, A
        MOV   A, B   
        MOV   B,#10       
        DIV   AB
	MOV   RESULT+1, A        
	MOV   RESULT+2, B       
	RET   

START:  MOV   SP, #40H
        MOV   A, #123
        CALL  BINTOBCD

	SJMP  $
	END

	

