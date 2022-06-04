	.addr_space	32	; address space is 2^32 
	.addressing	Byte	; byte addressing          (default) 
	.bits_per_byte	8	; 1 byte consists of 8 bit (default) 
	.endian		Big	; Big endian (default) 
	.section	.text 
	.org 0x00000000 

_main:	
	ADDI	%GPR21, %GPR0,  $(_data / 0x10000)
	LSOI	%GPR21, %GPR21, $(_data % 0x10000)


	LW	%GPR22, 0(%GPR21)
	LW	%GPR23, 4(%GPR21)

	ADD	%GPR24, %GPR22, %GPR23

	ADDI	%GPR25, %GPR0,  $(_result / 0x10000)
	LSOI	%GPR25, %GPR25, $(_result % 0x10000)

	SW	0(%GPR25), %GPR24

	TRAP #0

	finish: 
		LSOI	%GPR10,	%GPR10,	$(_exit / 0x10000) 
		LSOI	%GPR10,	%GPR10,	$(_exit % 0x10000) 
		JPR	%GPR10 
 
		.org	0x3000 
	reset:	; reset interrupt handler 
		; GPR6 is all 1 register 
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) 
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) 
 
		; goto main (interrupt will be permitted) 
		LSOI	%GPR2,	%GPR2,	$(_main / 0x10000) 
		LSOI	%GPR2,	%GPR2,	$(_main % 0x10000) 
		RETI 
 
		.org	0x3F00 
	_exit: 
		NOP 
		NOP 
		NOP 
 
		.section        .data 
		.align  4 


_data:	
	.data.32	42
	.data.32	23
_result:
	.data.32	0
