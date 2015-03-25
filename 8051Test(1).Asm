   

      org    0000H
      LJMP   MAIN
MAIN: 
      MOV    R0,#22H
      MOV    @R0,#57H
		MOV    20H,#2EH
      MOV    A,#2EH
      XCHD   A,@R0
      ORL    22H,#30H
      SWAP   A
      ORL    A,#30H
      MOV    21H,A
      SJMP   $
      END		 

