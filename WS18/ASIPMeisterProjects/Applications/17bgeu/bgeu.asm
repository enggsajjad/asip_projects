;Test BGEU

	.addr_space	32	; address space is 2^32
	.addressing	Byte	; byte addressing          (default)
	.bits_per_byte	8	; 1 byte consists of 8 bit (default)
	.endian		Big	; Big endian (default)
	.section	.data
	.align		4
data:
	.data.32	0x12345678
	.data.32	0x98765432
	.data.8		0xAA
	.data.8		0xFF
	.data.16	0x0000
_start:


	.section	.text
	.org	0x00000000
main:

	
	ADDI	%GPR11, %GPR0, $(5)
	ADDI	%GPR12, %GPR0, $(-6)
	NXOR    %GPR13, %GPR11, %GPR12
	NXOR    %GPR14, %GPR13, %GPR12
l1:	BGEU	%GPR12, %GPR11, $(_test1-l1-4)
	ADDI	%GPR12, %GPR12, $(8)
	ADDI	%GPR11, %GPR11, $(80)

_test1:
	ADDI	%GPR11, %GPR11, $(10)
	ADDI	%GPR12, %GPR12, $(1)
l2:	BGEU	%GPR12, %GPR0, $(_test2-l2-4)
	ADDI	%GPR12, %GPR12, $(2)
	ADDI	%GPR11, %GPR11, $(20)

_test2:
	ADDI	%GPR12, %GPR12, $(4)
	ADDI	%GPR11, %GPR11, $(40)

	SW	4(%GPR6), %GPR11
	SW	8(%GPR6), %GPR12
	SW	12(%GPR6), %GPR13
	SW	16(%GPR6), %GPR14
	SW	20(%GPR6), %GPR11
	SW	24(%GPR6), %GPR12
;r11=5,r12=6
;00000010 00000037
;00000014 0000000B
;00000018 FFFFFFFC
;0000001C 00000005
;00000020 00000037
;00000024 0000000B
;r11=5,r12=-6
;00000010 00000037
;00000014 FFFFFFFF
;00000018 00000000
;0000001C 00000005
;00000020 00000037
;00000024 FFFFFFFF

finish_up_main:
	; finish
	LSOI	%GPR10,	%GPR10,	$(end / 0x10000)
	LSOI	%GPR10,	%GPR10,	$(end % 0x10000)
	JPR	%GPR10


	.org	0x3000
reset:	; reset interrupt handler
	; GPR6 is all 1 register
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)

	; GPR5 is used as ID, in trap_dump
	; also, is used as a flag that stands for the program was aborted or not
	XOR	%GPR5,	%GPR5,	%GPR5

	; GPR6 is dumping pointer
	LSOI	%GPR6,	%GPR6,	$(_start / 0x10000)
	LSOI	%GPR6,	%GPR6,	$(_start % 0x10000)

	; GPR7 is reserved now 
	XOR	%GPR7,	%GPR7,	%GPR7

	; GPR8 is reserved now
	XOR	%GPR8,	%GPR8,	%GPR8

	; GPR9 is used by system
	XOR	%GPR9,	%GPR9,	%GPR9

	; goto main (interrupt will be permitted)
	LSOI	%GPR2,	%GPR2,	$(main / 0x10000)
	LSOI	%GPR2,	%GPR2,	$(main % 0x10000)
	RETI


	.org	0x3800
trap_base:

	.org	0x3F00
end:
	NOP
	NOP
	NOP
	NOP

