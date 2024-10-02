subTest: li   $t0, 7          # load address of array
         li   $t5, 6         # load address of size variable
        sub  $t1, $t0, $t5
        .word 0xfeedfeed
        