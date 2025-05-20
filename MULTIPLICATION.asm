; LAB 2 (OBJECTIVE 1)
; NAME:- SWASTIK BISHOI
; REG.NO:- 2341002196 (08)

MOV BX, [2000H]      ; Load first 16-bit number (multiplicand) into BX
MOV CX, [2002H]      ; Load second 16-bit number (multiplier) into CX
MOV AX, 0000H        ; Clear AX (lower 16 bits of result)
MOV DX, 0000H        ; Clear DX (higher 16 bits of result)

MULTIPLY_LOOP:
ADD AX, BX           ; Add BX to AX (partial sum)
JNC NO_CARRY         ; If no carry from addition, skip incrementing DX
INC DX               ; If there was a carry, increment DX

NO_CARRY:
DEC CX               ; Decrement multiplier count
JNZ MULTIPLY_LOOP    ; Repeat until CX = 0

MOV [2004H], AX      ; Store lower 16-bit result at 2004H
MOV [2006H], DX      ; Store upper 16-bit result at 2006H
