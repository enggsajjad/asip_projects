; Replaced lhi GPRX, $0 + ori GPRX, $Y with addi GPRX, GPR0, $Y
; Removed obviously unnecessary NOPs and reorderd some independent instructions.
; No aggresive optimizations, e.g reordering instructions across functions or loops.

	.section	.data
	.align	4
L_adpcm_1:
	.data.32	-1
	.data.32	-1
	.data.32	-1
	.data.32	-1
	.data.32	2
	.data.32	4
	.data.32	6
	.data.32	8
	.data.32	-1
	.data.32	-1
	.data.32	-1
	.data.32	-1
	.data.32	2
	.data.32	4
	.data.32	6
	.data.32	8
	.align	4
L_adpcm_2:
	.data.32	7
	.data.32	8
	.data.32	9
	.data.32	10
	.data.32	11
	.data.32	12
	.data.32	13
	.data.32	14
	.data.32	16
	.data.32	17
	.data.32	19
	.data.32	21
	.data.32	23
	.data.32	25
	.data.32	28
	.data.32	31
	.data.32	34
	.data.32	37
	.data.32	41
	.data.32	45
	.data.32	50
	.data.32	55
	.data.32	60
	.data.32	66
	.data.32	73
	.data.32	80
	.data.32	88
	.data.32	97
	.data.32	107
	.data.32	118
	.data.32	130
	.data.32	143
	.data.32	157
	.data.32	173
	.data.32	190
	.data.32	209
	.data.32	230
	.data.32	253
	.data.32	279
	.data.32	307
	.data.32	337
	.data.32	371
	.data.32	408
	.data.32	449
	.data.32	494
	.data.32	544
	.data.32	598
	.data.32	658
	.data.32	724
	.data.32	796
	.data.32	876
	.data.32	963
	.data.32	1060
	.data.32	1166
	.data.32	1282
	.data.32	1411
	.data.32	1552
	.data.32	1707
	.data.32	1878
	.data.32	2066
	.data.32	2272
	.data.32	2499
	.data.32	2749
	.data.32	3024
	.data.32	3327
	.data.32	3660
	.data.32	4026
	.data.32	4428
	.data.32	4871
	.data.32	5358
	.data.32	5894
	.data.32	6484
	.data.32	7132
	.data.32	7845
	.data.32	8630
	.data.32	9493
	.data.32	10442
	.data.32	11487
	.data.32	12635
	.data.32	13899
	.data.32	15289
	.data.32	16818
	.data.32	18500
	.data.32	20350
	.data.32	22385
	.data.32	24623
	.data.32	27086
	.data.32	29794
	.data.32	32767
	;.global	_adpcmData
