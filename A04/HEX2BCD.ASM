;Program to convert hexadecimal to bcd

assume cs:code, ds:data

data segment
	hex db 0FFh
	result_l db 00h
	result_h db 00h
data ends

code segment
		org 0100h
start:	MOV AX, data
		MOV DS, AX
		MOV AH, 00h
		MOV AL, hex
		MOV BL, 64h
		DIV BL
		MOV result_h, AL
		MOV AL, AH
		MOV AH, 00h
		MOV BL, 0Ah
		DIV BL
		MOV DL, AH
		MOV CL, 04h
		SHL AL, CL
		ADD AL, DL
		MOV result_l, AL
		MOV AH, 4ch
		INT 21h
code ends
end start


