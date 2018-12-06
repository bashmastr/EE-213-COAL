
Include Irvine32.inc

.data
array DWORD 5,20

.code

main PROC

	mov  ecx,LENGTHOF array / 2
	mov  esi,OFFSET array

L1:	mov  eax,[esi]
	mov  ebx,[esi+4]
	call GCD
	call WriteDec
	call Crlf
	add  esi,TYPE array * 2
	loop L1

	exit
main ENDP


GCD PROC
	push ebx
	push edx

L1:	
	mov  edx,0
	div  ebx	
	cmp  edx,0	
	je   L2	
	mov  eax,ebx	
	mov  ebx,edx	
	jmp  L1

L2:	
mov eax,ebx	

	pop edx
	pop ebx
	ret
GCD ENDP

END main 