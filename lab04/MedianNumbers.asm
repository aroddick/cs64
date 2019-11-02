# MedianNumbers.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

.data

	# TODO: Complete these declarations / initializations

	direction: .asciiz "Enter the next number:\n"

	median: .asciiz "Median: "

	newline: .asciiz "\n"


# Text Area (i.e. instructions)
.text
main:
	# Get first number from user
	li $v0, 4
	la $a0, direction
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	# Get second number from user
	li $v0, 4
	la $a0, direction
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	# Get third number from user
	li $v0, 4
	la $a0, direction
	syscall

	li $v0, 5
	syscall
	move $t2, $v0

	# Get first minus second
	sub $t3, $t0, $t1
	# Get Second minus third
	sub $t4, $t1, $t2
	# Get first minus third
	sub $t5, $t0, $t2

	# Multiply first subtraction by second subtraction
	mult $t3, $t4
	mflo $t8

	# Multiply first subtraction by third subtraction
	mult $t3, $t5
	mflo $t9

	li $v0, 4
	la $a0, median
	syscall

	bgt $t8, $zero, setMedian2

	bgt $t9, $zero, setMedian3

	j setMedian1

setMedian2:
	move $a0, $t1
	j print

setMedian1:
	move $a0, $t0
	j print

setMedian3:
	move $a0, $t2
	j print

print:
	li $v0, 1
	syscall
	li $v0 4
	la $a0, newline
	syscall

exit:
	# Exit
	li $v0, 10
	syscall

