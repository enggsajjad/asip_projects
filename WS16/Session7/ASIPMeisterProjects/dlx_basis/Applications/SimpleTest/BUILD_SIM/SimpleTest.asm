	.section	.data
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r14, %r14, %r14
	xor	%r13, %r13, %r13
	xor	%r12, %r12, %r12
	nop
	lhi	%r14, $(0xFFFFC/0x10000)
	lhi	%r13, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%r14, %r14, $(0xFFFFC%0x10000)
	ori	%r13, %r13, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%r13), %r14
	sw	-8(%r13), %r15
	addi	%r13, %r14, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%r13), %r1
	jal	exit
	nop
	nop

	;.addressing	Word
main:
L_bubbleTest4_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_bubbleTest4_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_bubbleTest4_2:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
exit:
	nop
	nop
