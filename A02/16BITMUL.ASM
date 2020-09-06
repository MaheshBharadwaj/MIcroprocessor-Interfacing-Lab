;Program to multiply two 16 bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 0130h
	opr2 dw 0030h
	result_h dw 0000H
    result_l dw 0000H   
data ends  
code segment
    org 0100h
start:  mov ax, data
        mov ds, ax
        mov ax, opr1
        mov bx, opr2
        mul bx
        mov result_h, dx
        mov result_l, ax
        mov ah, 4ch
        int 21h
        code ends
end start
