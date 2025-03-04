; Name: Andrés Lauder
; Date: 03,5,2023
; Descrption: this program prompts the user to enter a number. This number is stored in an array,and 
; this process executes for a total of 10 times, thus obtaining 10 values. A subsequent loop sums
; the array values to get the total which is the output of the program.

         LDWA    0x0000,i    
         STWA    index,d 
         STWA    total,d

         CALL    load

         LDWA    0,i
         STWA    index,d

; each iteration of the loop adds the first inputted number in the values array with the next
; this loop contains an index variable that acts as a loop counter
forloop: LDWA    index,d
         CPWA    10,i  
         BREQ    isdone

         LDWX    index,d
         ASLX    

         LDWA    values,x
         ADDA    total,d
         STWA    total,d

         LDWX    index,d   
         ADDX    0x0001,i    
         STWX    index,d  
         BR      forloop  

; output the result of total and stop the program
isdone:  DECO    total,d

         STOP

; clear the stack pointer by subtracting the stack by 2
; it loads 0 and stores that value as the variable of count
load:    SUBSP   2,i
         LDWA    0x00,i
         STWA    count,s

; loadlopp asks for the user to enter a number 10 times
; the count variable acts as a loop counter for this method, incrementing by one after each iteration
; until it reaches 10
loadloop: LDWA    count,d
         CPWA    10,i  
         BREQ    loaddone

         LDWX    count,d
         ASLX    
           
         STRO    prompt,d
         DECI    values,x

         LDWX    count,d 
         ADDX    0x0001,i    
         STWX    count,d     

         BR      loadloop

; add to the stack pointer, then once it finishes it returns the program back to where it was executing
; before it branched to load
loaddone: ADDSP   2,i
         RET
         STOP
   
index:   .WORD   0           
values:  .BLOCK  20 
total:   .WORD   0

count:   .WORD   0
prompt:  .ASCII  "Type a number "        

         .END            