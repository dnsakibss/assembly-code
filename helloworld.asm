.MODEL SMALL 
.STACK 100H 
.DATA ;VARIABLE
;A DB 'HELLO WORLD',"$";10,13,"$";24H;"$"SAME AS 24H   
;B DB ' HELLO$'
A DB "HELLO WORLD$"
B DB "FIRST CLASS$"
C DB "COA: T$"

;newline db 10,13,24h

.CODE 
MAIN PROC
    ;1 FOR SINGLE USER INPUT
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H  
    
    ;MOV AH,9
    ;LEA DX,newline
    ;INT 21H       
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,9
    LEA DX,B
    INT 21H     
    
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN