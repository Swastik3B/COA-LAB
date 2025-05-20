;NAME:-Sauvik Suraj Mishra ,REG.NO:-2341013152(obj 2)
    AREA prog2, CODE, READONLY 
    ENTRY      
START  
    ldr r0, =count         
    ldr r1, [r0]           
    ldr r3, =array         
    ldr r4, =even          
    ldr r5, =odd           
back 
    ldr r6, [r3], #4       
    ands r7, r6, #1        
    beq store_even         

    str r6, [r5], #4       
    b skip_store           
store_even
    str r6, [r4], #4       
skip_store
    subs r1, r1, #1        
    bne back               
exit 
    b exit                 
count   DCD 0x07 
array  
    DCD 0x15 
    DCD 0x35 
    DCD 0x32 
    DCD 0x45 
    DCD 0x10 
    DCD 0x4f 
    DCD 0x34 
    AREA DATA2, DATA, READWRITE
even    
    DCD 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
odd     
    DCD 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    END