_adpcmData:
	.data.8	59
	.data.8	9
	.data.8	8
	.data.8	89
	.data.8	74
	.data.8	27
	.data.8	138
	.data.8	24
	.data.8	40
	.data.8	10
	.data.8	63
	.data.8	77
	.data.8	75
	.data.8	58
	.data.8	17
	.data.8	147
	.data.8	161
	.data.8	140
	.data.8	63
	.data.8	59
	.data.8	59
	.data.8	44
	.data.8	42
	.data.8	33
	.data.8	4
	.data.8	145
	.data.8	153
	.data.8	146
	.data.8	162
	.data.8	63
	.data.8	79
	.data.8	42
	.data.8	25
	.data.8	26
	.data.8	58
	.data.8	33
	.data.8	182
	.data.8	168
	.data.8	29
	.data.8	75
	.data.8	32
	.data.8	147
	.data.8	178
	.data.8	154
	.data.8	78
	.data.8	75
	.data.8	57
	.space	1
	.data.8	161
	.data.8	9
	.data.8	73
	.data.8	25
	.data.8	139
	.data.8	29
	.data.8	91
	.data.8	90
	.data.8	60
	.data.8	43
	.data.8	16
	.data.8	8
	.data.8	44
	.data.8	59
	.data.8	2
	.data.8	164
	.data.8	168
	.data.8	12
	.data.8	42
	.data.8	74
	.data.8	123
	.data.8	75
	.data.8	130
	.data.8	195
	.data.8	144
	.data.8	75
	.data.8	76
	.data.8	26
	.data.8	8
	.data.8	17
	.data.8	145
	.data.8	154
	.data.8	61
	.data.8	73
	.data.8	1
	.data.8	177
	.data.8	10
	.data.8	122
	.data.8	91
	.data.8	43
	.data.8	24
	.data.8	129
	.data.8	168
	.data.8	141
	.data.8	122
	.data.8	89
	.data.8	43
	.data.8	45
	.space	1
	.data.8	148
	.data.8	179
	.data.8	144
	.data.8	9
	.data.8	41
	.data.8	43
	.data.8	76
	.data.8	32
	.data.8	146
	.data.8	202
	.data.8	47
	.data.8	75
	.data.8	72
	.space	1
	.data.8	152
	.data.8	10
	.data.8	40
	.data.8	1
	.data.8	144
	.data.8	9
	.data.8	11
	.data.8	12
	.data.8	41
	.data.8	65
	.data.8	16
	.data.8	172
	.data.8	11
	.data.8	121
	.data.8	74
	.data.8	45
	.data.8	27
	.data.8	57
	.data.8	56
	.data.8	130
	.data.8	211
	.data.8	144
	.data.8	93
	.data.8	77
	.data.8	42
	.data.8	8
	.space	1
	.data.8	41
	.data.8	59
	.data.8	75
	.data.8	61
	.data.8	61
	.data.8	59
	.data.8	73
	.space	1
	.data.8	144
	.data.8	161
	.data.8	180
	.data.8	164
	.data.8	136
	.data.8	46
	.data.8	44
	.data.8	42
	.data.8	18
	.data.8	3
	.data.8	12
	.data.8	47
	.data.8	9
	.data.8	131
	.data.8	130
	.data.8	62
	.data.8	44
	.data.8	26
	.data.8	24
	.data.8	59
	.data.8	91
	.data.8	42
	.data.8	24
	.data.8	41
	.data.8	91
	.data.8	76
	.data.8	25
	.data.8	8
	.data.8	10
	.data.8	63
	.data.8	60
	.data.8	73
	.data.8	32
	.data.8	145
	.data.8	193
	.data.8	144
	.data.8	10
	.data.8	44
	.data.8	75
	.data.8	73
	.data.8	58
	.data.8	44
	.data.8	27
	.data.8	62
	.data.8	74
	.data.8	57
	.data.8	129
	.data.8	177
	.data.8	140
	.data.8	123
	.data.8	74
	.data.8	24
	.data.8	136
	.data.8	136
	.data.8	16
	.data.8	32
	.data.8	27
	.data.8	63
	.data.8	43
	.data.8	33
	.data.8	165
	.data.8	178
	.data.8	177
	.data.8	152
	.data.8	25
	.data.8	1
	.data.8	146
	.data.8	29
	.data.8	93
	.data.8	42
	.data.8	24
	.data.8	28
	.data.8	77
	.data.8	41
	.data.8	131
	.data.8	164
	.data.8	137
	.data.8	62
	.data.8	43
	.data.8	42
	.data.8	42
	.data.8	48
	.data.8	145
	.data.8	155
	.data.8	44
	.data.8	82
	.data.8	149
	.data.8	170
	.data.8	63
	.data.8	62
	.data.8	58
	.data.8	59
	.data.8	59
	.data.8	17
	.data.8	197
	.data.8	194
	.data.8	138
	.data.8	74
	.data.8	40
	.data.8	129
	.data.8	160
	.data.8	9
	.data.8	58
	.data.8	42
	.data.8	27
	.data.8	60
	.data.8	106
	.data.8	43
	.data.8	45
	.data.8	42
	.data.8	25
	.data.8	75
	.data.8	107
	.data.8	74
	.space	1
	.data.8	161
	.data.8	129
	.data.8	24
	.data.8	26
	.data.8	29
	.data.8	92
	.data.8	58
	.data.8	24
	.data.8	144
	.data.8	58
	.data.8	90
	.data.8	138
	.data.8	172
	.data.8	74
	.data.8	80
	.data.8	147
	.data.8	240
	.data.8	144
	.data.8	57
	.data.8	57
	.data.8	140
	.data.8	11
	.data.8	64
	.data.8	3
	.data.8	168
	.data.8	30
	.data.8	91
	.data.8	59
	.data.8	25
	.data.8	164
	.data.8	165
	.data.8	137
	.data.8	45
	.data.8	25
	.data.8	17
	.data.8	137
	.data.8	63
	.data.8	74
	.data.8	32
	.data.8	8
	.data.8	154
	.data.8	12
	.data.8	58
	.data.8	59
	.data.8	59
	.data.8	35
	.data.8	199
	.data.8	144
	.data.8	28
	.data.8	61
	.data.8	24
	.data.8	146
	.data.8	128
	.data.8	92
	.data.8	75
	.data.8	26
	.space	1
	.data.8	8
	.data.8	43
	.data.8	76
	.data.8	41
	.data.8	24
	.data.8	26
	.data.8	46
	.data.8	58
	.data.8	34
	.data.8	147
	.data.8	154
	.data.8	47
	.data.8	29
	.data.8	42
	.data.8	57
	.data.8	40
	.data.8	128
	.data.8	137
	.data.8	92
	.data.8	59
	.data.8	24
	.data.8	8
	.data.8	90
	.data.8	89
	.data.8	11
	.data.8	31
	.data.8	61
	.data.8	57
	.data.8	24
	.data.8	9
	.data.8	27
	.data.8	41
	.data.8	18
	.data.8	24
	.data.8	77
	.data.8	60
	.data.8	26
	.data.8	137
	.data.8	42
	.data.8	123
	.data.8	75
	.data.8	8
	.data.8	162
	.data.8	146
	.data.8	57
	.data.8	74
	.data.8	45
	.data.8	63
	.data.8	77
	.data.8	58
	.data.8	16
	.data.8	129
	.data.8	152
	.data.8	29
	.data.8	26
	.data.8	17
	.data.8	132
	.data.8	136
	.data.8	63
	.data.8	42
	.data.8	16
	.data.8	145
	.data.8	154
	.data.8	46
	.data.8	75
	.data.8	57
	.data.8	41
	.data.8	42
	.data.8	41
	.space	1
	.data.8	137
	.data.8	77
	.data.8	61
	.data.8	41
	.data.8	129
	.data.8	128
	.data.8	44
	.data.8	59
	.data.8	58
	.data.8	58
	.data.8	10
	.data.8	27
	.data.8	122
	.data.8	90
	.data.8	26
	.data.8	45
	.data.8	75
	.data.8	57
	.data.8	130
	.data.8	162
	.data.8	155
	.data.8	30
	.data.8	91
	.data.8	105
	.data.8	1
	.data.8	194
	.data.8	169
	.data.8	75
	.data.8	64
	.data.8	165
	.data.8	194
	.data.8	169
	.data.8	43
	.data.8	106
	.data.8	58
	.data.8	8
	.data.8	144
	.data.8	8
	.data.8	40
	.data.8	8
	.data.8	170
	.data.8	63
	.data.8	74
	.data.8	16
	.data.8	9
	.data.8	63
	.data.8	59
	.data.8	1
	.data.8	146
	.data.8	10
	.data.8	109
	.data.8	60
	.data.8	59
	.data.8	40
	.data.8	147
	.data.8	160
	.data.8	60
	.data.8	75
	.space	1
	.data.8	146
	.data.8	1
	.space	1
	.data.8	185
	.data.8	63
	.data.8	77
	.data.8	58
	.data.8	8
	.data.8	8
	.data.8	2
	.data.8	147
	.data.8	29
	.data.8	93
	.data.8	24
	.data.8	129
	.data.8	10
	.data.8	77
	.data.8	24
	.data.8	147
	.data.8	152
	.data.8	27
	.data.8	18
	.data.8	167
	.data.8	144
	.data.8	30
	.data.8	42
	.data.8	40
	.space	1
	.data.8	137
	.data.8	9
	.data.8	59
	.data.8	75
	.data.8	61
	.data.8	76
	.data.8	75
	.data.8	42
	.data.8	24
	.space	1
	.data.8	152
	.data.8	168
	.data.8	17
	.data.8	120
	.data.8	44
	.data.8	45
	.data.8	42
	.data.8	32
	.data.8	130
	.data.8	137
	.data.8	46
	.data.8	44
	.data.8	25
	.data.8	58
	.data.8	74
	.data.8	26
	.data.8	30
	.data.8	59
	.data.8	48
	.data.8	130
	.data.8	11
	.data.8	122
	.data.8	40
	.data.8	177
	.data.8	200
	.data.8	58
	.data.8	121
	.data.8	26
	.data.8	10
	.data.8	43
	.data.8	122
	.data.8	43
	.data.8	26
	.space	1
	.data.8	74
	.data.8	58
	.data.8	147
	.data.8	196
	.data.8	9
	.data.8	63
	.data.8	28
	.data.8	59
	.data.8	57
	.space	1
	.data.8	128
	.data.8	108
	.data.8	91
	.data.8	25
	.data.8	144
	.data.8	128
	.data.8	40
	.data.8	56
	.data.8	9
	.data.8	169
	.data.8	178
	.data.8	24
	.data.8	124
	.data.8	107
	.data.8	25
	.space	1
	.data.8	44
	.data.8	61
	.data.8	24
	.data.8	24
	.data.8	59
	.data.8	60
	.data.8	61
	.data.8	75
	.data.8	58
	.space	1
	.data.8	8
	.data.8	62
	.data.8	44
	.data.8	43
	.data.8	75
	.data.8	90
	.data.8	24
	.data.8	147
	.data.8	195
	.data.8	177
	.data.8	29
	.data.8	108
	.data.8	58
	.data.8	24
	.data.8	146
	.data.8	136
	.data.8	44
	.data.8	42
	.space	1
	.data.8	8
	.data.8	44
	.data.8	26
	.data.8	24
	.data.8	41
	.data.8	91
	.data.8	41
	.data.8	166
	.data.8	196
	.data.8	161
	.data.8	27
	.data.8	77
	.data.8	42
	.data.8	146
	.data.8	180
	.data.8	145
	.data.8	41
	.data.8	58
	.data.8	30
	.data.8	63
	.data.8	59
	.data.8	58
	.data.8	41
	.data.8	9
	.data.8	16
	.data.8	148
	.data.8	161
	.data.8	138
	.data.8	41
	.data.8	2
	.data.8	137
	.data.8	59
	.data.8	73
	.data.8	26
	.data.8	31
	.data.8	31
	.data.8	43
	.data.8	91
	.data.8	91
	.data.8	58
	.data.8	24
	.data.8	128
	.data.8	9
	.data.8	43
	.data.8	1
	.data.8	146
	.data.8	91
	.data.8	123
	.data.8	24
	.data.8	178
	.data.8	200
	.data.8	62
	.data.8	72
	.data.8	3
	.data.8	178
	.data.8	141
	.data.8	61
	.data.8	40
	.data.8	128
	.data.8	144
	.data.8	128
	.data.8	17
	.data.8	27
	.data.8	94
	.data.8	74
	.data.8	40
	.data.8	144
	.data.8	169
	.data.8	24
	.data.8	35
	.data.8	161
	.data.8	143
	.data.8	94
	.data.8	57
	.data.8	1
	.data.8	179
	.section	.text
	.addressing	Word
