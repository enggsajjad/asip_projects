
_main:
	ADDI	R21, R0,  $(_A / 0x10000)
	LSOI	R21, R21, $(_A % 0x10000)


	LW	R22, 0(R21)
	LW	R23, 4(R21)
	; following NOP required when -pf1
	;NOP
	ADD	R24, R22, R23

	ADDI	R25, R0,  $(_B / 0x10000)
	LSOI	R25, R25, $(_B % 0x10000)

	SW	0(R25), R24


	TRAP #0

_A:	.data.32	42
	.data.32	23
_B: .data.32	0
