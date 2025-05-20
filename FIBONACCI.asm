;NAME :-SWASTIK BISHOI ,REGNO:-2341002196(08) 
       AREA fibnacci, CODE, READONLY
        ENTRY
START
        MOV R1, #1
        MOV R2, #0
        MOV R3, #0
        LDR R0, =COUNT
        LDR R6, =FIB_SERIES
        LDRB R5, [R0]
        CMP R5, #1
        BLE STOP1
        STRB R2, [R6], #1
        SUBS R5, R5, #1
        STRB R1, [R6], #1
        SUBS R5, R5, #1
BACK
        CMP R5, #0
        BEQ STOP
        ADD R3, R2, R1
        STRB R3, [R6], #1
        MOV R2, R1
        MOV R1, R3
        SUBS R5, R5, #1
        B BACK
STOP1
        STRB R2, [R6]
STOP
        B STOP
COUNT   DCB 0x0A
        AREA DATA1, DATA, READWRITE
FIB_SERIES DCB 0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0
        END
