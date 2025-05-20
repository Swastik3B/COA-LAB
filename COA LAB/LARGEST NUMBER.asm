;LAB 3 (OBJECTIVE 1)
;NAME:-SWASTIK BISHOI ,REG.NO:-2341002196(08)  
;SMALLEST NUMBER FROM A GIVEN ARRAY OF SIZE N. 
.DATA
COUNT  DB  05H          ; Number of elements in the array
VALUE  DB  09H,18H,05H,15H,01H  ; Array of values
RESULT DB  ?            ; Variable to store the smallest value

.CODE
MAIN PROC
        MOV AX,DATA     ; Load the address of the DATA segment into AX
        MOV DS,AX       ; Move the address into the DS register to access data
        MOV CL,COUNT    ; Load COUNT (number of elements) into CL
        DEC CL          ; Decrement CL because the first element is already considered
        LEA SI,VALUE    ; Load the address of the VALUE array into SI
        MOV AL,[SI]     ; Load the first value of the array into AL (initial min value)
        
UP:     INC SI          ; Move to the next element in the array
        CMP AL,[SI]     ; Compare AL (current min) with the next element
        JNA NXT         ; If AL <= [SI], skip updating AL
        MOV AL,[SI]     ; If [SI] is smaller, update AL with the new min value
        
NXT:    DEC CL          ; Decrement loop counter
        JNZ UP          ; If CL is not zero, repeat the loop
        LEA DI,RESULT   ; Load the address of RESULT variable into DI
        MOV [DI],AL     ; Store the smallest value in RESULT

END MAIN