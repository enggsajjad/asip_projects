
	;.addressing	Word
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%r29), %r1
	jal	exit
	nop
	nop

main:

	addi	%r6, %r0, $(array & 0xffff)		; mem pointer
	nop
	nop
	nop

	addi	%r11, %r0, $(-5)
	addi	%r12, %r0, $(16)
	nop
	nop
	nop

	addu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	0(%r6), %r13
	nop
	nop
	nop
	addui	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	4(%r6), %r13
	nop
	nop
	nop
	subu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	8(%r6), %r13
	nop
	nop
	nop
	subui	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	12(%r6), %r13
	nop
	nop
	nop
	slt	%r13, %r11, %r12
	nop
	nop
	nop
	sw	16(%r6), %r13
	nop
	nop
	nop
	sltu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	20(%r6), %r13
	nop
	nop
	nop
	slti	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	24(%r6), %r13
	nop
	nop
	nop
	sle	%r13, %r11, %r12
	nop
	nop
	nop
	sw	28(%r6), %r13
	nop
	nop
	nop
	sleu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	32(%r6), %r13
	nop
	nop
	nop
	slei	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	36(%r6), %r13
	nop
	nop
	nop
	sgt	%r13, %r11, %r12
	nop
	nop
	nop
	sw	40(%r6), %r13
	nop
	nop
	nop
	sgtu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	44(%r6), %r13
	nop
	nop
	nop
	sgti	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	48(%r6), %r13
	nop
	nop
	nop
	sge	%r13, %r11, %r12
	nop
	nop
	nop
	sw	52(%r6), %r13
	nop
	nop
	nop
	sgeu	%r13, %r11, %r12
	nop
	nop
	nop
	sw	56(%r6), %r13
	nop
	nop
	nop
	sgei	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	60(%r6), %r13
	nop
	nop
	nop
	seq	%r13, %r11, %r12
	nop
	nop
	nop
	sw	64(%r6), %r13
	nop
	nop
	nop
	seqi	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	68(%r6), %r13
	nop
	nop
	nop
	sne	%r13, %r11, %r12
	nop
	nop
	nop
	sw	72(%r6), %r13
	nop
	nop
	nop
	snei	%r13, %r11, $(20)
	nop
	nop
	nop
	sw	76(%r6), %r13
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

	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
exit:
	nop
	nop
