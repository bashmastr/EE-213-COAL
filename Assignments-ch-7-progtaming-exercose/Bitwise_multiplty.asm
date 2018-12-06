
Include Irvine32.inc

.data
var DWORD 34
temp dword 2

.code

fast_mul proc

	mov ecx, 32
	mov edx, 0
L1:
	SHR ebx, 1
    	JNC go
    	add edx, eax	
	go:
	SHL eax, 1
    	loop L1   
	mov eax, edx
	ret
fast_mul endp


main PROC

	mov eax, var
	mov ebx, temp
	
	call fast_mul
	
	call writeint

main ENDP




END main 