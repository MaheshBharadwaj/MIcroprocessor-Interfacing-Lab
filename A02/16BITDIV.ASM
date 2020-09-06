;Program to divide two 16 bit numbers

assume cs:code,ds:data
data segment
    opr1 dw 0040H
    opr2 dw 0020H
    quotient dw 0000H
    remainder dw 0000H
data ends
code segment
    org 0100h
start:  mov ax, data
        mov ds, ax
        mov dx, 0000H
        mov ax, opr1
        mov bx, opr2
        div bx
        mov quotient, ax
        mov remainder, dx
        mov ah, 4ch
        int 21h
    code ends
end start