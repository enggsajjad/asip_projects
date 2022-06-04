	.addr_space	32	; address space is 2^32
	.addressing	Byte	; byte addressing          (default)
	.bits_per_byte	8	; 1 byte consists of 8 bit (default)
	.endian		Big	; Big endian (default)

	.section	.text
	;.addressing	Word
	.org 0x00000000

main:	LW	%GPR27, C(%GPR0)
	ADDI	%r21, %r0, $10
	addi	%r27, %r27, $5

loop:	lw	%r26, B(%r24)
	subi	%r21, %r21, $1
	add	%r26, %r26, %r27
	SW	A(%r24), %r26
	addi	%r24, %r24, $4
b1:	brnz	%r21, $(loop-b1-4)

finish:
	; finish
	lsoi	%r10,	%r10,	$(end / 0x10000)
	lsoi	%r10,	%r10,	$(end % 0x10000)
	jpr	%r10


	.org	0x3000
reset:	; reset interrupt handler
	; GPR6 is all 1 register
	lsoi	%r4,	%r4,	$(0xAAAA)
	lsoi	%r4,	%r4,	$(0xAAAA)

	; goto main (interrupt will be permitted)
	lsoi	%r2,	%r2,	$(main / 0x10000)
	lsoi	%r2,	%r2,	$(main % 0x10000)
	reti

	.org	0x3F00
end:
	nop
	nop
	nop


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

