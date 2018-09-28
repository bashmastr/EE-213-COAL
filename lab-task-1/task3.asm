INCLUDE Irvine32.inc; 
 
.data 

	 array1 DWORD 8,9,10
	 array2 DWORD 4,5,6
	 array3 DWORD 0,0,0

.code 

	 main PROC  
	 MOV eax , 0
	 MOV eax , array1+0
	 add eax, array2+0
	 MOV array3+0, eax
	 call writeInt
	 call crlf
	 
	 MOV eax , 0
	 MOV eax , array1+4
	 add eax, array2+4
	 MOV array3+4, eax
	 call writeInt
	 call crlf
	 
	 MOV eax , 0
	 MOV eax , array1+8
	 add eax, array2+8
	 MOV array3+8, eax
	 call writeInt
	 call crlf
	 

	 

 
 exit 
main ENDP 
END main 