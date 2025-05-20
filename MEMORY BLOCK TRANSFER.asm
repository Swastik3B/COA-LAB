; LAB 2 (OBJECTIVE 4)
; NAME:- SWASTIK BISHOI
; REG.NO:- 2341002196 (08)

MOV SI, 4000H       ; Load source address
MOV DI, 4040H       ; Load destination address
MOV CX, 0005H       ; Number of 16-bit words to transfer

MOVE_LOOP:
MOV AX, [SI]        ; Load 16-bit data from source (SI)
MOV [DI], AX        ; Store data to destination (DI)
ADD SI, 2           ; Move to next word in source
ADD DI, 2           ; Move to next word in destination
DEC CX              ; Decrease count
JNZ MOVE_LOOP       ; Repeat loop until CX = 0

HLT                 ; Halt execution
