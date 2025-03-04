         LDWA    0x0000,i    
         STWA    index,d 
         STWA    total,d 
    
forloop: LDWA    index,d     
         CPWA    10,i        
         BREQ    isdone      

         LDWX    index,d     
         ASLX                ; x2 to index WORD


         ; input a value into values[index]
         STRO    prompt,d
         DECI    values,d
         ;DECO    values,d
         ; add the values[index] to total
         LDWA    values,d
         ADDA    total,d
         STWA    total,d

         ADDA    total,d
         LDWX    index,d     
         ADDX    0x0001,i    
         STWX    index,d     
         BR      forloop  

   

isdone:  DECO    total,d 
         
         STOP

         ; output the contents of the total variable
           
              
index:   .WORD   0           
values:  .BLOCK  20  
total:   .WORD   0
prompt:  .ASCII  "Type a word "        

         .END                  
