include Irvine32.inc

.data 


var1 SDWORD 0EFFFFFFFh
var2 SDWORD 2h
var3 SDWORD 10h

	
.code
	main proc
	
	mov eax, var1
	mul var2
	;mul var3

	
	;mov eax , 0
	
	call dumpregs
	 
 	exit
 	main endp
 	end main
 	