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
	.long	2
	.long	6
	.long	1
	.long	8
	.long	20
	.long	30
	.long	6
	.long	7
	.long	0
	.long	0
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
	addi	r14,r0,%hi(_A)
	lsoi	r14,r14,%lo(_A)
	addi	r15,r0,%hi(_A+4)
	lsoi	r15,r15,%lo(_A+4)
	addi	r16,r0,%hi(_A+8)
	lsoi	r16,r16,%lo(_A+8)
	addi	r17,r0,%hi(_A+12)
	lsoi	r17,r17,%lo(_A+12)
	addi	r18,r0,%hi(_A+16)
	lsoi	r18,r18,%lo(_A+16)
	addi	r19,r0,%hi(_A+20)
	lsoi	r19,r19,%lo(_A+20)
	addi	r20,r0,%hi(_A+24)
	lsoi	r20,r20,%lo(_A+24)
	addi	r21,r0,%hi(_A+28)
	lsoi	r21,r21,%lo(_A+28)
	lw	r13,(r14)
	nop
	lw	r12,(r15)
	nop
	lw	r11,(r16)
	nop
	lw	r10,(r17)
	nop
	lw	r9,(r18)
	nop
	lw	r8,(r19)
	nop
	lw	r7,(r20)
	nop
	lw	r6,(r21)
	nop
	add	r22,r0,r13
	add	r23,r0,r12
	add	r24,r0,r11
	add	r25,r0,r8
	add	r26,r0,r7
	add	r27,r0,r6
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
	dcdr r10, r24, r23, r22  
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
	four r27, r26, r25, r9  
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
	add	r11,r0,r27
	add	r12,r0,r26
	add	r13,r0,r25
	add	r8,r0,r24
	add	r7,r0,r23
	add	r6,r0,r22
	sw	(r14),r6
	sw	(r15),r7
	sw	(r16),r8
	sw	(r17),r10
	sw	(r18),r9
	sw	(r19),r13
	sw	(r20),r12
	sw	(r21),r11
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
