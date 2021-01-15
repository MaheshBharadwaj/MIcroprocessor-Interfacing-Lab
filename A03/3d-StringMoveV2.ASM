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
		MOV SI, offset arr1 ;LEA SI, arr1
		MOV DI, offset arr2 ;LEA DI, arr2
		MOV CX, count
here:	MOV BL, [SI]
		MOV [DI], BL; MOV [DI], [SI]
		INC SI
		INC DI
		LOOP here; DEC CX JMP HERE
		MOV count, SI
		MOV ah, 4ch
		INT 21h
code ends
end start
		
