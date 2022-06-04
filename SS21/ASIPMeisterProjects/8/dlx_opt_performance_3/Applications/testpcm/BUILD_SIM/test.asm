; options passed:  -auxbase-strip -O0
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall
	.globl	_A
.data
	.align 2
	.type	_A, @object
	.size	_A, 40
_A:
	.long	25
	.long	65
	.long	1
	.long	8
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
	addi	r10,r0,%hi(_A)
	lsoi	r10,r10,%lo(_A)
	addi	r11,r0,%hi(_A+4)
	lsoi	r11,r11,%lo(_A+4)
	addi	r12,r0,%hi(_A+8)
	lsoi	r12,r12,%lo(_A+8)
	addi	r13,r0,%hi(_A+12)
	lsoi	r13,r13,%lo(_A+12)
	lw	r9,(r10)
	nop
	lw	r8,(r11)
	nop
	lw	r7,(r12)
	nop
	lw	r6,(r13)
	nop
	add	r14,r0,r9
	add	r15,r0,r8
	add	r16,r0,r7
	add	r17,r0,r6
;#APP
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	pcm r17, r16, r15, r14  
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	
;#NO_APP
	add	r9,r0,r17
	add	r8,r0,r16
	add	r7,r0,r15
	add	r6,r0,r14
	sw	(r10),r6
	sw	(r11),r7
	sw	(r12),r8
	sw	(r13),r9
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
