	.section	.data
L_lib_uart_1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
u_print:
L_lib_uart_2:
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


				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR2, $0x100
	nop
	nop
	nop
	nop
	nop

				; Automatically 36 NOPs removed by reduceNOPs.sh
L_lib_uart_3:
	nop
	nop
	nop
	nop
	nop
	lb	%GPR3,0(%GPR1)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_uart_4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_4:
	nop
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lb	%GPR3,0(%GPR3)	
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
	ori	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR3	
	nop
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	nop
	j	L_lib_uart_3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_lib_uart_5:
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
	j	L_lib_uart_6	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_6:
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
				; Automatically 24 NOPs removed by reduceNOPs.sh
u_printInt:
L_lib_uart_7:
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
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
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
	j	L_lib_uart_8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_8:
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
				; Automatically 24 NOPs removed by reduceNOPs.sh
u_printHex:
L_lib_uart_9:
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
	subi	%GPR29,%GPR29,$20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$12	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	intToHexStr	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_uart_1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_uart_1	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
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
	j	L_lib_uart_10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_10:
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
				; Automatically 24 NOPs removed by reduceNOPs.sh
u_getbytes:
L_lib_uart_11:
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
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	nop


				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR1, $0x100
	nop
	nop
	nop
	nop
	nop

				; Automatically 30 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
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
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_lib_uart_12:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_uart_13	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_uart_14	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_13:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
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
				; Automatically 18 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	j	L_lib_uart_12	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_lib_uart_14:
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
	j	L_lib_uart_15	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_uart_15:
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
