# tests beq
BLEZtest: li   $t5, -20          # load 0 into t1
      li   $t1, 3         # load 20 into t5 
      blez  $t5, end        #why does it not recognize blez
      sub  $t5, $t5, $t1
end:  addi $t5, 2      
      .word 0xfeedfeed
      