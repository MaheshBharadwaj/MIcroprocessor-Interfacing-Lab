;Move String without movsb

assume cs:code,ds:data

data segment
	arr1 db 02h, 12h, 0A8h, 23h, 08h
	count dw 0005h
	arr2 db 5 dup(?)
data ends
code segment
		org 0100h
start:	MOV AX, data
		MOV DS, AX
		MOV SI, offset arr1
		MOV DI, offset arr2
		MOV CX, count
here:	MOV BL, [SI]
		MOV [DI], BL
		INC SI
		INC DI
		LOOP here
		MOV count, SI
		MOV ah, 4ch
		INT 21h
code ends
end start
		
