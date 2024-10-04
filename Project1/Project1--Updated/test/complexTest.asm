

main:
        # Load the value of n into $t1 (we'll set n = 7 directly in immediate)
        li      $t1, 7               # n = 7 (you can change this to compute other terms)

        # Check base cases
        li      $t2, 2                # Set $t2 = 2 for comparison
        beq     $t1, $zero, BaseCase   # If n == 0, jump to BaseCase
        beq     $t1, $t2, BaseCase    # If n == 2, jump to BaseCase
        addi    $t2, $t2, -1           # Check if n == 1
        beq     $t1, $t2, BaseCase     # If n == 1, jump to BaseCase

        # Initialize Padovan variables P(0), P(1), P(2)
        li      $t3, 1                  # P(0) = 1
        li      $t4, 1                  # P(1) = 1
        li      $t5, 1                  # P(2) = 1
        li      $t6, 3                  # Initialize counter for P(3)

Loop:
        # Calculate P(n) = P(n-2) + P(n-3)
        add     $t0, $t3, $t4          # $t0 = P(n-2) + P(n-3)
        
        # Update Padovan variables for next iteration
        addi    $t3, $t4, 0            # Store current P(n-2) into P(0) (P(n-3) becomes P(n-2))
        addi    $t4, $t5, 0            # Store current P(n-1) into P(1) (P(n-2) becomes P(n-1))
        addi    $t5, $t0, 0            # Store result into P(2)

        # Increment counter
        addi    $t6, $t6, 1             # Increment counter
        bne     $t6, $t1, Loop          # If counter != n, repeat
 
EndLoop:
        # Store result in $t0 (final Padovan number is now in $t0)
        
        # Exit program
        li      $v0, 10                 # syscall to exit
        .word 0xfeedfeed

BaseCase:
        # Handle base cases
        li      $t0, 1                   # Set result as 1 for n = 0, 1, or 2
        # Normally, you would store $t0 somewhere to return the value, but since 
        # we don't have data storage, we just exit.
        
        # Exit program
        li      $v0, 10                  # syscall to exit
        .word 0xfeedfeed