; LAB 2 (OBJECTIVE 2)
; NAME:- SWASTIK BISHOI
; REG.NO:- 2341002196 (08)

MOV SI, 4000H         ; Load address where N is stored
MOV BX, [SI]          ; Load N into BX (number count)
MOV CX, 0000H         ; Initialize CX to store lower 16-bit sum
MOV DX, 0000H         ; Initialize DX to store overflow (carry)

ADD SI, 2             ; Move SI to first data value (4002H)

SUM_LOOP:
ADD CX, [SI]          ; Add current 16-bit number to CX
ADC DX, 0000H         ; Add carry to DX (handle overflow)
ADD SI, 2             ; Move to next 16-bit number
DEC BX                ; Decrement count
JNZ SUM_LOOP          ; Repeat loop if BX != 0

MOV [4020H], CX       ; Store lower 16-bit sum at memory 4020H
MOV [4022H], DX       ; Store higher 16-bit sum at memory 4022H

MOV AX, CX            ; Move sum to AX for division
MOV DX, 0000H         ; Clear DX before division
MOV BX, [4000H]       ; Load N again for division

DIV BX                ; AX = sum / N (quotient), DX = remainder
MOV [4024H], AX       ; Store average at memory 4024H

HLT                   ; Halt program
