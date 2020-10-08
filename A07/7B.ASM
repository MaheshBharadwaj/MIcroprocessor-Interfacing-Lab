;Program to sub two 8 bit BCD numbers
assume cs:code,ds:data
data segment
	opr1 db 12h
	opr2 db 98h
    org 0010h
	sign db 00h
    difference db 00h
data ends
code segment
	org 0100h
start:	mov ax,data
        mov ds,ax
        mov al,opr1
        mov bl,opr2
        sub al,bl
        mov cl, 00h
        DAS
        jnc stop
        mov bl, 99h
        sub bl, al
        inc bl
        DAS
        mov al, bl
        inc cl
stop:   mov difference, al
        mov sign, cl
        mov ah, 4ch
        int 21h
code ends
end start