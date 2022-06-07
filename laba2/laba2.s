.data
print_format: 
	.string "%d\n"
array: 
	.long 35, 2, 3, 4, 5, 6, 7, 8, 9, 10
array_end:

.text
.global main

main:
    mov $0, %ecx	
    mov $array, %ebx
    mov (%ebx), %eax

arifmetic_right:
    sar $1, %eax
    push %eax
    push $print_format
    call printf
    add $4, %ebx
    mov (%ebx), %eax
    add $1,%ecx
    jmp proverka   
        
if:
    mov %ecx, %edx
    and $1, %edx
    test %edx, %edx
    jz arifmetic_right
    
logic_left:
    shl $1, %eax
    push %eax
    push $print_format
    call printf
    add $4, %ebx
    mov (%ebx), %eax
        
proverka:
   cmp $array_end, %ebx
   jne if

exit:
    mov $0, %ecx
    mov $0, %ebx
    mov $1, %eax
    int $0x80
    

    





    	  
