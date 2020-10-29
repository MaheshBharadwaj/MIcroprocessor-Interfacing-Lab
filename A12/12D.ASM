;8051 ALP TO DIVIDE 2 8-BIT NUMBERS
MOV R0, #00
MOV A, R1	;Dividend
MOV B, R2	;Divisor
DIV AB		;AB = A/B, A: Quotient, B: Remainder
MOV R4, A	;Move quotient to R4 from A
MOV R5, B	;Move remainder to R5 from B
HALT: SJMP HALT