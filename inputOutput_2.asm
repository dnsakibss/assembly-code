.MODEL SMALL
.STACK 100H
.DATA

C DB ?
D DB ?
NEWLINE DB 0AH,0DH,'$'
msg1 db "taking input: $",10,13
msg2 db "outputs are: $",10,13

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    input1:
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    mov C,al ;first input
    
    mov ah,9
    lea dx,newline
    int 21h
    
    input2:
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    mov D,al ;second input
    
    mov ah,9
    lea dx,newline
    int 21h 
    
    output1:
    
    mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,2
    mov dl,C ;first output
    int 21h
    
    mov ah,2
    mov dl," "
    int 21h 
    
    mov ah,2
    mov dl,D ;second output
    int 21h
       
    mov ah,9
    lea dx,newline
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main