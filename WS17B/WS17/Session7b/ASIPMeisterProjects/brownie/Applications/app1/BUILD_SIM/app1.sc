	.addr_space	32	; address space is 2^32 
	.addressing	Byte	; byte addressing          (default) 
	.bits_per_byte	8	; 1 byte consists of 8 bit (default) 
	.endian		Big	; Big endian (default) 
	.section	.text 
	.org 0x00000000 
	
	XOR	%GPR4, %GPR4, %GPR4
	XOR	%GPR5, %GPR5, %GPR5
	XOR	%GPR6, %GPR6, %GPR6
	ADDI	%GPR4, %GPR0, $(0xFFFFC / 0x10000)
	ADDI	%GPR5, %GPR0, $(0xFFFFC / 0x10000)

	LSOI	%GPR4, %GPR4, $(0xFFFFC % 0x10000)
	LSOI	%GPR5, %GPR5, $(0xFFFFC % 0x10000)

	SW	-4(%GPR5), %GPR4
	SW	-8(%GPR5), %GPR3
	ADDI	%GPR5, %GPR4, $(-8)

	JPL	_main	
	SW	0(%GPR5), %GPR21
	JPL	_exit
; options passed:  -iprefix -auxbase-strip -O0
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall
	.globl	_array
.data
	.align 2
	.type	_array, @object
	.size	_array, 40
_array:
	.long	34
	.long	18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	4
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r7,(r6)
	nop
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
;#APP
	avg r8, r7, r6

;#NO_APP
	add	r7,r0,r8
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	12(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r7,(r6)
	nop
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
;#APP
	minmax r9, r8, r7, r6
	
;#NO_APP
	add	r7,r0,r9
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	16(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	20(r6),r8
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
	.addr_space	32	; address space is 2^32 
	.addressing	Byte	; byte addressing          (default) 
	.bits_per_byte	8	; 1 byte consists of 8 bit (default) 
	.endian		Big	; Big endian (default) 
	.section	.text 
	.org 0x00000000 
	nop
_exit:
	nop
	nop
	trap	#0	; HALT