Include Irvine32.inc 

.data 
	var1 TBYTE 0AABBBBCCCCDDDDEEFFFFh
	var2 TBYTE 0AABBBBCCCCDDDDEEFFFFh
	var3 TBYTE ?
.code
	main proc
		xor eax,eax
		xor ebx, ebx
		xor ecx, ecx
		movzx eax , word ptr var1
		movzx ebx , word ptr var2
		add eax , ebx
		mov dword ptr var3 , eax
		
		
		xor ecx , ecx
		xor ebx, ebx
		movzx ecx , word ptr var1 + 2
		movzx ebx , word ptr  var2 +2
		;call dumpregs
		add ecx , ebx
		;call dumpregs
		add ecx ,  dword ptr var3 + 2
		

		mov dword ptr var3 + 2 , ecx
		
		
		xor eax,eax
		xor ecx,ecx
		movzx eax , word ptr var1 + 4
		movzx ecx , word ptr var2 + 4
		add eax ,ecx
		add eax , dword ptr var3 + 4 
		mov dword ptr var3 + 4, eax
		

		xor eax,eax
		xor ecx,ecx
		movzx eax , word ptr var1 + 6
		movzx ecx , word ptr var2 + 6
		add eax ,ecx
		add eax , dword ptr var3 + 6 
		mov dword ptr var3 + 6, eax	
		
		xor eax,eax
		xor ecx,ecx
		movzx eax , word ptr var1 + 8
		movzx ecx , word ptr var2 + 8
		add eax ,ecx
		add eax , dword ptr var3 + 8 
		mov dword ptr var3 + 8, eax
		
		;/////////print on consol//////////////
		
		xor eax,eax
		mov eax , dword ptr var3 +10
		call writehex
		
		;/////////print carry value 1 starting/////////

		xor eax,eax
		mov eax , dword ptr var3 +6
		call writehex
 
		;/////////print first 4 byte//////
		xor eax,eax
		mov eax , dword ptr var3 +2
		call writehex	

		;//////print next 4 byte , form 4 to 8////////

		xor eax,eax
		mov eax , dword ptr var3 
		call writehex	

		;////// print next 2 byte, from 2 ////////   
		
		call crlf
	
	

	exit
	main endp
	END main
