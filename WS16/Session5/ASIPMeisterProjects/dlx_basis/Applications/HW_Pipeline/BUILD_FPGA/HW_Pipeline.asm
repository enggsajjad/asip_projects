	.section	.data
	;.global	_array
	.align	4
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23
L_BubbleSort_1:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	58
	.space	1
L_BubbleSort_2:
	.data.8	13
	.data.8	10
	.space	1
L_BubbleSort_3:
	.data.8	32
	.space	1
L_BubbleSort_4:
	.data.8	13
	.data.8	10
	.space	1
L_BubbleSort_5:
	.data.8	66
	.data.8	117
	.data.8	98
	.data.8	98
	.data.8	108
	.data.8	101
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	58
	.data.8	32
	.data.8	115
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L_BubbleSort_6:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	32
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L_BubbleSort_7:
	.data.8	78
	.data.8	79
	.data.8	33
	.data.8	33
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	69
	.data.8	82
	.data.8	82
	.data.8	79
	.data.8	82
	.data.8	33
	.data.8	33
	.space	1
L_BubbleSort_8:
	.data.8	89
	.data.8	69
	.data.8	83
	.space	1
L_BubbleSort_9:
	.data.8	13
	.data.8	10
	.data.8	78
	.data.8	117
	.data.8	109
	.data.8	98
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	111
	.data.8	102
	.data.8	32
	.data.8	99
	.data.8	121
	.data.8	99
	.data.8	108
	.data.8	101
	.data.8	115
	.data.8	32
	.data.8	110
	.data.8	101
	.data.8	101
	.data.8	100
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L_BubbleSort_10:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xEFFC/0x10000)
	lhi	%r29, $(0xEFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xEFFC%0x10000)
	ori	%r29, %r29, $(0xEFFC%0x10000)
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

	;.addressing	Word
