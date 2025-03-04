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

         ; set accumulator to 0
         LDWA    zero,d
         ; load value b into index register as a loop counter
         LDWX    valueB,d
         ; skip calculation if B is zero (based on Z status bit)
         BREQ    calcAC
         ; continue if B positive
         BRGE    loop1
         ; flip sign of B
         NEGX
         ; loop1 multiplies A*B by adding A to itself B times
loop1:   ADDA    valueA,d
         ; exit if value overflows a word
         BRV     overflw
         ; decrement loop counter by 1
         SUBX    one,d
         ; compare with 0
         CPWX    zero,d
         ; loop again if not done
         BRGT    loop1
         ; check again to see if B is negative
         LDWX    valueB,d
         ; continue if B is positive
         BRGE    storeAB
         ; flip accumulator sign since B is negative
         NEGA    
         ; store the result of A*B
storeAB: STWA    resultAB,d 

         ; set accumulator to 0
calcAC:  LDWA    zero,d
         ; load value C into index register as a loop counter
         LDWX    valueC,d
         ; skip calculation if C is zero (based on Z status bit)
         BREQ    calcTot
         ; continue if B positive
         BRGE    loop2
         ; flip sign of B
         NEGX
         ; loop2 multiplies A*C by adding A to itself C times
loop2:   ADDA    valueA,d
         ; exit if value overflows a word
         BRV     overflw
         ; decrement loop counter by 1
         SUBX    one,d
         ; compare with 0
         CPWX    zero,d
         ; loop again if not done
         BRGT    loop2
         ; check again to see if C is negative
         LDWX    valueC,d
         ; continue if B is positive
         BRGE    storeAC 
         ; flip accumulator sign since C is negative
         NEGA    
         ; store the result of A*C
storeAC: STWA    resultAC,d 
         
         
         ; load resultAB into accumulator
calcTot: LDWA    resultAB,d 
         ; add resultAB with resultAC
         ADDA    resultAC,d 
         ; exit if value overflows a word
         BRV     overflw
         ; store product of reusltAB + resultAC as a new variable called result
         STWA    result,d
         ; output the number of result in the terminal
         DECO    result,d    
         BR      exit
         ; write a message indicating overflow occurred
overflw: STRO    ofmsg,d 
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
zero:      .WORD 0
one:       .WORD 1
result:    .WORD 0

ofmsg:   .ASCII  "Calculated value too large to store in a Word\n"    

         .END       
