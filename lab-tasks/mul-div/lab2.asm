include Irvine32.inc

.data 


var1 SDWORD 500000
var2 sdword 5

	
.code
	main proc
	
	mov eax, var1
	
	cdq
	idiv var2
		
	;mov eax , 0
	
	call dumpregs
	 
 	exit
 	main endp
 	end main
 	