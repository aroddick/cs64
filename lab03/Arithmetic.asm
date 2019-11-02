# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here

	# Load user input into t0
	li $v0, 5
	syscall
	move $t0, $v0

	# Load user input into t1
	li $v0, 5
	syscall
	move $t1, $v0

	# Load user input into t2
	li $v0, 5
	syscall
	move $t2, $v0

	# subtract first and second number
	sub $t0, $t0, $t1

	# Multiply by 2 by adding
	add $t0, $t0, $t0

	# load multiplier into $t1
	li $t1, 3

	# triple the third user input
	mult $t2, $t1
	mflo $t1

	# add the two results
	add $t0, $t0, $t1

	# Print result
	li $v0, 1
	move $a0, $t0
	syscall

exit:
	# Exit
	li $v0, 10
	syscall

