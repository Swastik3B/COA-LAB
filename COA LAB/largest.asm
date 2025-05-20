;NAME:-SWASTIK BISHOI ,REG.NO:-2341002196(08)
     AREA PROG1, CODE,READONLY 
     ENTRY 
START 
     ;Smallest number from a given array 
     ldr r0,=count 
     ldr r1,[r0] 
     ldr r2,=array 
   ldr r3, [r2],#4 
back 
     subs r1,r1,#01 
     beq fwd 
     ldr r4,[r2],#4
     cmp r3,r4	 
     blt back 
     mov r3,r4 
     b back 
fwd  
   ldr r5,=RESULT 
      str r3,[r5] 
exit b exit

count DCD 0x07 
array  
        DCD 0x15    
        DCD 0x35 
        DCD 0x32 
        DCD 0x45 
        DCD 0x10 
        DCD 0x4f 
        DCD 0x34 
      AREA DATA2,DATA,READWRITE  
RESULT  DCD 0X0 
      END 
