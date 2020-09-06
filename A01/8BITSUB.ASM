;Program for 8 bit subtraction

assume cs:code, ds:data
data segment
	opr1 db 99h
	opr2 db 11h
	result db 00H
	sign db 00H
data ends
code segment
		org 0100h
start:  mov ax,data
		mov ds,ax
		mov ah,opr1
		mov bh,opr2
		mov ch,00h
		sub ah,bh
		jnc here
		inc ch
		neg ah
here:	mov result,ah
 		mov sign,ch
		mov ah,4ch
		int 21h
	code ends
end start	