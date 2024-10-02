# tests beq
BNEtest: li   $t1, 0           # load 0 into t1
      li   $t5, 20           # load 20 into t5
      addi $t1, $t1, 20   
      bne  $t1, $t5, end  
      sub  $t1, $t1, $t5
end:  addi $t1, 2      
      .word 0xfeedfeed
      