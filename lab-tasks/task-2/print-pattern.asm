include Irvine32.inc

.data 
	
	star Dword  "*",0
	temp Dword  ?
.code
	main proc
	
	mov ecx , 7   ; print 7 line pattern
	mov ebx , 0
	mov edx , offset star
	outer:
		mov temp , ecx	
		inc ebx
		mov ecx , ebx
		iner:
			call writestring
		loop iner
		call crlf
		mov ecx , temp
	loop outer
	
	main endp 
	end main 
	exit