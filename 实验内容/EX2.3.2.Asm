		ORG	0000H
     	SJMP	START

START:		MOV	R3, #03H
		CALL	PCTL
		SJMP	FINISH

PCTL:	MOV	DPTR, #TABL
		MOV	A, R3
		MOVC	A, @A+DPTR
		MOV	R3, A
		RET

TABL: DB 00H,01H,04H,09H      
	DB 10H,19H,24H,31H      
	DB 40H,51H,64H,79H      
	DB 90H,0A9H,0C4H,0E1H
	


FINISH:	SJMP	$
		END