adpcm_decoder:
L_adpcm_3:
	nop
	nop
	nop
	sw	-4(%GPR13),%GPR14	
	sw	0(%GPR13),%GPR15	
	subui	%GPR14,%GPR13,$4	
	subi	%GPR13,%GPR13,$20	
	nop
	nop
	sw	-4(%GPR14),%GPR2
	lhi	%GPR4,$0
	lhi	%GPR3,$0	
	lhi	%GPR6,$0
	lhi	%GPR7,$0
	lhi	%GPR8,$0
	ori	%GPR3,%GPR3,$7	
	j	L_adpcm_6	
	nop
	nop
	nop
L_adpcm_4:
	lhi	%GPR5, $(40000004/0x10000)
	andi	%GPR2,%GPR4,$65535
	nop
	nop
	ori	%GPR5, %GPR5, $(40000004%0x10000)
	nop
	nop
	nop
	sw	0(%GPR5), %GPR2
	nop
	nop
	nop
L_adpcm_5:
	lw	%GPR2,-4(%GPR14)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	addi	%GPR2,%GPR2,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	sw	-4(%GPR14),%GPR2	
	nop
	nop
	nop
L_adpcm_6:
	lw	%GPR5,-4(%GPR14)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	sgt	%GPR11,%GPR5,%GPR0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_7	
	nop
	j	L_adpcm_32	
	nop
	nop
	nop
L_adpcm_7:
	sne	%GPR11,%GPR8,%GPR0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_8
	nop
	j	L_adpcm_9	
	nop
	nop
	nop
L_adpcm_8:
	andi	%GPR2,%GPR7,$15	
	j	L_adpcm_10	
	nop
	nop
	nop
L_adpcm_9:
	addi	%GPR5,%GPR0,$1
	lbu	%GPR7,0(%GPR1)
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR1,%GPR5	
	srai	%GPR2,%GPR7,$4	
	nop	;;5,8
	nop
	nop
	andi	%GPR2,%GPR2,$15	
L_adpcm_10:
	seq	%GPR11,%GPR8,%GPR0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_11	
	lhi	%GPR9,$0
	j	L_adpcm_12	
	nop
	nop
	nop
L_adpcm_11:
	nop
	nop
	j	L_adpcm_13	
	ori	%GPR9,%GPR9,$1
	nop
	nop
L_adpcm_12:
L_adpcm_13:
	lhi	%GPR5,$( L_adpcm_1	/0x10000)
	slli	%GPR10,%GPR2,$2	
	nop
	add	%GPR8,%GPR9,%GPR0	
	ori	%GPR5,%GPR5,$( L_adpcm_1	%0x10000)
	nop	;;1,3
	nop	;;1,3
	nop	;;3,5
	add	%GPR10,%GPR5,%GPR10	
	nop	;;3,5
	nop	;;6,9
	nop	;;6,9
	lw	%GPR10,0(%GPR10)	
	nop	;;6,9
	nop	;;9,13
	nop	;;9,13
	add	%GPR6,%GPR6,%GPR10	
	nop	;;9,13
	nop	;;13,17
	nop	;;13,17
	slt	%GPR11,%GPR6,%GPR0	
	nop	;;13,17
	nop	;;17,21
	nop	;;17,21
	bnez	%GPR11,L_adpcm_14
	nop
	j	L_adpcm_15	
	nop
	nop
	nop
