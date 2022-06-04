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
L1:
	.data.8	105
	.data.8	49
	.data.8	58
	.data.8	9
	.space	1
L2:
	.data.8	9
	.data.8	105
	.data.8	50
	.data.8	58
	.data.8	9
	.space	1
L3:
	.data.8	9
	.data.8	97
	.data.8	118
	.data.8	103
	.data.8	58
	.data.8	9
	.space	1
L4:
	.data.8	9
	.data.8	115
	.data.8	119
	.data.8	97
	.data.8	112
	.data.8	58
	.data.8	9
	.space	1
L5:
	.data.8	9
	.data.8	109
	.data.8	97
	.data.8	120
	.data.8	58
	.data.8	9
	.space	1
L6:
	.data.8	9
	.data.8	109
	.data.8	105
	.data.8	110
	.data.8	58
	.data.8	9
	.space	1
L7:
	.data.8	9
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	58
	.data.8	9
	.space	1
L8:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
main:
L9:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
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
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L10:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-4(%GPR30)	
	LI	%GPR1, *_input1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	LI	%GPR2, *_input2	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	mult	%GPR3,%GPR5,%GPR3	
	add	%GPR9,%GPR5,%GPR0	
	LI	%GPR4, *_resultAvg	
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	LI	%GPR2, *_input1	
	mult	%GPR6,%GPR9,%GPR6	
	div	%GPR1,%GPR1,%GPR5	
	add	%GPR3,%GPR4,%GPR3	
	LI	%GPR8, *_input1	
	mult	%GPR7,%GPR9,%GPR7	
	add	%GPR2,%GPR2,%GPR6	
	sw	0(%GPR3),%GPR1	
	NOP		;;32,34
	NOP		;;32,34
	add	%GPR4,%GPR8,%GPR7	
	add	%GPR6,%GPR9,%GPR0	
	lw	%GPR1,0(%GPR2)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lw	%GPR2,0(%GPR4)	
	NOP		;;38,40
	NOP		;;38,40
	slli	%GPR1,%GPR1,$16	
	mult	%GPR3,%GPR6,%GPR3	
	srai	%GPR2,%GPR2,$16	
	lhi	%GPR4,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$-65536	
	NOP		;;43,46
	NOP		;;43,46
	NOP		;;43,46
	andi	%GPR2,%GPR2,$65535	
	and	%GPR1,%GPR1,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	LI	%GPR5, *_resultSwap	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	LI	%GPR4, *_input1	
	or	%GPR1,%GPR1,%GPR2	
	mult	%GPR6,%GPR9,%GPR6	
	add	%GPR3,%GPR5,%GPR3	
	LI	%GPR8, *_input2	
	mult	%GPR7,%GPR9,%GPR7	
	add	%GPR2,%GPR4,%GPR6	
	sw	0(%GPR3),%GPR1	
	NOP		;;58,60
	NOP		;;58,60
	add	%GPR4,%GPR8,%GPR7	
	NOP		;;60,62
	NOP		;;60,62
	lw	%GPR1,0(%GPR2)	
	NOP		;;62,64
	NOP		;;62,64
	lw	%GPR2,0(%GPR4)	
	NOP		;;64,68
	NOP		;;64,68
	NOP		;;64,68
	NOP		;;64,68
	sgt	%GPR27,%GPR1,%GPR2	
	NOP		;;68,72
	NOP		;;68,72
	NOP		;;68,72
	NOP		;;68,72
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_input1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	LI	%GPR2, *_resultMax	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	j	L13	
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_input2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	LI	%GPR2, *_resultMax	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L13:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-4(%GPR30)	
	LI	%GPR1, *_input1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	LI	%GPR2, *_input2	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	slt	%GPR27,%GPR1,%GPR2	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	bnez	%GPR27,L14	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_input1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	LI	%GPR2, *_resultMin	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	j	L16	
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_input2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	LI	%GPR2, *_resultMin	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L16:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR6,-4(%GPR30)	
	LI	%GPR1, *_input1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	LI	%GPR2, *_input1	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR6,%GPR3	
	mult	%GPR4,%GPR6,%GPR4	
	LI	%GPR5, *_resultRor	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	mult	%GPR3,%GPR3,%GPR6	
	srai	%GPR1,%GPR1,$4	
	slli	%GPR2,%GPR2,$28	
	NOP		;;21,23
	NOP		;;21,23
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,-4(%GPR30)	
	or	%GPR1,%GPR1,%GPR2	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
	addi	%GPR5,%GPR5,$1	
	sw	0(%GPR3),%GPR1	
	NOP		;;29,32
	NOP		;;29,32
	NOP		;;29,32
	add	%GPR1,%GPR5,%GPR0	
	sw	-4(%GPR30),%GPR5	
	NOP		;;33,36
	NOP		;;33,36
	NOP		;;33,36
	slt	%GPR27,%GPR1,%GPR4	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L17:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L18:
	LI	%GPR1, *L1	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;5,7
	NOP		;;5,7
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_input1	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;29,31
	NOP		;;29,31
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_input2	
	NOP		;;32,34
	NOP		;;32,34
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L3	
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;53,55
	NOP		;;53,55
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_resultAvg	
	NOP		;;56,58
	NOP		;;56,58
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;58,62
	NOP		;;58,62
	NOP		;;58,62
	NOP		;;58,62
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;66,70
	NOP		;;66,70
	NOP		;;66,70
	NOP		;;66,70
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L4	
	NOP		;;72,77
	NOP		;;72,77
	NOP		;;72,77
	NOP		;;72,77
	NOP		;;72,77
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;77,79
	NOP		;;77,79
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_resultSwap	
	NOP		;;80,82
	NOP		;;80,82
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L5	
	NOP		;;96,101
	NOP		;;96,101
	NOP		;;96,101
	NOP		;;96,101
	NOP		;;96,101
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;101,103
	NOP		;;101,103
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_resultMax	
	NOP		;;104,106
	NOP		;;104,106
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;106,110
	NOP		;;106,110
	NOP		;;106,110
	NOP		;;106,110
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;114,118
	NOP		;;114,118
	NOP		;;114,118
	NOP		;;114,118
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L6	
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;125,127
	NOP		;;125,127
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_resultMin	
	NOP		;;128,130
	NOP		;;128,130
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;134,138
	NOP		;;134,138
	NOP		;;134,138
	NOP		;;134,138
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;138,142
	NOP		;;138,142
	NOP		;;138,142
	NOP		;;138,142
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L7	
	NOP		;;144,149
	NOP		;;144,149
	NOP		;;144,149
	NOP		;;144,149
	NOP		;;144,149
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;149,151
	NOP		;;149,151
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_resultRor	
	NOP		;;152,154
	NOP		;;152,154
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;154,158
	NOP		;;154,158
	NOP		;;154,158
	NOP		;;154,158
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;158,162
	NOP		;;158,162
	NOP		;;158,162
	NOP		;;158,162
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;162,166
	NOP		;;162,166
	NOP		;;162,166
	NOP		;;162,166
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L8	
	NOP		;;168,173
	NOP		;;168,173
	NOP		;;168,173
	NOP		;;168,173
	NOP		;;168,173
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-4(%GPR30)	
	NOP		;;174,178
	NOP		;;174,178
	NOP		;;174,178
	NOP		;;174,178
	addi	%GPR1,%GPR1,$1	
	NOP		;;178,182
	NOP		;;178,182
	NOP		;;178,182
	NOP		;;178,182
	add	%GPR2,%GPR1,%GPR0	
	sw	-4(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;184,188
	NOP		;;184,188
	NOP		;;184,188
	NOP		;;184,188
	slt	%GPR27,%GPR2,%GPR1	
	NOP		;;188,192
	NOP		;;188,192
	NOP		;;188,192
	NOP		;;188,192
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
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
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
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
