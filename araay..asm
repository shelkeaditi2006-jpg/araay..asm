section .data
array db 0x01, 0x02, 0x03, 0x04 
n     db 4                        
sum   dw 0                        

section .text
global _start

_start:
    mov esi, array       
    movzx ecx, byte [n]   
    xor eax, eax         

sum_loop:
    movzx ebx, byte [esi]
    add eax, ebx          
    inc esi             
    loop sum_loop         

    mov [sum], ax         

    mov eax, 1           
    xor ebx, ebx
    int 0x80
