Include Irvine32.inc

.data

str1 BYTE "fast nuces has changed policy for midterm exams 2018",0

vowel dword 0

.code

main proc
	mov eax , 0
	mov edx , offset str1
	mov ecx, lengthof str1
	mov esi , offset str1
	dec ecx
l1:
	mov al , Byte ptr [esi]
	cmp al, 32
	Je next
	cmp al, 57
	JB next
	
		AND byte ptr [esi] , 11011111b
		mov al , Byte ptr [esi]
		;cmp al , 65
		JE go
		jmp next
		go:
			inc eax
	next:
		inc esi
		loop L1

 
	call writeint
	call crlf
;mov edx , offset str1
call writestring

exit
main endp
end main

