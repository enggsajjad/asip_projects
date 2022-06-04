	.addressing	Word
	.section	.text
main:
	addi %r2, %r0, $(array & 0xffff)	; mem pointer
	nop
	nop
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
	nop
	nop
	nop

	lw %r5, 12(%r2)
	lw %r6, 16(%r2)
	nop
	nop
	nop
	
	add %r7, %r5, %r6
	nop
	nop
	nop

	sw 20(%r2), %r7
	nop
	nop
	nop


	.section	.data
array:
	.data.32	14
	.data.32	15
	.data.32	0

	.data.32	50
	.data.32	40
	.data.32	0

