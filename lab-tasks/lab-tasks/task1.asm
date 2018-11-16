include Irvine32.inc

.data 

	a Dword 16
	b Dword 32
	c1 Dword 64
	d Dword 48
	e Dword ?
	eq1 Dword ?
	ls Dword ?
	count Dword ?
	gr Dword ?
	
	
	
.code
	main proc
	
	mov eax , 0
	mov eax , a
	add eax , b
	mov e , eax
	
	;call writeint
	
	
	cmp eax , d             ; eax = e
	JNE next
	cmp eax , 0
	JBE next
	
		mov ebx, 1
		mov eq1 , ebx
		jmp nextif

next:	
	cmp eax , d
	JBE next2
	cmp eax , 0
	JE next2
		mov ebx , 0
		mov eq1 , 0
		jmp nextif

next2:
	cmp eax, d
	JA go
	cmp eax , 10
	jA go
	JMP next3
		go:
			mov ebx , 1
			mov gr, ebx
			jmp nextif

next3:
	mov ebx , 0
	mov gr , ebx
	JMP nextif
	

	
			
nextif:
	cmp eax , d
	JAE else_go
		mov ebx , 1
		mov ls , ebx
		JMP last
else_go:
	mov ebx , 0
	mov ls , 0
	JMP last
	


	

last:
L1:	cmp eax , d
	JNE last
	mov ebx ,count
	inc ebx 
	mov count ,ebx
	call dumpregs
	JMP L1
 	
 	main endp
 	end main
 	
 	exit