.model small 
.stack 100h 
.data

A db ?; ? means not assigned 
B db ?
c db ?

msg1 db "Enter num1: $"
msg2 db "Enter num2: $"
msg3 db "Enter num3: $"

msg4 db "Summation of 3 Numbers: $"
msg5 db "Difference between 2nd and 3rd number: $"

.code
MAIN PROC
    mov ax, @data
    mov ds, ax 
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah,1           ;input 1
    int 21h
    mov a,al   
    
     
    mov ah, 2        ;new line
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    mov ah, 2        ;new line
    mov dl, 10 
    int 21h 
    mov dl,13
    int 21h
    
    mov ah,2 
    mov dl,a
    int 21h 
    
    
    main endp 

end main