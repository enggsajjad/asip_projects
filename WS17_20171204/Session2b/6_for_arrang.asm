	.addr_space	32	; address space is 2^32
	.addressing	Byte	; byte addressing          (default)
	.bits_per_byte	8	; 1 byte consists of 8 bit (default)
	.endian		Big	; Big endian (default)

	.section	.text
	;.addressing	Word
	.org 0x00000000

main:	LW	%GPR27, C(%GPR0)
	ADDI	%GPR21, %GPR0, $10
	ADDI	%GPR27, %GPR27, $5

loop:	LW	%GPR26, B(%GPR24)
	SUBI	%GPR21, %GPR21, $1
	ADD	%GPR26, %GPR26, %GPR27
	SW	A(%GPR24), %GPR26
	ADDI	%GPR24, %GPR24, $4
b1:	BRNZ	%GPR21, $(loop-b1-4)

finish:
	; finish
	LSOI	%GPR10,	%GPR10,	$(end / 0x10000)
	LSOI	%GPR10,	%GPR10,	$(end % 0x10000)
	JPR	%GPR10


	.org	0x3000
reset:	; reset interrupt handler
	; GPR6 is all 1 register
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)

	; goto main (interrupt will be permitted)
	LSOI	%GPR2,	%GPR2,	$(main / 0x10000)
	LSOI	%GPR2,	%GPR2,	$(main % 0x10000)
	RETI

	.org	0x3F00
end:
	NOP
	NOP
	NOP


        .section        .data
        .align  4

A:      
	.data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0
        .data.32        0

B:      
	.data.32        1
        .data.32        2
        .data.32        3
        .data.32        4
        .data.32        5
        .data.32        6
        .data.32        7
        .data.32        8
        .data.32        9
        .data.32        10

C:      
	.data.32        42

