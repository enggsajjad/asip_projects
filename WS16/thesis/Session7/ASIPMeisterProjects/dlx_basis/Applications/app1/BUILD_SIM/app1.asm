	.section	.data
	;.global	_input1
	.align	4
_input1:
	.data.32	321
	.data.32	51
	.data.32	890345
	.data.32	75
	.data.32	78
	.data.32	7
	.data.32	34478651
	.data.32	2342
	.data.32	568
	.data.32	7894578
	.data.32	7
	.data.32	3461
	.data.32	1235
	.data.32	3467753
	.data.32	75
	.data.32	685
	.data.32	79
	.data.32	45568564
	.data.32	35
	.data.32	7625
	;.global	_input2
	.align	4
_input2:
	.data.32	45
	.data.32	765
	.data.32	12
	.data.32	78
	.data.32	74
	.data.32	42
	.data.32	1253
	.data.32	236377
	.data.32	5683
	.data.32	79
	.data.32	86
	.data.32	643
	.data.32	52314576
	.data.32	3461
	.data.32	57
	.data.32	785
	.data.32	79
	.data.32	47
	.data.32	3461
	.data.32	2513
	;.global	_resultAvg
	.align	4
_resultAvg:
	.space	80
	;.global	_resultSwap
	.align	4
_resultSwap:
	.space	80
	;.global	_resultMax
	.align	4
_resultMax:
	.space	80
	;.global	_resultMin
	.align	4
_resultMin:
	.space	80
	;.global	_resultRor
	.align	4
_resultRor:
	.space	80
L_arrayloop_1:
	.data.8	105
	.data.8	49
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_2:
	.data.8	9
	.data.8	105
	.data.8	50
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_3:
	.data.8	9
	.data.8	97
	.data.8	118
	.data.8	103
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_4:
	.data.8	9
	.data.8	115
	.data.8	119
	.data.8	97
	.data.8	112
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_5:
	.data.8	9
	.data.8	109
	.data.8	97
	.data.8	120
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_6:
	.data.8	9
	.data.8	109
	.data.8	105
	.data.8	110
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_7:
	.data.8	9
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_8:
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
main:
L_arrayloop_9:
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
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
L_arrayloop_10:
	nop	;;0,2
	nop	;;0,2
	lw	%r5,-4(%r30)	
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
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
	lhi	%r2,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _input2	%0x10000)
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	mult	%r4,%r5,%r4	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%r1,%r1,%r3	
	add	%r2,%r2,%r4	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	nop	;;14,16
	nop	;;14,16
	lw	%r1,0(%r1)	
	lw	%r2,0(%r2)	
	mult	%r3,%r5,%r3	
	add	%r9,%r5,%r0	
	lhi	%r4,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%r4,%r4,$( _resultAvg	%0x10000)
	add	%r1,%r1,%r2	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$4	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$2	
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$4	
	lhi	%r2,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _input1	%0x10000)
	mult	%r6,%r9,%r6	
	div	%r1,%r1,%r5	
	add	%r3,%r4,%r3	
	lhi	%r8,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r8,%r8,$( _input1	%0x10000)
	mult	%r7,%r9,%r7	
	add	%r2,%r2,%r6	
	sw	0(%r3),%r1	
	nop	;;32,34
	nop	;;32,34
	add	%r4,%r8,%r7	
	add	%r6,%r9,%r0	
	lw	%r1,0(%r2)	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lw	%r2,0(%r4)	
	nop	;;38,40
	nop	;;38,40
	slli	%r1,%r1,$16	
	mult	%r3,%r6,%r3	
	srai	%r2,%r2,$16	
	lhi	%r4,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$-65536	
	nop	;;43,46
	nop	;;43,46
	nop	;;43,46
	andi	%r2,%r2,$65535	
	and	%r1,%r1,%r4	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$4	
	lhi	%r5,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	ori	%r5,%r5,$( _resultSwap	%0x10000)
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$4	
	lhi	%r4,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r4,%r4,$( _input1	%0x10000)
	or	%r1,%r1,%r2	
	mult	%r6,%r9,%r6	
	add	%r3,%r5,%r3	
	lhi	%r8,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r8,%r8,$( _input2	%0x10000)
	mult	%r7,%r9,%r7	
	add	%r2,%r4,%r6	
	sw	0(%r3),%r1	
	nop	;;58,60
	nop	;;58,60
	add	%r4,%r8,%r7	
	nop	;;60,62
	nop	;;60,62
	lw	%r1,0(%r2)	
	nop	;;62,64
	nop	;;62,64
	lw	%r2,0(%r4)	
	nop	;;64,68
	nop	;;64,68
	nop	;;64,68
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r1,%r2	
	nop	;;68,72
	nop	;;68,72
	nop	;;68,72
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_arrayloop_11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_11:
	lw	%r5,-4(%r30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r2,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _resultMax	%0x10000)
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	nop	;;8,10
	nop	;;8,10
	mult	%r4,%r5,%r4	
	nop	;;10,12
	nop	;;10,12
	add	%r1,%r1,%r3	
	nop	;;12,14
	nop	;;12,14
	add	%r2,%r2,%r4	
	nop	;;14,16
	nop	;;14,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r1	
	j	L_arrayloop_13	
	nop
	nop
	nop
