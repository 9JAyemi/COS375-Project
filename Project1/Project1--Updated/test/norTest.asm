norTest: 
        li   $t0, 0          # load address of array
         li   $t5, 1         # load address of size variable
         nor  $t1, $t0, $t5
         .word 0xfeedfeed
         