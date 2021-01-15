;Program to sub two M x N matrices
assume cs:code,ds:data
data segment
    mat1 db 01h, 02h, 04h, 0F9h
    row1 db 02h
    col1 db 02h
    org 0010h
    mat2 db 01h, 04h, 02h, 0A8h
    row2 db 02h
    col2 db 02h
    org 0020h
    res_mat dw 4 dup(?)
data ends
code segment
	org 0100h
start:  MOV ax,data
	MOV ds,ax
	MOV cl,row1
	MOV dl,row2
	CMP cl,dl
	JNE stop
	MOV cl,col1
	MOV dl,col2
	CMP cl,dl
	JNE stop
	MOV al,row2
	MUL cl	
	MOV cx,ax
	MOV si, offset mat1
	MOV di, offset mat2
	MOV bx, offset res_mat
here:	MOV ah,00h
	MOV al, [si]
	SUB al, [di]
	JNC skip
	INC ah;NEG AL
skip:	MOV [bx], ax
	INC si
	INC di
	INC bx
	INC bx
	loop here
stop:	MOV ah,4ch
	int 21h
code ends
end start
