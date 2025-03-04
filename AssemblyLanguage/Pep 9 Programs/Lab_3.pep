; Andrés Lauder, lab3
;        
         ; input A 
         STRO    promptA,d   
         ; store A as int
         DECI    valueA,d

         ; input B 
         STRO    promptB,d   
         ; store B as int
         DECI    valueB,d 

         ; input C 
         STRO    promptC,d   
         ; store C as int
         DECI    valueC,d 

         ; load valueA into accumulator
         LDWA    valueA,d
         ; AND valueA with valueB
         ANDA    valueB,d
         ; store the new valueAB, which is the product of 
         ; valueA AND valueB
         STWA    resultAB,d 

         ; load valueA into accumulator
         LDWA    valueA,d
         ; AND valueC with valueA
         ANDA    valueC,d
         ; store valueAC as the product of valueA AND valueC
         STWA    resultAC,d 

         ; load resultAB into accumulator
         LDWA    resultAB,d 
         ; OR resultAB with resultAC
         ORA     resultAC,d 
         ; store the result as a final product of resultAB OR resultAC
         STWA    result,d
         ; output the numer value of result
         DECO    result,d      

         ; exit the program
exit:    STOP 

; store A as a word               
valueA:  .WORD   0       
; ask user prompt for what A should be    
promptA: .ASCII  "Enter A\n"

; store B as a word               
valueB:  .WORD   0       
; ask user prompt for what A should be    
promptB: .ASCII  "Enter B\n"

; store C as a word               
valueC:  .WORD   0       
; ask user prompt for what A should be    
promptC: .ASCII  "Enter C\n"

resultAC:  .WORD 0
resultAB:  .WORD 0
result:    .WORD 0


         .END       

