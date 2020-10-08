;Program to add two 8 bit BCD numbers
assume cs:code ,ds:data
data segment
    opr1 db 32h
    opr2 db 86h
    org 0010h
    sum db 00h
    carry db 00h
data ends
code segment
	org 0100h
start:	mov ax,data
	    mov ds,ax
    	mov al,opr1
    	mov bl,opr2
    	add al,bl
    	daa
    	jnc skip
    	mov carry,01h
skip:	mov sum,al
    	mov ah,4ch
	    int 21h
code ends
end start