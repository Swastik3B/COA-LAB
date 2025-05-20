Obj-1: Perform Addition and Subtraction of two 32-bit numbers using data processing 
addressing mode (with 8-bit immediate data). 
Program: 
.global _start 
_start: 
mov r0, #0x40 
mov r1, #0x50 
adds r2,r0,#0x50 
subs r3,r0,#0x50 
mul r4,r0,r1 
my_exit: b my_exit      


Objective 2: Perform Addition, Subtraction, and Multiplication of two 32-bit numbers using 
load/store addressing mode. 
Program: 
.global _start 
_start: 
LDR R0,=0X10100000 
LDR R1,[R0],#4 
LDR R2,[R0],#4 
ADDS R3,R1,R2 
STR R3,[R0],#4 
SUBS R4,R1,R2 
STR R4,[R0],#4 
MUL R5,R1,R2 
STR R5,[R0]  
my_exit: b my_exit 

Objective-3: Perform the logical operations (AND, OR, XOR, and NOT) on two 32-bit numbers using 
load/store addressing mode 
Program 
.global _start 
_start: 
LDR R0,=0X10100000 
LDR R1,[R0],#4 
LDR R2,[R0],#4 
ANDS R3,R2,R1 
STR R3,[R0],#4 
ORR R4,R2,R1 
STR R4,[R0],#4 
EOR R5,R2,R1 
STR R5,[R0],#4 
MVN R6, R1 
STR R6,[R0] 
my_exit: b my_exit  