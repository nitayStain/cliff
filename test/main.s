	.file "main.txt"
	.text
	.section	.rodata


.section .text

printi:
 
	RET 


printf:
 
	RET 


prints:
 
	RET 


ADD:
	PUSH ebp 
	MOV ebp, esp
 
	MOV eax, DWORD PTR [ebp+4] 
	ADD eax, DWORD PTR [ebp+8] 
	POP ebp 
	RET 

_main:
 
	PUSH ebp 
	MOV ebp, esp
 
	MOV eax, 1 
	PUSH eax 
	MOV eax, 2 
	PUSH eax 
	CALL ADD 
	ADD eax, 1 
	IMUL eax, 5 
	MOV DWORD PTR [ebp-4], eax
 
	MOV eax, 5 
	MOV DWORD PTR [ebp-8], eax
 

	MOV eax, 0 
	POP ebp 
	RET 
