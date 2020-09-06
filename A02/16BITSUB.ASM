;Program to subtract two 16bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 0110h
	opr2 dw 0990h
	result dw 0000H
	sign db 00H      
data ends
code segment
    org 0100h
start:  mov ax, data
        mov ds, ax
        mov ax, opr1
        mov bx, opr2
        mov ch, 00h
        sub ax, bx
        jnc here
        inc ch
        neg ax
here:   mov result, ax
        mov sign, ch
        mov ah, 4ch
        int 21h
    code ends
end start