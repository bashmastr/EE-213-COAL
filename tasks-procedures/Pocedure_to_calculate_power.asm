include irvine32.inc

.data

base Dword  ?
exp Dword ?
power Dword ?

.code

	; calculate power of the function
	power1 Proc         
		PushAD         ;save orignal values of register on stack(push)
		mov eax , 0
		mov eax , base
		mov ecx , exp
		dec ecx
		start :
			mul base			
		loop start
		
		mov power , eax    ;sava the power calculate into power variable
		
		PopAD          ;after operation, save the orignal value of register on it
	ret
	power1 endp
	
	main proc
	
		mov eax , 0
		call readint     ;input user base
		mov  base , eax
		call readint 
		mov exp , eax    ; input user exponent
	
		call power1   ;procedure call
		
		mov eax,power  ; save power into var
		call writeint		; print on consol
	
	main endp
	end main
	exit