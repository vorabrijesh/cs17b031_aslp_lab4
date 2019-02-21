#Write a MIPS32 program to count a number of ones and zeros in a 32 bit binary number.
#The count results are to be kept back in the data section of memory (you need to find out
#where to store back the results). Assume that the given number is stored in register r1.

		.data
arr:	.space 2


main:
	li $s0 17   # load with whatever values you want
	li $t0 0
	li $t2,0
	li $t4,0
	la $t5,arr
while:
	beq $s0,0,exit		#goes to exit:
	andi $t1,$s0,1
	add $t2,$t2,$t1    	# $t2 stores number of 1's
	slt $t3,$t1,1
	add $t4,$t4,$t3    	#$t4 stores number of 0's
	srl $s0,$s0,1
	j while

exit:
	addi $t6,$zero,0
	sw  $t2,arr($t6)   		# stores the no. of 1's in array[0]
	addi $t6,$t6,4			
	sw  $t4,arr($t6)		# stores the no. of 0's in array[1]
	
	jr $ra