INCLUDE Irvine32.inc; 
 
.data 

	 w DWORD 15
	 x DWORD 25
	 y DWORD 35
	 z DWORD 45
	 product DWORD  ?
	 sum DWORD ?
	 value1 DWORD ?
	 value DWORD ?
.code 

	main PROC 
	MOV eax,0
	MOV eax , w
	MUL x
	MuL y
	MUL z
	
	MOV product,eax
	Call writeInt
	Call crlf
	
	MOV eax , 0
	MOV eax,w
	ADD eax,x
	ADD eax,y
	ADD eax,z
	MOV sum , eax
	call writeInt
	call crlf
	
	MOV eax,0
	MOV eax,product
	ADD eax ,sum
	
	call writeInt
	call crlf
	
 	MOV eax ,0
 	MOV eax ,x
 	SUB eax, y
 	SUB eax, z
 	SUB eax, w
 	call writeInt
 	call crlf
 	
 	MOV eax , x
 	ADD eax, y
 	MUL z
 	SUB eax, x
 	call writeInt
 	call crlf
 	
 	
 	
 	
 exit 
main ENDP 
END main 