L_arrayloop_12:
	lw	%r5,-4(%r30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%r1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input2	%0x10000)
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r2,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _resultMax	%0x10000)
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	nop	;;8,10
	nop	;;8,10
	mult	%r4,%r5,%r4	
	nop	;;10,12
	nop	;;10,12
	add	%r1,%r1,%r3	
	nop	;;12,14
	nop	;;12,14
	add	%r2,%r2,%r4	
	nop	;;14,16
	nop	;;14,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r1	
	nop
	nop
	nop
L_arrayloop_13:
	nop	;;0,2
	nop	;;0,2
	lw	%r5,-4(%r30)	
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
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
	lhi	%r2,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _input2	%0x10000)
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	mult	%r4,%r5,%r4	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%r1,%r1,%r3	
	add	%r2,%r2,%r4	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%r1,0(%r1)	
	lw	%r2,0(%r2)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_arrayloop_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_14:
	lw	%r5,-4(%r30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r2,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _resultMin	%0x10000)
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	nop	;;8,10
	nop	;;8,10
	mult	%r4,%r5,%r4	
	nop	;;10,12
	nop	;;10,12
	add	%r1,%r1,%r3	
	nop	;;12,14
	nop	;;12,14
	add	%r2,%r2,%r4	
	nop	;;14,16
	nop	;;14,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r1	
	j	L_arrayloop_16	
	nop
	nop
	nop
L_arrayloop_15:
	lw	%r5,-4(%r30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%r1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input2	%0x10000)
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r2,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _resultMin	%0x10000)
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r5,%r3	
	nop	;;8,10
	nop	;;8,10
	mult	%r4,%r5,%r4	
	nop	;;10,12
	nop	;;10,12
	add	%r1,%r1,%r3	
	nop	;;12,14
	nop	;;12,14
	add	%r2,%r2,%r4	
	nop	;;14,16
	nop	;;14,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r1	
	nop
	nop
	nop
L_arrayloop_16:
	nop	;;0,2
	nop	;;0,2
	lw	%r6,-4(%r30)	
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
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
	lhi	%r2,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _input1	%0x10000)
	nop	;;6,8
	nop	;;6,8
	mult	%r3,%r6,%r3	
	mult	%r4,%r6,%r4	
	lhi	%r5,$( _resultRor	/0x10000)
	nop
	nop
	nop
	ori	%r5,%r5,$( _resultRor	%0x10000)
	nop	;;10,12
	nop	;;10,12
	add	%r1,%r1,%r3	
	add	%r2,%r2,%r4	
	lw	%r3,-4(%r30)	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$4	
	lw	%r1,0(%r1)	
	lw	%r2,0(%r2)	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$20	
	mult	%r3,%r3,%r6	
	srai	%r1,%r1,$4	
	slli	%r2,%r2,$28	
	nop	;;21,23
	nop	;;21,23
	add	%r3,%r5,%r3	
	lw	%r5,-4(%r30)	
	or	%r1,%r1,%r2	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	addi	%r5,%r5,$1	
	sw	0(%r3),%r1	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	add	%r1,%r5,%r0	
	sw	-4(%r30),%r5	
	nop	;;33,36
	nop	;;33,36
	nop	;;33,36
	slt	%r27,%r1,%r4	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_arrayloop_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_17:
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
	sw	-4(%r30),%r1	
	nop
	nop
	nop
L_arrayloop_18:
	lhi	%r1,$( L_arrayloop_1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_1	%0x10000)
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
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input1	%0x10000)
	nop	;;8,10
	nop	;;8,10
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_2	%0x10000)
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _input2	%0x10000)
	nop	;;32,34
	nop	;;32,34
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_3	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_3	%0x10000)
	nop	;;48,53
	nop	;;48,53
	nop	;;48,53
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _resultAvg	%0x10000)
	nop	;;56,58
	nop	;;56,58
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;58,62
	nop	;;58,62
	nop	;;58,62
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;62,66
	nop	;;62,66
	nop	;;62,66
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;66,70
	nop	;;66,70
	nop	;;66,70
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_4	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_4	%0x10000)
	nop	;;72,77
	nop	;;72,77
	nop	;;72,77
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _resultSwap	%0x10000)
	nop	;;80,82
	nop	;;80,82
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;82,86
	nop	;;82,86
	nop	;;82,86
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;86,90
	nop	;;86,90
	nop	;;86,90
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;90,94
	nop	;;90,94
	nop	;;90,94
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_5	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_5	%0x10000)
	nop	;;96,101
	nop	;;96,101
	nop	;;96,101
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _resultMax	%0x10000)
	nop	;;104,106
	nop	;;104,106
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;106,110
	nop	;;106,110
	nop	;;106,110
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;110,114
	nop	;;110,114
	nop	;;110,114
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;114,118
	nop	;;114,118
	nop	;;114,118
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_6	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_6	%0x10000)
	nop	;;120,125
	nop	;;120,125
	nop	;;120,125
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _resultMin	%0x10000)
	nop	;;128,130
	nop	;;128,130
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;130,134
	nop	;;130,134
	nop	;;130,134
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;134,138
	nop	;;134,138
	nop	;;134,138
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;138,142
	nop	;;138,142
	nop	;;138,142
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_7	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_7	%0x10000)
	nop	;;144,149
	nop	;;144,149
	nop	;;144,149
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
	lw	%r3,-4(%r30)	
	lhi	%r1,$( _resultRor	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _resultRor	%0x10000)
	nop	;;152,154
	nop	;;152,154
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop	;;154,158
	nop	;;154,158
	nop	;;154,158
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r2,%r3,%r2	
	nop	;;158,162
	nop	;;158,162
	nop	;;158,162
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	;;162,166
	nop	;;162,166
	nop	;;162,166
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
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
	lhi	%r1,$( L_arrayloop_8	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_arrayloop_8	%0x10000)
	nop	;;168,173
	nop	;;168,173
	nop	;;168,173
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
	nop	;;174,178
	nop	;;174,178
	nop	;;174,178
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;178,182
	nop	;;178,182
	nop	;;178,182
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	sw	-4(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$20	
	nop	;;184,188
	nop	;;184,188
	nop	;;184,188
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	;;188,192
	nop	;;188,192
	nop	;;188,192
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_arrayloop_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_19:
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
	j	L_arrayloop_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_20:
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
	.section	.data
L_lib_lcd_dlxsim_1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
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
	jr	%r31	
	nop
	nop
	nop
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	nop
	nop
	nop


	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r2, $0x100
	nop
	nop
	nop

	; Automatically 3 NOPs removed by reduceNOPs.sh
L_lib_uart_3:
	lb	%r3,0(%r1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_uart_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_4:
	add	%r3,%r1,%r0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r3)	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	0(%r2),%r3	
	add	%r1,%r1,%r4	
	j	L_lib_uart_3	
	nop
	nop
	nop
L_lib_uart_5:
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
	j	L_lib_uart_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_6:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
u_printInt:
L_lib_uart_7:
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
	jal	u_print	
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
	j	L_lib_uart_8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_8:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
u_printHex:
L_lib_uart_9:
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
	lhi	%r1,$( L_lib_uart_1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_lib_uart_1	%0x10000)
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	u_print	
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
	jal	u_print	
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
	j	L_lib_uart_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_10:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
u_getbytes:
L_lib_uart_11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	sw	-8(%r30),%r2	
	nop
	nop
	nop


	lhi	%r1, $0x100
	nop
	nop
	nop

	; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
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
	sw	-16(%r30),%r1	
	nop
	nop
	nop
L_lib_uart_12:
	lw	%r1,-16(%r30)	
	lw	%r2,-8(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_uart_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_13:
	lw	%r1,-4(%r30)	
	nop	;;0,2
	nop	;;0,2
	lw	%r2,-12(%r30)	
	nop	;;2,4
	nop	;;2,4
	add	%r4,%r1,%r0	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	lw	%r2,0(%r2)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%r3,%r4,%r3	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r3	
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
	lw	%r1,-16(%r30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	j	L_lib_uart_12	
	nop
	nop
	nop
L_lib_uart_14:
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
	j	L_lib_uart_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_uart_15:
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
	jr	%r31	
	nop
	nop
	nop
	.section	.data
	.section	.text
	.addressing	Word
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
