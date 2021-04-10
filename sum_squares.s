
	.text
	.globl	sum_squares
	.def	sum_squares;	.scl	2;	.type	32;	.endef


	# This is the definition of the sum_squares function.
	# See the declaration in sum_squares.h
	# The function takes one parameter:
	#   -- a 32-bit integer n in the %ecx register
	# It returns the sum of squares of the numbers from 1 to n.
	# The return value, being 32 bits, must be placed in the %eax registe
	
sum_squares:                            

	# In general, you can overwrite the 64-bit
	# registers %rax, %rcx, %rdx, %r8, %r9, %r10, %r11,
	# as well as their 32-bit halves, %eax, %ecx,
	# %edx, %r8d, %r9d, %r10d, %r11d as you like. These are
	# the "caller-saved" registers.

	# NOTE: In this assignment, you only need to use 32-bit
	# registers for the computation (i.e. %eax, %ecx, %edx, etc.)
	
	
	pushq	%rbp         # LEAVE THIS ALONE
	movq	%rsp, %rbp   # LEAVE THIS ALONE
	
	movl $0, %eax
	/* FILL THIS IN */  # sum = 0, since sum is to be returned,
	                    #          use %eax to hold sum.

    movl $1, %edx
	/* FILL THIS IN */  # i = 1
	
	
top:
/* THIS IS THE TOP OF THE LOOP, NEED A LABEL */	

    cmpl %ecx, %edx
	/* FILL THIS IN */  # compare i to n

	jg outside
	/* FILL THIS IN */  # if i is greater than n, jump out of loop

    movl %edx, %ebx
	/* FILL THIS IN */  # copy i into another register
	
    imull %edx, %ebx
	/* FILL THIS IN */  # multiply that register by i to get i*i
	
	addl %ebx, %eax
	/* FILL THIS IN */  # add that register to sum
	
    incl %edx
	/* FILL THIS IN */  # i++

	jl outside

	jmp top
	/* FILL THIS IN */  # jump to top of loop

outside: 
/* THIS IS OUTSIDE THE LOOP, NEED A LABEL */	

	                # the return value, sum, is already in %eax

	popq	%rbp    # LEAVE THIS ALONE
	retq            # LEAVE THIS ALONE

