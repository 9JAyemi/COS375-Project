andTest:
      li   $t0, 68          # load address of array
      li   $t5, 68         # load address of size variable
      and  $t1, $t0, $t5
      .word 0xfeedfeed

