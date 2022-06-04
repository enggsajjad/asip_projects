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
main:
L1:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input1	
	LI	%GPR3, *_input2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	LI	%GPR5, *_resultAvg	
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	mult	%GPR4,%GPR1,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	add	%GPR2,%GPR2,%GPR3	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	LI	%GPR3, *_input1	
	mult	%GPR7,%GPR1,%GPR7	
	div	%GPR2,%GPR2,%GPR6	
	add	%GPR4,%GPR5,%GPR4	
	LI	%GPR9, *_input1	
	mult	%GPR8,%GPR1,%GPR8	
	add	%GPR3,%GPR3,%GPR7	
	sw	0(%GPR4),%GPR2	
	NOP		;;30,32
	NOP		;;30,32
	add	%GPR5,%GPR9,%GPR8	
	NOP		;;32,34
	NOP		;;32,34
	lw	%GPR2,0(%GPR3)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR3,0(%GPR5)	
	lhi	%GPR5,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$-65536	
	slli	%GPR2,%GPR2,$16	
	NOP		;;38,40
	NOP		;;38,40
	srai	%GPR3,%GPR3,$16	
	NOP		;;40,42
	NOP		;;40,42
	mult	%GPR4,%GPR1,%GPR4	
	and	%GPR2,%GPR2,%GPR5	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	andi	%GPR3,%GPR3,$65535	
	LI	%GPR6, *_resultSwap	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	LI	%GPR5, *_input1	
	or	%GPR2,%GPR2,%GPR3	
	mult	%GPR7,%GPR1,%GPR7	
	add	%GPR4,%GPR6,%GPR4	
	LI	%GPR9, *_input2	
	mult	%GPR8,%GPR1,%GPR8	
	add	%GPR3,%GPR5,%GPR7	
	sw	0(%GPR4),%GPR2	
	NOP		;;55,57
	NOP		;;55,57
	add	%GPR5,%GPR9,%GPR8	
	NOP		;;57,59
	NOP		;;57,59
	lw	%GPR2,0(%GPR3)	
	NOP		;;59,61
	NOP		;;59,61
	lw	%GPR3,0(%GPR5)	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	sgt	%GPR27,%GPR2,%GPR3	
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input1	
	LI	%GPR3, *_resultMax	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR2,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR2	
	j	L5	
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input2	
	LI	%GPR3, *_resultMax	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR2,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR2	
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input1	
	LI	%GPR3, *_input2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	slt	%GPR27,%GPR2,%GPR3	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input1	
	LI	%GPR3, *_resultMin	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR2,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR2	
	j	L8	
	NOP		
	NOP		
	NOP		
L7:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input2	
	LI	%GPR3, *_resultMin	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR2,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR2	
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_input1	
	LI	%GPR3, *_input1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,7
	NOP		;;5,7
	LI	%GPR6, *_resultRor	
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	mult	%GPR4,%GPR1,%GPR7	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$20	
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	addi	%GPR1,%GPR1,$1	
	add	%GPR4,%GPR6,%GPR4	
	srai	%GPR2,%GPR2,$4	
	slli	%GPR3,%GPR3,$28	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	or	%GPR2,%GPR2,%GPR3	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	0(%GPR4),%GPR2	
	slt	%GPR27,%GPR1,%GPR5	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
