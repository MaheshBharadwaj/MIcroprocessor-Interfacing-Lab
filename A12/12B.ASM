;8051 ALP TO SUBTRACT 2 8-BIT NUMBERS
MOV R0, #00     
MOV A, R1    
CLR C	; Clear carry flag
SUBB A, R2    
JNC LABEL
INC R0    
CPL A	;1's complement the difference
INC A	;2's complement the difference
LABEL: MOV R4, A
MOV 03, R0;Move borrow to R3. (MOV R3, R0) is invalid
HALT: SJMP HALT
