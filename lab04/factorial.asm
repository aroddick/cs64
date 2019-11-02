# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

# Assembly version of:
#   int n, fn=1;
#   cout << "Enter the number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial is:\n" << fn << "\n";
#
.data

	# TODO: Write your initializations here
	direction: .asciiz "Enter the number:\n"
	answer: .asciiz "Factorial is:\n"
	newline: .asciiz "\n"

# Text Area (i.e. instructions)
.text
main:
	# TODO: Write your code here
	li $v0, 4
	la $a0, direction
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $t1, 1
	li $t2, 2

loop:
	blt $t0, $t2, print
	mult $t1, $t2
	mflo $t1
	addi $t2, 1
	j loop
	
print:
	li $v0, 4
	la $a0, answer
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 4
	la $a0, newline
	syscall

exit:
	# Exit
	li $v0, 10
	syscall
