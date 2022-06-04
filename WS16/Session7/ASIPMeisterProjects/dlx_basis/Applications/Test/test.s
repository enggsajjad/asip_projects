	.addressing	Word
	.section	.text
main:
	addi %r1, %r0, $0	; loop counter
	addi %r2, %r0, $(array & 0xffff)	; mem pointer
	addi %r3, %r0, $1	; one (marker)
	nop

loop_begin:
	slti %r4, %r1, $4
	nop
	nop
	nop
	beqz %r4, loop_end
	nop
	lw %r5, 0(%r2)
	lw %r6, 4(%r2)
	nop
	nop
	nop
	add %r7, %r5, %r6
	nop
	nop
	nop
	sw 8(%r2), %r7

case_end:
	addi %r1, %r1, $1
	addi %r2, %r2, $16
	j loop_begin
	nop
loop_end:
	;jal exit
	nop

	.section	.data
array:
	.data.32	5
	.data.32	7
	.data.32	0
	.data.32	0

	.data.32	15
	.data.32	7
	.data.32	0
	.data.32	0

	.data.32	25
	.data.32	-7
	.data.32	0
	.data.32	0

	.data.32	-17
	.data.32	5
	.data.32	0
	.data.32	0
