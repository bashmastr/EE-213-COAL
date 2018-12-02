include Irvine32.inc

.data 


var1 WORD 56566
var2 word 10

x Word 2

temp Dword  ?

num1 dword  1

even1 dword 0
odd1 dword 1
	
.code
	main proc
	mov eax , 0
	mov edx ,0
	mov ax, var1
	cwd
	
l1:	
	mov edx , 0
	div var2
	cmp eax , 0
	je next
	inc num1
	
	mov temp, eax
	
	mov eax , 0

	
	mov eax, edx
	cwd
	div x
	cmp edx , 0 
	jNe el
	inc even1
	jmp s
	
	el : 
		inc odd1
	
	s:
	
	mov eax , temp
	call dumpregs
	jmp l1

next:	
	mov eax , num1
	call writeint
	call crlf
	mov eax , even1
	call writeint
	
	call crlf
	mov eax , odd1
	call writeint
	 
 	exit
 	main endp
 	end main
 	