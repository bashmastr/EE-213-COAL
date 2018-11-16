Include Irvine32.inc

.data
	msg byte "Enter your marks",0h
	temp byte "A+",0
	temp1 byte "A",0
	temp2 byte "A-",0
	temp3 byte "B+",0
	temp4 byte "B",0
	temp5 byte "B-",0
	temp6 byte "C+",0
	temp7 byte "C",0
	temp8 byte "C-",0
	temp9 byte "D+",0
	temp10 byte "D",0
.code

CGPA proc
	cmp eax, 90
	jb L1
	mov edx, offset temp
	JMP Next
	
	L1:
		cmp eax,86
		JB L2
		mov edx,offset temp1
		JMP Next
	L2:
		cmp eax,82
		JB L3
		mov edx,offset temp2
		JMP Next
	L3:
		cmp eax,78
		jb L4
		mov edx,offset temp3
		JMP Next
	L4:
		cmp eax,74
		jb L5
		mov edx,offset temp4
		jmp Next
	L5:
		cmp eax,70
		jb L7
		mov edx,offset temp5
		jmp Next
	L7:
		cmp eax,66
		jb L
		mov edx,offset temp6
		jmp Next
	L8:
		cmp eax,62
		jb L9
		mov edx,offset temp7
		jmp Next
	L9:
		cmp eax,58
		jb L10
		mov edx,offset temp8
		jmp Next
	L10:
		cmp eax,54
		jb L11
		mov edx,offset temp9
		jmp Next
	L11:
		cmp eax,50
		jb Next
		mov edx,offset temp10
		jmp Next
	
	call writestring
ret	
cgpa endp
 
main proc

	mov eax,0
	mov eax,98
	call CGPA

exit
main endp
end main