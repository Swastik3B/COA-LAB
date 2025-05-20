MOV AX, [2000H]   ; Load dividend
MOV BX, [2002H]   ; Load divisor
MOV CX, 0000H     ; Initialize quotient
MOV DX, 0000H     ; Not used but can be cleared

DIV_LOOP:
    CMP AX, BX    ; Compare dividend and divisor
    JL END_DIV    ; If AX < BX, stop (AX is remainder)
    SUB AX, BX    ; Subtract divisor from dividend
    INC CX        ; Increment quotient
    JMP DIV_LOOP  ; Repeat

END_DIV:
MOV [2004H], CX   ; Store quotient at 2004H
MOV [2006H], AX   ; Store remainder at 2006H
HLT               ; Halt program
