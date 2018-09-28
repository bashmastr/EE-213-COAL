INCLUDE Irvine32.inc; 
 
.data 

	 Msg1 BYTE "Hello world",0
	 var BYTE 20
	 var1 BYTE 30
	 var2 Dword 300

.code 

	 main PROC  
	 mov edx,OFFSET Msg1 
	 call WriteString
	 call crlf
	 mov eax,0
	 mov al,var1
	 add al, var
	 call Writedec
	
	 mov eax,0
	 mov eax, var2
	 call crlf
	 call WriteDec
 
 exit 
main ENDP 
END main 