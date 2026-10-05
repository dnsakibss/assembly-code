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