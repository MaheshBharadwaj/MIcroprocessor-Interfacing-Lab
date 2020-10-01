;Program to subtract two M x N matrices
assume cs:code, ds:data
data segment
    mat1 db 01h, 02h, 04h, 09h
    row1 db 02h
    col1 db 02h
    org 0010h
    mat2 db 01h, 04h, 02h, 08h
    row2 db 02h
    col2 db 02h
    org 0020h
    res_mat db 4 dup(?)
data ends
code segment
    org 0100h
start:  MOV AX, data
        MOV DS, AX
        
        MOV AL, row1
        MOV AH, row2
        CMP AL, AH
        jnz stop    ;Rows are unequal

        MOV AL, col1
        MOV AH, col2
        CMP AL, AH
        jnz stop    ;Columns are unequal

        MOV BL, row1
        MUL BL
        MOV CX, AX  ;Size of Matrix
        LEA SI, mat1
        LEA DI, mat2
        LEA BX, res_mat
here:   MOV AL, [SI]
        SUB AL, [DI]
        MOV [BX], AL
        INC BX
        INC SI
        INC DI
        LOOP here
stop:   MOV AH, 4ch
        INT 21h
code ends
end start
