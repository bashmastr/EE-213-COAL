include Irvine32.inc

.data 

	var Dword ?
	
.code
	factorial Proc
		pushAD
 		mov ecx, eax
 		dec ecx
 		start:
 			mul ecx	
 		loop start
 		
 		mov var,eax
 		POPAD
	ret
	factorial endp
	
	main proc
	
		call readint
		call factorial
		mov eax, var
 		call writeint
 	
 	main endp
 	end main
 	
 	exit