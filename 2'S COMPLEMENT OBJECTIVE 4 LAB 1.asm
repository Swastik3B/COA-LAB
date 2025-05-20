MOV AL, [2000H]    ; Load 8-bit number from memory location 2000H
NOT AL             ; Take 1's complement (invert bits)
ADD AL, 01H        ; Add 1 to get 2's complement
MOV [2001H], AL    ; Store the 2's complement at memory location 2001H
