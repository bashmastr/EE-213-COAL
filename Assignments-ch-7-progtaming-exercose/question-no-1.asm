Include Irvine32.inc

.data


; op1: D98709374FDECAA06453DC973294BFE2B457AFD8BC939321A2B2A40674981234h
; op2: 2974BC9397320002E6749332BFE253DCFBC974FDDC97B2A4A010870000234502h
; = 0000000102FBC5CAE710CAA34AC86FC9F27713BFB02124D6992B45C642C32B0674BB5736h



array1 QWORD 0A2B2A40674981234h,0B457AFD8BC939321h,06453DC973294BFE2h,0D98709374FDECAA0h
array2 QWORD 0A010870000234502h,0FBC974FDDC97B2A4h,0E6749332BFE253DCh,02974BC9397320002h

array3 DWORD 9 dup(0)




.code
main PROC

	mov  esi, OFFSET array1
	mov  edi, OFFSET array2
	mov  ebx, OFFSET array3
	mov  ecx, 8
	
	call Extended_Add


	mov esi, OFFSET array3	
	add esi, 32	
	mov ecx, LENGTHOF array3	

go:	mov eax, [esi]	
	call WriteHex	
	sub esi, 4
	loop go

	call Crlf
	exit

main ENDP


	Extended_Add PROC
	
		pushad
		clc	
	
	L1:	mov eax,[esi]	
		adc eax,[edi]	
		pushfd	
		mov [ebx],eax	
		add esi,4	
		add edi,4
		add ebx,4
		popfd	
		loop L1	
	
		adc word ptr [ebx],0	
		popad
		ret
	Extended_Add ENDP

END main