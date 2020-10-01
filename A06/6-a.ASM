;Sort in ascending order
assume cs:code, ds:data
data segment
    arr db 04h, 08h, 02h, 0Ah, 01h, 03h
    org 0010h
    size_arr dw 0005h
data ends
code segment
    org 0100h
start:  MOV AX, data
        MOV DS, AX
        LEA BX, arr
        MOV SI, 0000H                   ; i = 0
outer:  CMP SI, size_arr                ; CMP i and n - 1
        JNL stop                        ; if i not < n-1, exit loop
        MOV DI,0000h                    ; j = 0
        MOV CX, size_arr                ; load 'n-1' to CX
        SUB CX, SI                      ; CX is now n - i - 1 since SI is i
inner:  CMP DI, CX                      ; CMP j and n - i - 1
        JNL next                        ; if j not < n - i - 1 exit inner loop
        MOV AL, [BX + DI]               ; arr[j] into AL
        MOV AH, [BX + DI + 0001h]       ; arr[j+1] into AH
        cmp AL, AH                      ; CMP AL, AH
        JB skip                         ; if AL < AH , do nothing
        XCHG AH, AL                     ; SWAP AL, AH if AL > AH
        MOV [BX + DI], AL               ; Save 
        MOV [BX + DI + 0001h], AH       ; Updated values
skip:   INC DI                          ; j = j + 1
        jmp inner                       ; Next iteration of j loop
next:   INC SI                          ; i = i + 1
        jmp outer                       ; Next iteration of i loop
stop:   MOV AH, 4ch
        INT 21h
code ends
end start