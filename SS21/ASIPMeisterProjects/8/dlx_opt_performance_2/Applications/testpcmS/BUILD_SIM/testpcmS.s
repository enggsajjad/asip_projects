	.globl	_A
.data
	.align 2
	.type	_A, @object
	.size	_A, 8
_A:
	.long	42
	.long	23
        .long   2
        .long   3

        .globl  _B
.data
        .align 2
        .type   _B, @object
        .size   _B, 8
_B:
        .long   16


.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
	ADDI	R21, R0,  %hi(_A)
	LSOI	R21, R21, %lo(_A)


	LW	R22, 0(R21)
	LW	R23, 4(R21)
        LW      R24, 8(R21)
        LW      R25, 12(R21)

	NOP				; load delay slot for pf1
	four	R25,R24, R22, R23
        NOP 
        NOP 
        NOP
        NOP 

        ;dcdr    R25,R24, R22, R23
        NOP
        NOP
        NOP
        NOP


	;ADDI	R25, R0,  %hi(_B)
	;LSOI	R25, R25, %lo(_B)

	SW	16(R21), R22
	nop
        SW      20(R21), R23
        nop
        SW      24(R21), R24
        nop
        SW      28(R21), R25
        nop


	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"