L_adpcm_14:
	lhi	%GPR6,$0
	j	L_adpcm_17	
	nop
	nop
	nop
L_adpcm_15:
	addi	%GPR5,%GPR0,$88	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	sgt	%GPR11,%GPR6,%GPR5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_16	
	nop
	j	L_adpcm_17	
	nop
	nop
	nop
L_adpcm_16:
	addi	%GPR6,%GPR0,$88
L_adpcm_17:
	andi	%GPR10,%GPR2,$7	
	add	%GPR12,%GPR0,%GPR0
	nop	;;0,4
	nop	;;0,4
	andi	%GPR5,%GPR10,$4		
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	-8(%GPR14),%GPR5	
	srai	%GPR5,%GPR3,$3	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR11,-8(%GPR14)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	sne	%GPR11,%GPR11,%GPR12	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	bnez	%GPR11,L_adpcm_18	
	nop
	j	L_adpcm_19	
	nop
	nop
	nop
L_adpcm_18:
	add	%GPR5,%GPR5,%GPR3
L_adpcm_19:
	andi	%GPR11,%GPR10,$2	
	lhi	%GPR12, $0	
	nop	;;0,4
	sw	-12(%GPR14),%GPR11	
	sne	%GPR11,%GPR11,%GPR0	
	nop
	nop	;;14,18
	nop	;;14,18
	bnez	%GPR11,L_adpcm_20	
	nop
	j	L_adpcm_21	
	nop
	nop
	nop
