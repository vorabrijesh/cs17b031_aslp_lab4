#Write a MIPS32 program to detect whether a given signed integer number is positive of
#negative. If the number is positive indicate that by storing value zero in register r2 and
#indicate the negative by storing value 1 in register r2.


main:
li $s0,-15
li $s1,32
li $t1, 0
while:
beq $s1,2,exit
addi $s1,$s1,-1
srl $s0,$s0,1
j while

exit:
andi $t1,$s0,1  	# if $t1=0 then $s0 is positive else negative