;Program to search for byte in string
assume cs:code, ds:data, es:extra

data segment
	val db 0A2h
	result db 00h
data ends

extra segment
	seq db 09h,0A2h,0CDh, 23h
	count db 04h
extra ends

code segment
	org 0100h
start:	MOV AX, data
		MOV DS, AX
		MOV AX, extra
		MOV ES, AX
		MOV CH, 00h
		MOV CL, count
		INC CX
		CLD
		LEA DI, seq
		MOV AL, val
		REPNE SCASB
		MOV result, CL
		
		MOV ah, 4ch
		INT 21h
code ends
end start
