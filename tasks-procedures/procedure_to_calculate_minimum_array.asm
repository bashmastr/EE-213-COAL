Include Irvine32.inc

.data
	array Dword 0,0,0,0,0
	temp Dword ?
	var Dword ?
.code
	min proc 
	PUSHAD
	mov ecx, 5
	mov esi, 0
	
	jmp L2
	go:	
		mov ebx , [array+esi]
		mov temp, ebx
		inc var
		mov ecx , var

	
	L2:
		mov var, ecx
		mov ebx, temp
		cmp [array+esi] , ebx
		JB go
		add esi ,4
		loop L2
	POPAD
	ret
	min endp

main proc

	mov ecx , 5
	mov esi , 0
	L1:
		mov eax , 0
		call readint 
		mov [array+esi] , eax
		add esi, 4
		;call crlf
		;call writeint
		loop L1
		
	mov ebx , [array]
	mov temp , ebx

	call min

	mov eax , temp
	call writeint
exit
main endp
end main