# tests jal
.set noreorder
Jtest: li   $t5, 30        
      li   $t1, 1
JALStart: 
    addi $t5, $t5, 20  
     jal  JALTestAddr        
    sub  $t5, $t5, $t1
    .word 0xfeedfeed
    
JALTestAddr: addi $t5, $t5, 2 
    jr  $ra #ask abo
    addi $t3, $t3, 0
    

