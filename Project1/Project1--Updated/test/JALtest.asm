# tests jal
Jtest: li   $t5, 30        
      li   $t1, 1
JALStart: 
    addi $t5, $t1, 20  
     jal  JALTestAddr        
    sub  $t5, $t5, $t1
    .word 0xfeedfeed
    
JALTestAddr:  
    addi $t5, $t1, 2 
    jr  $ra #ask abo
    .word 0xfeedfeed
