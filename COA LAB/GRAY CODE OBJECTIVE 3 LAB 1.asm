MOV AL, [2000H]    ; Load 8-bit binary number from memory location 2000H
MOV BL, AL         ; Copy original value to BL
SHR AL, 1          ; Shift AL right by 1 (logical shift)
XOR AL, BL         ; Gray code = Binary XOR (Binary >> 1)
MOV [2001H], AL    ; Store Gray code at memory location 2001H
