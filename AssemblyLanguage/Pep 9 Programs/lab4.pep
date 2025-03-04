; Andrés Lauder
; Assembly Language, Hooper

         LDWA    0x000,i
         STWA    index,d
         STWA    total,d

forloop: LDWA    index,
         CPWA    10,i
         BREQ    isdone

         LDWX    index,
         ASLX
         STWA    values,x

         LDWX    index,d
         ADDX    0x001,i
         STWX    index,d
         BR      forloop

isdone:
         ;output the contents of the total variable
         STOP

index:   .WORD   0
values:  .BLOCK  20
total:   .WORD   0

         .END