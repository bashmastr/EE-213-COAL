INCLUDE Irvine32.inc; 
 
.data 

	 name1 BYTE "Bashir",0
	 fname1 BYTE "HAFIZ BASHIR AHMAD",0
	 email1 BYTE "p176079@nu.edu.pk",0
	 phone1 BYTE "0302-4168500",0
	 age1 BYTE "20",0
	 sports1 BYTE "CRICKET",0
	 

.code 

	main PROC  
	mov edx,OFFSET name1
	call writeString
	call crlf
	
	MOV edx, OFFSET fname1
	call writeString
	call crlf
	
	mov edx,OFFSET email1
	call writeString
	call crlf
	
	mov edx,OFFSET phone1
	call writeString
	call crlf
	
	mov edx,OFFSET age1
	call writeString
	call crlf
	
	mov edx,OFFSET sports1
	call writeString
	call crlf
 exit 
main ENDP 
END main 