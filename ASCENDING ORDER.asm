;LAB 3 (OBJECTIVE 2)
;NAME:-SWASTIK BISHOI ,REG.NO:-2341002196(08)
;ARRANGE THE NUMBER IN DESCENDING NUMBER  
.DATA
COUNT  DB  06          ; Number of elements in the array
VALUE  DB  09H,42H,0FH,18H,3FH,18H  ; Array of values to be sorted

.CODE
MAIN PROC
    MOV AX,DATA      ; Load the address of the DATA segment into AX
    MOV DS,AX        ; Move the address into the DS register to access data
    MOV CH,COUNT     ; Load COUNT (number of elements) into CH
    DEC CH           ; Decrement CH because the last element will be sorted automatically
    
UP2: MOV CL,CH       ; Copy CH to CL (inner loop counter)
    LEA SI,VALUE     ; Load the address of the VALUE array into SI
    
UP1: MOV AL,[SI]     ; Load the current element into AL
    CMP AL,[SI+1]    ; Compare AL (current element) with the next element
    JNC DOWN          ; If AL > [SI+1], no swap needed, jump to DOWN
    MOV DL,[SI+1]    ; Load the next element into DL
    XCHG [SI],DL     ; Swap the current element with DL
    MOV [SI+1],DL    ; Store the swapped value in the next position

DOWN: INC SI         ; Move to the next element in the array
    DEC CL           ; Decrement inner loop counter
    JNZ UP1          ; If CL is not zero, repeat the inner loop
    DEC CH           ; Decrement outer loop counter
    JNZ UP2          ; If CH is not zero, repeat the outer loop (bubble sort passes)
END MAIN