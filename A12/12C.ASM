;8051 ALP TO MULTIPLY 2 8-BIT NUMBERS
MOV R0, #00 
MOV A, R1       ;Multiplicand
MOV B, R2       ;Multiplier
MUL AB          ;BA = A * B
MOV R5, A       ;Move lower byte to R5 from A
MOV R4, B       ;Move higher byte to R4 from B
HALT: SJMP HALT
