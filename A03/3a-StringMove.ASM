;Program to move string from one location to another

assume cs:code,ds:data, es:extra

data segment
str1 db 02h, 12h, 56h, 23h, 22h
count dw 0005H
data ends

extra segment
	str2 db 5 dup(?)
extra ends

code segment
	org 0100h
start:	mov ax, data
		mov ds, ax
		mov ax, extra
		mov es, ax
		mov cx, count
		LEA SI, str1
		LEA DI, str2
		CLD
		rep movsb
		mov AH, 4ch
		int 21h
code ends
end start
	
