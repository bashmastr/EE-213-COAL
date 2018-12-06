

INCLUDE Irvine32.inc

.data
numbers DWORD 87654321h, 45346894h, 00193492h
buffer BYTE 9 DUP(0)	

.code
main PROC

	mov esi, OFFSET numbers
	mov ecx, LENGTHOF numbers	
L1:
	mov eax, [esi]	
	mov edx, OFFSET buffer	
	call PackedToAsc	
	call WriteString	
	call Crlf

	add esi, TYPE numbers	
	loop L1

	exit

main ENDP


PackedToAsc PROC


	pushad	

	mov ecx,8	
L1:
	mov ebx,eax	
	and ebx,0F0000000h	
	rol ebx,4	
	or  bl,30h	
	mov [edx],bl	

	inc edx	; next byte in buffer
	shl eax,4	
	loop L1	

	popad	
	ret

PackedToAsc ENDP

END main