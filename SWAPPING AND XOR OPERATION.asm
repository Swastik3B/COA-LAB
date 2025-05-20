; LAB 1 (OBJECTIVE 2)
; NAME:- SWASTIK BISHOI
; REG.NO:- 2341002196 (08)

MOV SI, 2000H       ; Load memory address 2000H (data1)
MOV AL, [SI]        ; Load data1 into AL

; *Swap nibbles of data1*
MOV CL, AL          ; Copy AL to CL
SHR AL, 4           ; Extract higher nibble (move to lower bits)
SHL CL, 4           ; Extract lower nibble (move to higher bits)
OR AL, CL           ; Combine swapped nibbles
MOV [SI], AL        ; Store swapped value back in memory

; *Logical Operation: Y = (data1 AND data2) OR (data1 XOR data2)*
INC SI              ; Move to next memory location (data2)
MOV BL, [SI]        ; Load data2 into BL
MOV CL, [2000H]     ; Load modified data1 (after swap) into CL
MOV DL, CL          ; Copy data1 to DL
AND DL, BL          ; DL = data1 AND data2
XOR CL, BL          ; CL = data1 XOR data2
OR DL, CL           ; DL = (data1 AND data2) OR (data1 XOR data2)
INC SI              ; Move to next memory location for storing result
MOV [SI], DL        ; Store the final result (Y)
