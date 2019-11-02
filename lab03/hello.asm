# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	direction: .asciiz "Choose an integer number between 0 and 1000:\n"
	greeting: .asciiz "Hello World!\n"
	analyzation1: .asciiz "User chose "
	analyzation2: .asciiz ". Truly a wise choice.\n"

#Text Area (i.e. instructions)
.text
main:

	# Instruction
	li $v0, 4
	la $a0, direction
	syscall

	# Get number from user
	li $v0, 5
	syscall
	move $t0, $v0

	# Greeting
	li $v0, 4
	la $a0, greeting
	syscall

	# First part of readback
	la $a0, analyzation1
	syscall

	# Print user's number
	li $v0, 1
	move $a0, $t0
	syscall

	# Last part of readback
	li $v0, 4
	la $a0, analyzation2
	syscall

exit:
	# Exit
	li $v0, 10
	syscall

