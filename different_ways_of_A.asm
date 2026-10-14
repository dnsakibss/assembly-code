.MODEL SMALL
.STACK 100H

.DATA

A DB "HELLO WORLD$"
B DB "HELLO$"
NEWLINE DB 0DH,0AH,'$'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    ; Print A
    MOV AH,09H
    LEA DX,A
    INT 21H

    ; Newline
    MOV AH,09H
    LEA DX,NEWLINE
    INT 21H

    ; Print B
    MOV AH,09H
    LEA DX,B
    INT 21H

    ; Newline
    MOV AH,09H
    LEA DX,NEWLINE
    INT 21H

    ; Print single character A
    MOV AH,02H
    MOV DL,'A'
    INT 21H

    ; Newline
    MOV AH,09H
    LEA DX,NEWLINE
    INT 21H

    ; Print A using ASCII hexadecimal value
    MOV AH,02H
    MOV DL,41H
    INT 21H

    ; Newline
    MOV AH,09H
    LEA DX,NEWLINE
    INT 21H

    ; Print B
    MOV AH,09H
    LEA DX,B
    INT 21H

    ; Exit
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN