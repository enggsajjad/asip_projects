	.section	.data
	;.global	_array_ori
	.align	4
_array_ori:
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
L_Bubblesort_Init_1:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	58
	.space	1
L_Bubblesort_Init_2:
	.data.8	13
	.data.8	10
	.space	1
L_Bubblesort_Init_3:
	.data.8	32
	.space	1
L_Bubblesort_Init_4:
	.data.8	13
	.data.8	10
	.space	1
L_Bubblesort_Init_5:
	.data.8	73
	.data.8	110
	.data.8	105
	.data.8	116
	.data.8	105
	.data.8	97
	.data.8	108
	.data.8	105
	.data.8	115
	.data.8	101
	.data.8	32
	.data.8	97
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L_Bubblesort_Init_6:
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
L_Bubblesort_Init_7:
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
L_Bubblesort_Init_8:
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
L_Bubblesort_Init_9:
	.data.8	89
	.data.8	69
	.data.8	83
	.space	1
L_Bubblesort_Init_10:
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
L_Bubblesort_Init_11:
	.data.8	13
	.data.8	10
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

	;.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word
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
	jal	exit_dummy
	nop
	nop

	;.addressing	Word
initArray:
L_Bubblesort_Init_12:
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
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
L_Bubblesort_Init_13:
	nop	;;0,2
	nop	;;0,2
	lhi	%r2,$( _array_ori	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _array_ori	%0x10000)
	lhi	%r3,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r3,%r3,$( _array	%0x10000)
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$4	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%r4,%r1,%r4	
	mult	%r5,%r1,%r5	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$20	
	nop	;;10,12
	nop	;;10,12
	add	%r2,%r2,%r4	
	addi	%r1,%r1,$1	
	add	%r3,%r3,%r5	
	nop	;;14,16
	nop	;;14,16
	lw	%r2,0(%r2)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r3),%r2	
	slt	%r27,%r1,%r6	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_14:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
printArray:
L_Bubblesort_Init_15:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_1	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
L_Bubblesort_Init_16:
	lw	%r1,-8(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$7	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r1,%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_17:
	lhi	%r1,$( L_Bubblesort_Init_2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_2	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_18:
	lw	%r3,-8(%r30)	
	lhi	%r1,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _array	%0x10000)
	nop	;;2,4
	nop	;;2,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop	;;16,21
	nop	;;16,21
	nop	;;16,21
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_3	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_3	%0x10000)
	nop	;;22,27
	nop	;;22,27
	nop	;;22,27
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_23	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_19:
	lw	%r1,-8(%r30)	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%r2,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _array	%0x10000)
	subi	%r1,%r1,$1	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	lhi	%r5,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r5,%r5,$( _array	%0x10000)
	nop	;;7,9
	nop	;;7,9
	mult	%r1,%r1,%r3	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r3,-8(%r30)	
	add	%r1,%r2,%r1	
	nop	;;14,17
	nop	;;14,17
	nop	;;14,17
	mult	%r3,%r3,%r4	
	lw	%r1,0(%r1)	
	nop	;;18,21
	nop	;;18,21
	nop	;;18,21
	add	%r2,%r5,%r3	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sleu	%r27,%r1,%r2	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_20:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	j	L_Bubblesort_Init_22	
	nop
	nop
	nop
L_Bubblesort_Init_21:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
L_Bubblesort_Init_22:
	lw	%r2,-4(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
L_Bubblesort_Init_23:
	lw	%r1,-8(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$20	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_24:
	lhi	%r1,$( L_Bubblesort_Init_4	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_4	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_25:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
bubbleSort:
	sw	-4(%r29), %r30
	nop
	nop
	nop
	sw	0(%r29), %r31
	nop
	nop
	nop
	subui	%r30, %r29, $4
	nop
	nop
	nop
	subi	%r29, %r29, $(4 + 10*4)
	nop
	nop
	nop

	; Save Registers 
	sw	0(%r29), %r1			; r1 is used for comparing-results and for temporary stuff.
	sw	4(%r29), %r2			; r2 is the parameter value "startIndex".
	sw	8(%r29), %r3			; r3 is the parameter value "endIndex".
	sw	12(%r29), %r4			; r4 is the loop-variable "i".
	sw	16(%r29), %r5			; r5 is the loop-variable "j".
	sw	20(%r29), %r6			; r6 is the loop-end "innerLoopEnd".
	sw	24(%r29), %r7			; r7 is "next_j".
	sw	28(%r29), %r8			; r8 is "value_j".
	sw	32(%r29), %r9			; r9 is "value_next_j".
	sw	36(%r29), %r10			; r10 is the start address of 'array'.
	nop

	addi	%r3, %r2, $0
	addi	%r2, %r1, $0	
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
	addui	%r10, %r10, $(_array&0xffff)
	slli	%r6, %r3, $2			; innerLoopEnd = array+endIndex;
	nop
	nop
	nop
	add	%r6, %r6, %r10
	add	%r4, %r2, %r0			; i = startIndex;
	nop
	nop
	nop

	; Begin bubble sort (bgeu)

outer_loop_begin:
	bgeu	%r4, %r3, outer_loop_end		; while (i < endIndex) {
	nop
	slli	%r1, %r2, $2			;   j = array+startIndex;
	nop
	nop
	nop
	addu	%r5, %r10, %r1
	nop
	nop
	nop
	lw	%r8, 0(%r5)				;   value_j = *j;
	addu	%r7, %r0, %r5			;   next_j = j;
inner_loop_begin:
	bgeu	%r5, %r6, inner_loop_end		;   while (j < innerLoopEnd) {
	nop
	nop
	addui	%r7, %r7, $4			;     next_j++;
	nop
	nop
	nop
	lw	%r9, 0(%r7)				;     value_next_j = *next_j;
	nop
	nop
	nop
	bgeu	%r9, %r8, endif 			;     if (value_next_j < value_j) {
	nop
	sw	0(%r5), %r9				;       *j = value_next_j;
	sw	0(%r7), %r8				;       *next_j = value_j;
	addu	%r1, %r0, %r8			;       tmp = value_j;
	addu	%r8, %r0, %r9			;       value_j = value_next_j;
	nop
	nop
	addu	%r9, %r0, %r1			;       value_next_j = tmp;
endif:	;     }
	addu	%r5, %r0, %r7			;     j = next_j;
	nop
	nop
	addu	%r8, %r0, %r9			;     value_j = value_next_j;  
	j	inner_loop_begin			;   }
	nop
inner_loop_end:
	subui	%r6, %r6, $4			;   innerLoopEnd--;
	addui	%r4, %r4, $1			;   i++;
	nop
	j	outer_loop_begin			; }
	nop
outer_loop_end:

	; End bubble sort (bgeu)

	; Restore the saved registers
	lw	%r1,   0(%r29)
	lw	%r2,   4(%r29)
	lw	%r3,   8(%r29)
	lw	%r4,  12(%r29)
	lw	%r5,  16(%r29)
	lw	%r6,  20(%r29)
	lw	%r7,  24(%r29)
	lw	%r8,  28(%r29)
	lw	%r9,  32(%r29)
	lw	%r10, 36(%r29)

	lw	%r31, 4(%r30)
	nop
	nop
	nop
	addui	%r29, %r29, $(12 + 10*4)
	nop
	nop
	nop
	lw	%r30, 0(%r30)      
	nop
	nop
	nop
	nop
	jr	%r31
	nop
	nop
main:
L_Bubblesort_Init_35:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_5	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_5	%0x10000)
	nop	;;2,7
	nop	;;2,7
	nop	;;2,7
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	initArray	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_6	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_6	%0x10000)
	nop	;;10,15
	nop	;;10,15
	nop	;;10,15
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh


	lhi	%r1,$0x300
	nop
	nop
	nop
	lw	%r1, 0(%r1)
	nop
	nop
	nop

	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	sw	-4(%r30),%r1	
	nop	;;19,21
	nop	;;19,21
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$19	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh


	lhi	%r1,$0x300
	nop
	nop
	nop
	lw	%r1, 0(%r1)
	nop
	nop
	nop

	lw	%r2,-4(%r30)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%r1,%r1,%r2	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_7	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_7	%0x10000)
	sw	-8(%r30),%r28	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%r2,-8(%r30)	
	nop	;;42,45
	nop	;;42,45
	nop	;;42,45
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;45,49
	nop	;;45,49
	nop	;;45,49
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_Bubblesort_Init_36	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_37	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_36:
	lhi	%r1,$( L_Bubblesort_Init_8	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_8	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_38	
	nop
	nop
	nop
L_Bubblesort_Init_37:
	lhi	%r1,$( L_Bubblesort_Init_9	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_9	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_38:
	lhi	%r1,$( L_Bubblesort_Init_10	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_10	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_Bubblesort_Init_11	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_Bubblesort_Init_11	%0x10000)
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Bubblesort_Init_39	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_Bubblesort_Init_39:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.data
L_lib_lcd_dlxsim_1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
	;.addressing	Word
t_printInt:
L_lib_lcd_dlxsim_2:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_3:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_printHex:
L_lib_lcd_dlxsim_4:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	subi	%r2,%r30,$12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToHexStr	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_lib_lcd_dlxsim_1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_lib_lcd_dlxsim_1	%0x10000)
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_5:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
checkbuffer:
L_lib_lcd_dlxsim_6:
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
	j	L_lib_lcd_dlxsim_7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_7:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_dlxsim_8:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_9:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_dlxsim_10:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_11:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_dlxsim_12:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$12	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh


	lhi	%r2, $0x200
	nop
	nop
	nop

	sw	-4(%r30),%r2	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r2,-4(%r30)	
	nop
	nop
	nop
L_lib_lcd_dlxsim_13:
	lb	%r2,0(%r1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_dlxsim_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_14:
	add	%r2,%r1,%r0	
	nop	;;0,2
	nop	;;0,2
	lw	%r3,-4(%r30)	
	nop	;;2,4
	nop	;;2,4
	lb	%r2,0(%r2)	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r4	


	nop
	nop
	nop
	sw	0(%r3), %r2

	j	L_lib_lcd_dlxsim_13	
	nop
	nop
	nop
L_lib_lcd_dlxsim_15:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_16:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_dlxsim_17:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_18:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_dlxsim_19:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_20:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_dlxsim_21:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_22:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_dlxsim_23:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_24:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_dlxsim_25:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_26	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_26:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_dlxsim_27:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_28:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_dlxsim_29:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_30	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_30:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_dlxsim_31:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_32:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_dlxsim_33:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_34	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_34:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_dlxsim_35:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_36	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_36:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_dlxsim_37:
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
	j	L_lib_lcd_dlxsim_38	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_38:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
	.addressing	Word
	;.addressing	Word
	;.addressing	Word
storeByte:
L_loadStoreByte_1:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	andi	%r1,%r3,$3	
	nop	;;4,6
	nop	;;4,6
	andi	%r4,%r3,$3	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$3	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	sub	%r5,%r5,%r1	
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$255	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	and	%r1,%r3,%r1	
	slli	%r3,%r4,$3	
	slli	%r4,%r5,$3	
	nop	;;18,20
	nop	;;18,20
	lw	%r28,0(%r1)	
	sll	%r2,%r2,%r3	
	sll	%r3,%r6,%r4	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r28,%r28,%r3	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
storeShort:
L_loadStoreByte_3:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%r4,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%r4,%r4,$( _temp	%0x10000)
	andi	%r5,%r3,$2	
	nop	;;5,7
	nop	;;5,7
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	lhi	%r6,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%r6,%r6,$( _temp	%0x10000)
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	and	%r1,%r3,%r1	
	andi	%r3,%r3,$1	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	lw	%r28,0(%r1)	
	sw	0(%r4),%r5	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%r4,0(%r6)	
	sub	%r3,%r5,%r3	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$65535	
	nop	;;22,24
	nop	;;22,24
	srai	%r4,%r4,$1	
	slli	%r3,%r3,$4	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	sll	%r3,%r6,%r3	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	slli	%r4,%r4,$4	
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop	;;33,36
	nop	;;33,36
	nop	;;33,36
	sra	%r2,%r2,%r4	
	and	%r28,%r28,%r3	
	nop	;;37,41
	nop	;;37,41
	nop	;;37,41
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop	;;41,45
	nop	;;41,45
	nop	;;41,45
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
	;.addressing	Word
intToStr:
L_string_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	sw	-40(%r30),%r2	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;8,10
	nop	;;8,10
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;10,12
	nop	;;10,12
	sw	-44(%r30),%r2	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r2	
	lw	%r2,-36(%r30)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_2:
	lw	%r1,-36(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%r1,%r0,%r1	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$45	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	-36(%r30),%r1	
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	j	L_string_5	
	nop
	nop
	nop
L_string_3:
	lw	%r2,-36(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_4:
	lw	%r1,-40(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
L_string_5:
	lw	%r2,-36(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_6:
	subi	%r1,%r30,$32	
	lw	%r3,-48(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$10	
	lw	%r3,-36(%r30)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	MOD	%r2,%r3,%r2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-48(%r30)	
	nop	;;17,19
	nop	;;17,19
	lw	%r2,-36(%r30)	
	nop	;;19,21
	nop	;;19,21
	addi	%r1,%r1,$1	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$10	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%r1,%r2,%r1	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	j	L_string_5	
	nop
	nop
	nop
L_string_7:
	lw	%r2,-48(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_8:
	lw	%r1,-48(%r30)	
	lw	%r3,-44(%r30)	
	subi	%r2,%r30,$32	
	nop	;;2,4
	nop	;;2,4
	subi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	lw	%r1,-40(%r30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	lw	%r3,-48(%r30)	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	nop	;;22,27
	nop	;;22,27
	nop	;;22,27
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	j	L_string_7	
	nop
	nop
	nop
L_string_9:
	lw	%r1,-40(%r30)	
	lw	%r2,-44(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_10:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
intToHexStr:
L_string_11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$40	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	sw	-20(%r30),%r2	
	sw	-24(%r30),%r3	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
L_string_12:
	lw	%r2,-16(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_13:
	lw	%r2,-24(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_14:
	lw	%r1,-28(%r30)	
	lw	%r2,-24(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_15:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
L_string_16:
	lw	%r1,-28(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
	nop
	nop
	nop
L_string_17:
	lw	%r2,-28(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_18:
	lw	%r1,-20(%r30)	
	lw	%r3,-32(%r30)	
	subi	%r2,%r30,$12	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%r1,%r1,%r3	
	lw	%r3,-28(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	nop	;;14,19
	nop	;;14,19
	nop	;;14,19
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	lw	%r1,-32(%r30)	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;33,37
	nop	;;33,37
	nop	;;33,37
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
	j	L_string_17	
	nop
	nop
	nop
L_string_19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
L_string_20:
	lw	%r1,-16(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$15	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$10	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	slt	%r27,%r1,%r3	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_21:
	addi	%r2,%r1,$48	
	lw	%r1,-28(%r30)	
	subi	%r3,%r30,$12	
	nop	;;2,6
	nop	;;2,6
	nop	;;2,6
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_23	
	nop
	nop
	nop
L_string_22:
	addi	%r2,%r1,$55	
	lw	%r1,-28(%r30)	
	subi	%r3,%r30,$12	
	nop	;;2,6
	nop	;;2,6
	nop	;;2,6
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_string_23:
	lw	%r1,-16(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%r1,%r1,$4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	lw	%r1,-28(%r30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	sw	-28(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$8	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_24:
	lw	%r1,-20(%r30)	
	lw	%r2,-32(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_25:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strlen:
L_string_26:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
L_string_27:
	add	%r2,%r1,%r0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r2)	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%r1,%r1,%r3	
	sne	%r27,%r2,%r4	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_29	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_28:
	addi	%r28,%r28,$1	
	j	L_string_27	
	nop
	nop
	nop
L_string_29:
	j	L_string_30	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_30:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcat:
L_string_31:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	add	%r2,%r1,%r0	
	lb	%r1,0(%r1)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
L_string_32:
	lw	%r2,-8(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_34	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_33:
	lw	%r1,-12(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	lb	%r1,0(%r1)	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	j	L_string_32	
	nop
	nop
	nop
L_string_34:
	lw	%r1,-4(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	lb	%r1,0(%r1)	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
L_string_35:
	lw	%r2,-8(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_36	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_37	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_36:
	lw	%r1,-12(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r2	
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	add	%r1,%r28,%r0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	j	L_string_35	
	nop
	nop
	nop
L_string_37:
	lw	%r1,-12(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_string_38:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncat:
L_string_39:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	sw	-8(%r30),%r2	
	sw	-12(%r30),%r3	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	sw	-16(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;11,13
	nop	;;11,13
	sw	-20(%r30),%r2	
	lw	%r2,-4(%r30)	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
L_string_40:
	lw	%r2,-16(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_41	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_42	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_41:
	lw	%r1,-4(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	lb	%r1,0(%r1)	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	j	L_string_40	
	nop
	nop
	nop
L_string_42:
	lw	%r1,-8(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	lb	%r1,0(%r1)	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
L_string_43:
	lw	%r2,-16(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_44	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_44:
	lw	%r1,-20(%r30)	
	lw	%r2,-12(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	slt	%r27,%r1,%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_45	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_45:
	nop	;;0,2
	nop	;;0,2
	lw	%r1,-4(%r30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	lw	%r3,-4(%r30)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	add	%r1,%r28,%r0	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	j	L_string_43	
	nop
	nop
	nop
L_string_46:
	nop	;;0,2
	nop	;;0,2
	lw	%r1,-4(%r30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_47	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_47:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcpy:
L_string_48:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	lb	%r1,0(%r1)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
L_string_49:
	lw	%r2,-8(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_50	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_51	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_50:
	lw	%r1,-4(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-12(%r30)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	add	%r1,%r28,%r0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	j	L_string_49	
	nop
	nop
	nop
L_string_51:
	lw	%r1,-4(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_52	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_52:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncpy:
L_string_53:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	sw	-8(%r30),%r2	
	sw	-12(%r30),%r3	
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lb	%r1,0(%r1)	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	sw	-16(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;12,14
	nop	;;12,14
	sw	-20(%r30),%r2	
	lw	%r2,-8(%r30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
L_string_54:
	lw	%r2,-16(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_55	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_55:
	lw	%r1,-20(%r30)	
	lw	%r2,-12(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	slt	%r27,%r1,%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_56:
	nop	;;0,2
	nop	;;0,2
	lw	%r1,-4(%r30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	lw	%r3,-4(%r30)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	add	%r1,%r28,%r0	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	j	L_string_54	
	nop
	nop
	nop
L_string_57:
	nop	;;0,2
	nop	;;0,2
	lw	%r1,-4(%r30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r28,-4(%r30)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_58	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_58:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcmp:
L_string_59:
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
	; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r4)	
	add	%r4,%r2,%r0	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$1	
	nop	;;10,12
	nop	;;10,12
	lb	%r4,0(%r4)	
	add	%r2,%r2,%r5	
	add	%r1,%r1,%r6	
	nop
	nop
	nop
L_string_60:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_61	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_61:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r4,%r5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_62	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_62:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	slt	%r27,%r3,%r4	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_63	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_66	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_63:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_64:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sne	%r27,%r3,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_65	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_69	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_65:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_66:
	sgt	%r27,%r3,%r4	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_68	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_67:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_68:
	add	%r4,%r1,%r0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r4)	
	add	%r4,%r2,%r0	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$1	
	nop	;;7,9
	nop	;;7,9
	lb	%r4,0(%r4)	
	add	%r1,%r1,%r5	
	add	%r2,%r2,%r6	
	j	L_string_60	
	nop
	nop
	nop
L_string_69:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r4,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_70	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_71	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_70:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_71:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_72:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncmp:
L_string_73:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r4,%r1,%r0	
	nop
	nop
	nop
	lb	%r1,0(%r4)	
	add	%r4,%r2,%r0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r2,0(%r4)	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
L_string_74:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_75	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_75:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_76	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_76:
	addi	%r4,%r4,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	slt	%r27,%r4,%r3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_77	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_80	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_77:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	slt	%r27,%r1,%r2	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_78	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_82	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_78:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_79:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
L_string_80:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	seq	%r27,%r4,%r3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_81	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_84	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_81:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_82:
	sgt	%r27,%r1,%r2	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_83	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_74	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_83:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_84:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_85	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_86	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_85:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_86:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_87	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_88	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_87:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_88:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_89:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
tolower:
L_string_90:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$65	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_91	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_91:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$90	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_92	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_92:
	addi	%r28,%r1,$32	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	j	L_string_94	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_93:
	add	%r28,%r1,%r0	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	j	L_string_94	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_94:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
toupper:
L_string_95:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$97	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_96	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_96:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$122	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_97	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_97:
	addi	%r28,%r1,$-32	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	j	L_string_99	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_98:
	add	%r28,%r1,%r0	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	j	L_string_99	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_99:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
isdigit:
L_string_100:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%r27,%r1,%r2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_101	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_101:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$57	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%r27,%r1,%r2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_string_102	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_102:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	j	L_string_104	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_103:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	j	L_string_104	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_string_104:
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
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
exit_dummy:
	nop
	nop
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
exit:
	nop
	nop
