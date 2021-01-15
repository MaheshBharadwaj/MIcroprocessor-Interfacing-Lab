;Ascending Order
MOV R1,#05H ;Number of elements
loop_i:MOV R2,01
MOV R0,#010H
MOV A,#00H
loop_j: MOV A,@R0 ; arr[i]
INC R0			  ; i = i +1
MOV 03H,@R0		  ; [03h] = arr[i+1]
CJNE A,03H,IF1    ; cmp arr[i], arr[i+1]
SJMP IF2
IF1:JC IF2		  ; IF lesser do nothing
DEC R0			  ; Swap
MOV @R0,03H		  ; arr[i]
INC R0   		  ; with
MOV @R0,A		  ; arr[i+1]
IF2:DJNZ R2,loop_j
DJNZ R1,loop_i

HERE: SJMP HERE	  ;Terminate
