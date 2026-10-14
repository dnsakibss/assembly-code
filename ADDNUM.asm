.MODEL
.STACK 100H
.DATA 
                                 
NEW DB 10,13,24H 
INPUT DB "INPUT:$"
SUM DB "SUM:$"

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,INPUT
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    MOV AH,9
    LEA DX,INPUT
    INT 21H 
    
    MOV AH,1 
    INT 21H
    MOV CL,AL 
    
    MOV AH,9 
    LEA DX,NEW
    INT 21H
    
    MOV AH,9 
    LEA DX,SUM
    INT 21H 
    
    SUB BL,30H
    SUB CL,30H
    ADD BL,CL
    ADD BL,30H
    
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN