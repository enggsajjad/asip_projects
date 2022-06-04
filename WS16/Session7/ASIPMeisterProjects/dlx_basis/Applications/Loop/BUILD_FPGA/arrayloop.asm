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
	.section	.text
	.addressing	Word
main:
L_arrayloop_1:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 72 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_arrayloop_2:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _input2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _input2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( _resultAvg	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	mult	%GPR7,%GPR1,%GPR7	
	nop
	nop
	nop
	nop
	nop
	div	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	mult	%GPR8,%GPR1,%GPR8	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR7	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR9,%GPR8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR3)	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR5)	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$65535	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$-65536	
	nop
	nop
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$16	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	srai	%GPR3,%GPR3,$16	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	and	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	nop
	nop
	andi	%GPR3,%GPR3,$65535	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$( _resultSwap	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	or	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR7,%GPR1,%GPR7	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR6,%GPR4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$( _input2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$( _input2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	mult	%GPR8,%GPR1,%GPR8	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR5,%GPR7	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR9,%GPR8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR3)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_arrayloop_3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_arrayloop_3:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _resultMax	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _resultMax	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	nop
	j	L_arrayloop_5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_arrayloop_4:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _resultMax	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _resultMax	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_arrayloop_5:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _input2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _input2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_arrayloop_6	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_7	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_arrayloop_6:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _resultMin	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _resultMin	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	nop
	j	L_arrayloop_8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_arrayloop_7:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input2	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _resultMin	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _resultMin	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_arrayloop_8:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$( _resultRor	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$( _resultRor	%0x10000)
	nop
	nop
	nop
	nop
	nop
	mult	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR5,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	nop
	mult	%GPR4,%GPR1,%GPR7	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$20	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR6,%GPR4	
	nop
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	nop
	slli	%GPR3,%GPR3,$28	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	or	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR2	
	nop
	nop
	nop
	nop
	nop
	slt	%GPR27,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_arrayloop_2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_arrayloop_9:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_arrayloop_10:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
	nop
