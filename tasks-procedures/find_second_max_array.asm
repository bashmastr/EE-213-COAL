Include Irvine32.inc

.data
	array Dword 0,0,0,0,0
	temp Dword ?
	var Dword ?
	
	sec_max Dword ?
.code
	find_sec_max proc 
	PUSHAD
	mov ecx, 5
	mov esi, 0
	
	jmp L2
	go:	
		mov ebx , temp
		mov sec_max , ebx
		mov ebx , [array+esi]
		mov temp, ebx
		inc var
		mov ecx , var

	
	L2:
		mov var, ecx
		mov ebx, temp
		cmp [array+esi] , ebx
		JA go
		add esi ,4
		loop L2
	POPAD
	ret
	find_sec_max endp

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

	call find_sec_max

	mov eax , sec_max
	call writeint
	
exit
main endp
end main