# tests beq
main: li   $t5, 30        
      li   $t1, 3    
      j Jtest  
    sub  $t5, $t5, $t1
    
    
Jtest:  addi $t5,$t5, 2 
   .word 0xfeedfeed

    