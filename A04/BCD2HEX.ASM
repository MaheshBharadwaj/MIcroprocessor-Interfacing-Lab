;Program to convert BCD to hexadecimal

assume cs:code, ds:data

data segment
	bcd db 12h
	result db 00h
data ends

code segment
		org 0100h
start:	MOV AX, data
		MOV DS, AX
		MOV BL, bcd
		AND BL, 0Fh
		MOV AL, bcd
		AND AL, 0F0h
		MOV CL, 04h
		SHR AL, CL
		MOV DL, 0Ah
		MUL DL
		ADD AL, BL
		MOV result, AL
		MOV AH, 4ch
		INT 21h
code ends
end start

