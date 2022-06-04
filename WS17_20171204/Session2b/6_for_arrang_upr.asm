	.addr_space	32	; address space is 2^32
	.addressing	byte	; byte addressing          (default)
	.bits_per_byte	8	; 1 byte consists of 8 bit (default)
	.endian		big	; big endian (default)

	.section	.text
	;.addressing	word
	.org 0x00000000

main:	lw	%gpr27, c(%gpr0)
	addi	%gpr21, %gpr0, $10
	addi	%gpr27, %gpr27, $5

loop:	lw	%gpr26, b(%gpr24)
	subi	%gpr21, %gpr21, $1
	add	%gpr26, %gpr26, %gpr27
	sw	a(%gpr24), %gpr26
	addi	%gpr24, %gpr24, $4
b1:	brnz	%gpr21, $(loop-b1-4)

finish:
	; finish
	lsoi	%gpr10,	%gpr10,	$(end / 0x10000)
	lsoi	%gpr10,	%gpr10,	$(end % 0x10000)
	jpr	%gpr10


	.org	0x3000
reset:	; reset interrupt handler
	; gpr6 is all 1 register
	lsoi	%gpr4,	%gpr4,	$(0xaaaa)
	lsoi	%gpr4,	%gpr4,	$(0xaaaa)

	; goto main (interrupt will be permitted)
	lsoi	%gpr2,	%gpr2,	$(main / 0x10000)
	lsoi	%gpr2,	%gpr2,	$(main % 0x10000)
	reti

	.org	0x3f00
end:
	nop
	nop
	nop


        .section        .data
        .align  4

a:      
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

b:      
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

c:      
	.data.32        42

