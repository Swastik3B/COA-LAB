;LAB 2 (OBJECTIVE 3)
;NAME:-SWASTIK BISHOI
;REG.NO:-2341002196 (08)
MOV SI, 2000H  ; Load address of 8-bit number into SI
MOV AL, [SI]   ; Load the 8-bit number from memory into AL
MOV CL, 08H    ; Initialize loop counter (8 bits)
MOV BL, 00H    ; Initialize zero counter BL = 0

L2: SHR AL, 01 ; Shift AL right by 1 bit (LSB into Carry Flag)
JC L1          ; If Carry Flag = 1 (bit was 1), skip increment
INC BL         ; If Carry Flag = 0 (bit was 0), increment BL

L1: DEC CL     ; Decrement bit counter
JNZ L2         ; Repeat until all 8 bits are processed
INC SI         ; Move to next memory location
MOV [SI], BL   ; Store the count of 0’s at memory location 2001H
HLT            ; Stop execution