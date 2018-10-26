include irvine32.inc

.data

base Dword  ?
exp Dword ?
power Dword ?
.code
	main proc
	mov eax , 0
	call readint
	mov  base , eax
	call readint 
	mov exp , eax
	mov eax , 0
	
	mov eax , base
	mov ecx , exp
	dec ecx
	start :
		mul base	
		
	loop start
	mov power , eax
	call writeint
	
	main endp
	end main
	exit