sltTest: li   $t0, 68          # load address of array
         li   $t5, 116         # load address of size variable
        slt  $t1, $t0, $t5
        slt  $t2, $t5, $t0
        .word 0xfeedfeed
