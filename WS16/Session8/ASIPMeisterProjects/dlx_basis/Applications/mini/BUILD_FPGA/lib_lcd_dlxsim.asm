	.section	.data
L_lib_lcd_dlxsim_1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
t_printInt:
L_lib_lcd_dlxsim_2:
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
	jal	t_print	
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
	j	L_lib_lcd_dlxsim_3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_3:
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
t_printHex:
L_lib_lcd_dlxsim_4:
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
	lhi	%GPR1,$( L_lib_lcd_dlxsim_1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_dlxsim_1	%0x10000)
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
	jal	t_print	
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
	jal	t_print	
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
	j	L_lib_lcd_dlxsim_5	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_5:
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
checkbuffer:
L_lib_lcd_dlxsim_6:
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
	j	L_lib_lcd_dlxsim_7	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_7:
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
getbytes:
L_lib_lcd_dlxsim_8:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_9:
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
sendcommand:
L_lib_lcd_dlxsim_10:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_11	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_11:
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
t_print:
L_lib_lcd_dlxsim_12:
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
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
	nop
	nop


				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR2, $0x200
	nop
	nop
	nop
	nop
	nop

				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_13:
	nop
	nop
	nop
	nop
	nop
	lb	%GPR2,0(%GPR1)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_dlxsim_14	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_15	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_14:
	nop
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lb	%GPR2,0(%GPR2)	
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
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	


	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	nop
	j	L_lib_lcd_dlxsim_13	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_15:
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
	j	L_lib_lcd_dlxsim_16	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_16:
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
t_cursor:
L_lib_lcd_dlxsim_17:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_18	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_18:
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
t_enable:
L_lib_lcd_dlxsim_19:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_20:
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
g_print:
L_lib_lcd_dlxsim_21:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_22	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_22:
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
g_drawrect:
L_lib_lcd_dlxsim_23:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_24	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_24:
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
g_drawline:
L_lib_lcd_dlxsim_25:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_26	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_26:
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
g_makebar:
L_lib_lcd_dlxsim_27:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_28	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_28:
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
g_setbar:
L_lib_lcd_dlxsim_29:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_30	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_30:
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
g_makeswitch:
L_lib_lcd_dlxsim_31:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_32	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_32:
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
g_makemenubutton:
L_lib_lcd_dlxsim_33:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_34	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_34:
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
g_makeradiogroup:
L_lib_lcd_dlxsim_35:
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
				; Automatically 84 NOPs removed by reduceNOPs.sh
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
	j	L_lib_lcd_dlxsim_36	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_36:
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
d_clear:
L_lib_lcd_dlxsim_37:
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
	j	L_lib_lcd_dlxsim_38	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_38:
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
