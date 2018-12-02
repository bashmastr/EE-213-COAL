include Irvine32.inc

.data 

var dword  10, 3, 4,5,6,7

temp Dword 0

x dword 2
	
count1 dword 2	
.code
	main proc
	
	mov ecx , lengthof var
	mov esi , 0
	
	L1:
		mov eax , var[esi]
		call writeint
		add esi, 4
		
		mov temp ,ecx
		
		mov ecx , eax
		dec ecx
		dec ecx
		L2:
			mov eax ,var [esi]
			mov edx , 0
			cdq
			div x
			inc x
			cmp edx , 0
			jNe s
			inc count1 
			jmp f
			call dumpregs
			
			
			s:
			loop L2
			f:
		mov ecx , temp
		loop L1
	
	call dumpregs
	mov eax , count1
	call writeint
	 
 	exit
 	main endp
 	end main
 	