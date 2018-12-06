Include Irvine32.inc

.data

	var DWORD  5
	x Dword 2

	str1 Byte "PRIEME",0
	str2 Byte "not PRIEME",0

.code


prime proc
	mov eax, var
	cmp eax ,3
	JBE go
	mov ecx , var 
	sub ecx, 3
	call dumpregs
	L1:	mov eax, var
		mov edx , 0

		;call dumpregs
		
		CDQ
		
		div  x
		cmp dx, 0
		JE l 
		inc x
		loop L1
	jmp go
	l:
	mov edx , offset str2
	call writestring
	jmp e
	go:
		mov edx , OFFSET str1
		call writestring
	e:
	
	ret 
	prime endp
	exit
	
main proc

call prime
main ENDP

END main 