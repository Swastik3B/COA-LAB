.DATA
ARRAY DB 250, 10, 5  ; Array elements
COUNT DB 3           ; Number of elements
SUM DW 0
AVG DB ?             ; Store average

.CODE
MOV CX, COUNT    ; Load COUNT into CX
MOV SI, OFFSET ARRAY  ; Load address of ARRAY
XOR AX, AX       ; Clear AX (AL = sum, AH = carry)

SUM_LOOP:
    ADD AL, [SI]  ; Add element to AL
    ADC AH, 0     ; Add carry to AH (optimized carry handling)
    
    INC SI        ; Move to next element
    LOOP SUM_LOOP ; Repeat for all elements

MOV SUM, AX      ; Store final sum (including carry)

MOV AX, SUM      ; Load SUM into AX for division
MOV BL, COUNT    ; Load COUNT into BL
DIV BL           ; AL = SUM / COUNT (Average)

MOV AVG, AL      ; Store average in memory
