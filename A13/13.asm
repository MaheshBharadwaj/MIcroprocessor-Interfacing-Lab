;Cube of a number
MOV R0, #00
MOV A, R1 	;input
MOV B, R1 	;input
MUL AB		;BA = A x B
MOV B, R1	;input
MUL AB		;BA = A x B
MOV R3,B
MOV R4,A
HERE: SJMP HERE