L_adpcm_20:
	srai	%GPR11,%GPR3,$1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	add	%GPR5,%GPR5,%GPR11
L_adpcm_21:
	andi	%GPR10,%GPR10,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	sne	%GPR11,%GPR10,%GPR0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_22	
	nop
	j	L_adpcm_23	
	nop
	nop
	nop
L_adpcm_22:
	srai	%GPR3,%GPR3,$2	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	add	%GPR5,%GPR5,%GPR3
L_adpcm_23:
	andi	%GPR2,%GPR2,$8	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	sne	%GPR11,%GPR2,%GPR0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_24	
	nop
	j	L_adpcm_25	
	nop
	nop
	nop
L_adpcm_24:
	sub	%GPR4,%GPR4,%GPR5	
	j	L_adpcm_26	
	nop
	nop
	nop
L_adpcm_25:
	add	%GPR4,%GPR4,%GPR5
L_adpcm_26:
	addi	%GPR2,%GPR0,$32767	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	sgt	%GPR11,%GPR4,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_27	
	nop
	j	L_adpcm_28	
	nop
	nop
	nop
L_adpcm_27:
	addi	%GPR4,%GPR0,$32767	
	j	L_adpcm_30	
	nop
	nop
	nop
L_adpcm_28:
	lhi	%GPR2,$65535	
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$-32768	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	slt	%GPR11,%GPR4,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	bnez	%GPR11,L_adpcm_29	
	nop
	j	L_adpcm_30	
	nop
	nop
	nop
L_adpcm_29:
	lhi	%GPR4,$65535	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$-32768
L_adpcm_30:
	lhi	%GPR3,$( L_adpcm_2	/0x10000)
	nop
	nop
	slli	%GPR5,%GPR6,$2
	ori	%GPR3,%GPR3,$( L_adpcm_2	%0x10000)	
	seq	%GPR11,%GPR9,%GPR0	
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR3,%GPR5	
	nop	;;6,10
	nop	;;6,10
	bnez	%GPR11,L_adpcm_31	
	lw	%GPR3,0(%GPR3)
	j	L_adpcm_4	
	nop
	nop
	nop
L_adpcm_31:
	lhi	%GPR5, $(40000008/0x10000)
	andi	%GPR2,%GPR4,$65535	
	nop
	nop
	ori	%GPR5, %GPR5, $(40000008%0x10000)
	nop
	nop
	nop
	j	L_adpcm_5	
	sw	0(%GPR5), %GPR2
	nop
	nop
	nop
L_adpcm_32:
	lhi	%GPR12,$0
L_adpcm_33:
	lw	%GPR15,4(%GPR14)	
	addui	%GPR13,%GPR14,$4	
	lw	%GPR14,0(%GPR14)	
	nop
	nop
	jr	%GPR15	
	nop
	nop
	nop
main:
L_adpcm_34:
	nop
	nop
	nop
	sw	-4(%GPR13),%GPR14	
	sw	0(%GPR13),%GPR15	
	subui	%GPR14,%GPR13,$4	
	subi	%GPR13,%GPR13,$8	
	nop
	nop
	nop
	lhi	%GPR1,$( _adpcmData	/0x10000)
	addi	%GPR2,%GPR0,$1300	
	subi	%GPR13,%GPR13,$8	
	nop
	ori	%GPR1,%GPR1,$( _adpcmData	%0x10000)
	nop
	nop
	nop
	jal	adpcm_decoder	
	nop
	addi	%GPR13,%GPR13,$8	
	lhi	%GPR12,$0
