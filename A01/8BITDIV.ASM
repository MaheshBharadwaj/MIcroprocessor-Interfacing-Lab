;8 bit division
assume cs:code,ds:data
data segment
	opr1 db 99h
	opr2 db 11h
	quotient db 00H
	remainder db 00H
data ends
code segment
	org 0100h
start: mov ax,data
	mov ds,ax
	mov AL,opr1
	mov AH,00h
	mov BL,opr2
	div BL
	mov quotient,AL
	mov remainder,AH
	mov ah,4ch
	int 21h
	code ends
end start
