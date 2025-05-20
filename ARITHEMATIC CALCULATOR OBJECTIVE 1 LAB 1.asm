; LAB 1 (OBJECTIVE 1)
; NAME:- SWASTIK BISHOI
; REG.NO:- 2341002196 (08)

MOV AX, 1234H         ; Load first 16-bit number into AX
MOV BX, 5678H         ; Load second 16-bit number into BX
MOV CX, AX            ; Store AX value in CX

; Addition Operation
ADD AX, BX            ; Perform AX = AX + BX (1234H + 5678H)
MOV [5000H], AX       ; Store addition result at memory location 5000H

; Subtraction Operation
MOV BX, 5678H         ; Reload original value into BX
SUB BX, CX            ; Perform BX = BX - CX (5678H - 1234H)
MOV [5002H], BX       ; Store subtraction result at memory location 5002H

; Multiplication Operation
MOV AX, CX            ; Restore AX value (1234H)
MOV BX, 5678H         ; Load second 16-bit number into BX
MUL BX                ; Perform AX * BX = DX:AX (result split into 2 parts)
MOV [5004H], AX       ; Store lower 16 bits of multiplication result at 5004H
MOV [5006H], DX       ; Store upper 16 bits of multiplication result at 5006H

; Division Operation
MOV DX, 0000H         ; Clear DX before division
MOV AX, CX            ; Restore AX value (1234H)
MOV BX, 5678H         ; Load BX again for division
DIV BX                ; Perform AX / BX (1234H / 5678H), quotient in AX, remainder in DX
MOV [5008H], AX       ; Store quotient at memory location 5008H
MOV [500AH], DX       ; Store remainder at memory location 500AH
