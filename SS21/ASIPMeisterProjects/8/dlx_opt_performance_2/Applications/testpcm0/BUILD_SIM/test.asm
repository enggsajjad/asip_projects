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
	.long	69
	.long	25
	.long	2
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.globl	_a
	.align 2
	.type	_a, @object
	.size	_a, 4
_a:
	.long	23
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
	addi	r6,r0,%hi(_A)
	lsoi	r6,r6,%lo(_A)
	lw	r10,(r6)
	nop
	addi	r6,r0,%hi(_A)
	lsoi	r6,r6,%lo(_A)
	lw	r9,4(r6)
	nop
	addi	r6,r0,%hi(_A)
	lsoi	r6,r6,%lo(_A)
	lw	r8,8(r6)
	nop
	addi	r6,r0,%hi(_A)
	lsoi	r6,r6,%lo(_A)
	lw	r7,12(r6)
	nop
	addi	r6,r0,%hi(_A)
	lsoi	r6,r6,%lo(_A)
;#APP
	add 	r11, r0, r10
	add    r12, r0, r9
	add    r13, r0, r8
	add    r14, r0, r7
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
	dcdr r14, r13, r12, r11 
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
	sw    20(r6),      r11 
	nop
	sw    24(r6),       r12 
	nop
	sw    28(r6),       r13 
	nop
	sw    32(r6),       r14 
	nop
	
;#NO_APP
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