printArray:
L_BubbleSort_11:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_1	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_12:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$7	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_13	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_14	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_13:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_2	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_14:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( _array	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( _array	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_printInt	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_3	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_3	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 30 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_15	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_19	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_15:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$( _array	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$( _array	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$( _array	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$( _array	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	mult	%r1,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	mult	%r3,%r3,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r5,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sleu	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_16	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_17	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_16:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_18	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_17:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_18:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_19:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_20:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_4	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_4	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_21	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_21:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
bubbleSort:
	nop
	nop
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	sw	-4(%r29), %r30
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29), %r31
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30, %r29, $4
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29, %r29, $(4 + 10*4)
	nop
	nop
	nop
	nop
	nop
	; Save Registers 
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29), %r1			; r1 is used for comparing-results and for temporary stuff.
	nop
	nop
	nop
	nop
	nop
	sw	4(%r29), %r2			; r2 is the parameter value "startIndex".
	nop
	nop
	nop
	nop
	nop
	sw	8(%r29), %r3			; r3 is the parameter value "endIndex".
	nop
	nop
	nop
	nop
	nop
	sw	12(%r29), %r4			; r4 is the loop-variable "i".
	nop
	nop
	nop
	nop
	nop
	sw	16(%r29), %r5			; r5 is the loop-variable "j".
	nop
	nop
	nop
	nop
	nop
	sw	20(%r29), %r6			; r6 is the loop-end "innerLoopEnd".
	nop
	nop
	nop
	nop
	nop
	sw	24(%r29), %r7			; r7 is "next_j".
	nop
	nop
	nop
	nop
	nop
	sw	28(%r29), %r8			; r8 is "value_j".
	nop
	nop
	nop
	nop
	nop
	sw	32(%r29), %r9			; r9 is "value_next_j".
	nop
	nop
	nop
	nop
	nop
	sw	36(%r29), %r10			; r10 is the start address of 'array'.
	nop
	nop
	nop
	nop
	nop

	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r3, %r2, $0
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r2, %r1, $0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r10, %r10, $(_array&0xffff)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r6, %r3, $2			; innerLoopEnd = array+endIndex;
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r6, %r6, %r10
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4, %r2, %r0			; i = startIndex;
	nop
	nop
	nop
	nop
	nop
	;; #############################
	;; # ADD YOUR IMPLEMENTATION HERE
	;; #############################

	;ntej(ext_j) is incremented by 4 rather than 1, since j is used
	;       to address words (4 bytes). Therefore innerLoopEnd has to be
	;       decremented by 4 as well.

	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r6, %r3, $2				; innerLoopEnd = 4*endIndex
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%r6, %r6, %r10				; innerLoopEnd = array+4*endIndex
	nop
	nop
	nop
	nop
	nop
	add	%r4, %r0, %r2				; i = startIndex;
	nop
	nop
	nop
	nop
	nop
	slli	%r2, %r2, $2				; startIndex = startIndex*4
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
_outer_loop:	; while (i < endIndex) {
	nop
	nop
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%r5, %r2, %r10				;   j = array+4*startIndex;
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%r8, 0(%r5)					;   value_j = *j;
	nop
	nop
	nop
	nop
	nop
	add	%r7, %r0, %r5				;   next_j = j;
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
_inner_loop:	;   while (j < innerLoopEnd) {
	nop
	nop
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	addi	%r7, %r7, $4				;     next_j+=4;
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%r9, 0(%r7)				;     value_next_j = *next_j;
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	sltu	%r1, %r9, %r8				;     if (value_next_j < value_j) {
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	beqz	%r1, _end_if
	nop
	nop
	nop
	nop
	nop

	; Automatically 6 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r9					;       *j = value_next_j;
	nop
	nop
	nop
	nop
	nop
	sw	0(%r7), %r8					;       *next_j = value_j;
	nop
	nop
	nop
	nop
	nop
	add	%r9, %r0, %r8				;       value_next_j = value_j
	nop
	nop
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
_end_if:	;     }
	nop
	nop
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%r5, %r0, %r7				;     j = next_j;
	nop
	nop
	nop
	nop
	nop
	add	%r8, %r0, %r9				;     value_j = value_next_j;
	nop
	nop
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sltu	%r1, %r5, %r6				;   } (r1 = j < innerLoopEnd)
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%r1, _inner_loop			;   }
	nop
	nop
	nop
	nop
	nop

	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r6, %r6, $4				;   innerLoopEnd--;
	nop
	nop
	nop
	nop
	nop
	addi	%r4, %r4, $1				;   i++;
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	sltu	%r1, %r4, %r3				; } (r1 = i < endIndex)
	nop
	nop
	nop
	nop
	nop
	; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%r1, _outer_loop			; }
	nop
	nop
	nop
	nop
	nop



	;; #############################
	;; # ADD YOUR IMPLEMENTATION HERE
	;; #############################

	; Restore the saved registers
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lw	%r1,   0(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r2,   4(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r3,   8(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r4,  12(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r5,  16(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r6,  20(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r7,  24(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r8,  28(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r9,  32(%r29)
	nop
	nop
	nop
	nop
	nop
	lw	%r10, 36(%r29)

	nop
	nop
	nop
	nop
	nop
	lw	%r31, 4(%r30)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29, %r29, $(12 + 10*4)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30, 0(%r30)      
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
main:
L_BubbleSort_31:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	nop
	nop
	; Automatically 55 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_5	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_5	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop


	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0x300
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1, 0(%r1)
	nop
	nop
	nop
	nop
	nop



	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0x300
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1, 0(%r1)
	nop
	nop
	nop
	nop
	nop

	; Automatically 30 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$19	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop


	; Automatically 40 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0x300
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1, 0(%r1)
	nop
	nop
	nop
	nop
	nop

	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%r1,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_6	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_6	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 30 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_33	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_32:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_7	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_7	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_34	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_33:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_8	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_8	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_34:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_9	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_9	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_printInt	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_BubbleSort_10	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_BubbleSort_10	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_35	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_BubbleSort_35:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 19 NOPs removed by reduceNOPs.sh
	.section	.data
L_lib_uart_1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
u_print:
L_lib_uart_2:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop


	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2, $0x100
	nop
	nop
	nop
	nop
	nop

	; Automatically 30 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_3:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_uart_4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_4:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r3)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_5:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_6	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_6:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
u_printInt:
L_lib_uart_7:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_8:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
u_printHex:
L_lib_uart_9:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	intToHexStr	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_lib_uart_1	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_lib_uart_1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_10	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_10:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
u_getbytes:
L_lib_uart_11:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$24	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r2	
	nop
	nop
	nop
	nop
	nop


	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1, $0x100
	nop
	nop
	nop
	nop
	nop

	; Automatically 25 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_12:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_uart_13	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_14	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_13:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r4,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_14:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_15	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_15:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 19 NOPs removed by reduceNOPs.sh
	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
	.addressing	Word
	;.addressing	Word
storeByte:
L_loadStoreByte_1:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r1,%r3,$3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r4,%r3,$3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%r5,%r5,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$255	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	and	%r1,%r3,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r3,%r4,$3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r4,%r5,$3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sll	%r2,%r2,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sll	%r3,%r6,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	and	%r28,%r28,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
storeShort:
L_loadStoreByte_3:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$( _temp	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$( _temp	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r5,%r3,$2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r6,$( _temp	/0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$( _temp	%0x10000)
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	and	%r1,%r3,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r4),%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r4,0(%r6)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%r3,%r5,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	srai	%r4,%r4,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r3,%r3,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sll	%r3,%r6,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slli	%r4,%r4,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sra	%r2,%r2,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	and	%r28,%r28,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 19 NOPs removed by reduceNOPs.sh
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
intToStr:
L_string_1:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$56	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_2:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%r1,%r0,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$45	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_3:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_6	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_4:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_5:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_6	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_7	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_6:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-48(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$10	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	MOD	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$48	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-48(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$10	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	div	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_7:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-48(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_9	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_8:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-48(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-48(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_7	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_9:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-44(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_10	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_10:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
intToHexStr:
L_string_11:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$40	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_12:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_13	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_13:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-24(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_15	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_14	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_14:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-24(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_15	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_19	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_15:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_16:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_17:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sge	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_18	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_24	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_18:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-32(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-32(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_17	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_19:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_20:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$15	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$10	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_21	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_22	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_21:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r2,%r1,$48	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_23	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_22:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r2,%r1,$55	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_23:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	srai	%r1,%r1,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_12	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_16	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_24:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-32(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_25	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_25:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strlen:
L_string_26:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_27:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_29	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_28:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_27	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_29:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_30:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strcat:
L_string_31:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_32:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_33	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_34	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_33:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_34:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_35:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_36	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_37	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_36:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r28,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_35	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_37:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_38:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strncat:
L_string_39:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_40:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_41	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_42	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_41:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_40	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_42:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_43:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_44	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_44:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_45	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_45:
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r28,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_43	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_46:
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_47	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_47:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strcpy:
L_string_48:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_49:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_50	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_51	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_50:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r28,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_49	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_51:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_52	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_52:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strncpy:
L_string_53:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_54:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_55	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_55:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-12(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_56	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_56:
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r3,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r28,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_54	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_57:
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_58	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_58:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strcmp:
L_string_59:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 45 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r4,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r6	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_60:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_61	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_61:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r4,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_62	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_62:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r3,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_63	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_66	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_63:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_64:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_65	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_69	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_65:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_66:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r3,%r4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_67	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_68	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_67:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_68:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r4,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r6	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_60	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_69:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r4,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_70	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_71	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_70:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_71:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_72:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
strncmp:
L_string_73:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r4,%r2,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r4)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_74:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_75	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_75:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r5	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_76	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_76:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r4,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_77	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_80	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_77:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_78	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_82	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_78:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_79:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_80:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%r27,%r4,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_81	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_84	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_81:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_82:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_83	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_74	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_83:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_84:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r3	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_85	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_86	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_85:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_86:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_87	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_88	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_87:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_88:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_89:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
tolower:
L_string_90:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$65	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_91	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_91:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$90	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_92	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_92:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r28,%r1,$32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_94	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_93:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r28,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_94	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_94:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
toupper:
L_string_95:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$97	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_96	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_96:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$122	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_97	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_97:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%r28,%r1,$-32	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_99	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_98:
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%r28,%r1,%r0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_99	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_99:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
isdigit:
L_string_100:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%r29),%r31	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_101	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_101:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$57	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_102	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_102:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_104	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_103:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_string_104	
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
L_string_104:
	nop
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop
	jr	%r31	
	nop
	nop
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