L_adpcm_35:
	nop
	nop
	nop
	lw	%GPR15,4(%GPR14)	
	addui	%GPR13,%GPR14,$4	
	lw	%GPR14,0(%GPR14)	
	nop
	nop
	nop
	jr	%GPR15	
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
storeByte:
L_loadStoreByte_1:
	nop
	nop
	nop	
	sw	-4(%GPR13),%GPR14	
	sw	0(%GPR13),%GPR15	
	subui	%GPR14,%GPR13,$4	
	subi	%GPR13,%GPR13,$8
	lhi	%GPR7,$65535	
	andi	%GPR4,%GPR1,$3
	addi	%GPR5,%GPR0,$3	
	andi	%GPR6,%GPR1,$3
	ori	%GPR7,%GPR7,$-4
	addi	%GPR3,%GPR0,$255	
	sub	%GPR4,%GPR5,%GPR4	
	addi	%GPR5,%GPR6,$1	
	and	%GPR1,%GPR1,%GPR7	
	nop
	slli	%GPR4,%GPR4,$3
	subu	%GPR5,%GPR0,%GPR5	
	lw	%GPR6,0(%GPR1)	
	nop	;;13,15
	sll	%GPR3,%GPR3,%GPR4	
	slli	%GPR5,%GPR5,$3	
	nop	;;17,19
	nop	;;17,19
	addi	%GPR3,%GPR3,$1	
	sll	%GPR2,%GPR2,%GPR5	
	nop
	nop
	subu	%GPR3,%GPR0,%GPR3	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
	and	%GPR3,%GPR6,%GPR3	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
	or	%GPR12,%GPR3,%GPR2	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
	sw	0(%GPR1),%GPR12	
	j	L_loadStoreByte_2	
	nop
	nop
	nop
L_loadStoreByte_2:
	nop
	nop
	nop
	lw	%GPR15,4(%GPR14)	
	addui	%GPR13,%GPR14,$4	
	lw	%GPR14,0(%GPR14)
	nop	
	nop
	jr	%GPR15	
	nop
	nop
	nop
storeShort:
L_loadStoreByte_3:
	nop
	nop
	nop
	sw	-4(%GPR13),%GPR14	
	sw	0(%GPR13),%GPR15	
	subui	%GPR14,%GPR13,$4	
	subi	%GPR13,%GPR13,$8	
	lhi	%GPR4,$( _temp	/0x10000)
	lhi	%GPR3,$65535	
	andi	%GPR5,%GPR1,$2	
	ori	%GPR4,%GPR4,$( _temp	%0x10000)
	andi	%GPR6,%GPR1,$1	
	ori	%GPR3,%GPR3,$-4	
	addi	%GPR7,%GPR0,$1	
	sw	0(%GPR4),%GPR5
	nop
	and	%GPR1,%GPR1,%GPR3		
	sub	%GPR5,%GPR7,%GPR6	
	lw	%GPR3,0(%GPR1)	
	addi	%GPR6,%GPR0,$65535	
	lw	%GPR4,0(%GPR4)	
	slli	%GPR5,%GPR5,$4	
	nop	;;21,24
	nop	;;21,24
	srai	%GPR4,%GPR4,$1	
	sll	%GPR5,%GPR6,%GPR5	
	nop	;;25,28
	nop	;;25,28
	addi	%GPR4,%GPR4,$1	
	addi	%GPR5,%GPR5,$1	
	nop
	nop
	subu	%GPR4,%GPR0,%GPR4	
	subu	%GPR5,%GPR0,%GPR5	
	nop
	nop
	slli	%GPR4,%GPR4,$4	
	and	%GPR3,%GPR3,%GPR5	
	nop
	nop	;;33,36
	sra	%GPR2,%GPR2,%GPR4	
	nop	;;33,36
	nop	;;33,36
	nop	;;36,40
	or	%GPR12,%GPR3,%GPR2	
	nop	;;36,40
	nop	;;36,40
	nop	;;40,44
	sw	0(%GPR1),%GPR12	
	j	L_loadStoreByte_4	
	nop
	nop
	nop
L_loadStoreByte_4:
	nop
	nop
	nop
	lw	%GPR15,4(%GPR14)	
	addui	%GPR13,%GPR14,$4	
	lw	%GPR14,0(%GPR14)
	nop
	nop
	jr	%GPR15	
	nop
	nop
	nop
