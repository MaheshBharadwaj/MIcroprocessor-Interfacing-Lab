;Program to compare two strings and store index
assume cs:code,ds:data,es:extra

data segment
	str1 db 01h,06h,08h,07h
	count db 04h
	result db 00h
data ends

extra segment
	str2 db 01h,06h,08h,12h
extra ends

code segment
		org 0100h
start:	MOV AX, data
		MOV DS, AX
		MOV AX, extra
		MOV ES, AX
		MOV CH, 00h
		MOV CL, count
		INC CX
		CLD
		LEA SI, str1
		LEA DI, str2
		REPE CMPSB		
		MOV result, CL
		MOV ah,4ch 
		INT 21h 
code ends 
end start


