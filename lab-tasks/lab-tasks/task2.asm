include Irvine32.inc

.data 

	
var1 dword ?
var2 dword ?
var3 dword ?
var4 dword ?
var5 dword ?

max dword ?


	
.code
	Maximum proc   ; find maximum
		
	cmp var2 ,eax
	JB next1
	mov eax, var2
	
next1:
	cmp var3 ,eax
	JB next2
	mov eax,var3
next2:
	cmp var4 ,eax
	JB next3
	mov eax, var4
next3: 
	cmp var5 ,eax
	JB next1
	mov eax, var5

	mov max ,eax
	ret
	Maximum endp
 	
	
	
	main proc

	call readint
	mov var1 , eax
	
	call readint
	mov var2 , eax
	
	call readint
	mov var3 , eax
	
	call readint
	mov var4 , eax

	call readint
	mov var5 , eax
	
	mov eax , var1
	mov max , eax
	
	
	
	;call Maximum
 	call writeint
 	exit
 	main endp
 	end main
 	