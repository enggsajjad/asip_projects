	;.addressing	Word
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%r29), %r1
	jal	exit
	nop
	nop

main:
	; Call BubbleSort
	subi	%r29, %r29, $8			; create place for the parameters
	sw	0(%r29), %r0			; "const unsigned int startIndex"
	addi	%r1, %r0, $19
	sw	4(%r29), %r1			; "const unsigned int endIndex"
	jal	_bubbleSort
	nop
	addi	%r29, %r29, $8			; clean up place for parameters

	lw	%r30, 0(%r29)			; Restore frame pointer
	lw	%r31, 4(%r29)			; Restore return address
	lw	%r1,  8(%r29)			; Restore r1
	add	%r29, %r0, %r30			; Restore stack pointer

	jal	_exit
	nop


_bubbleSort:
	add	%r30, %r0, %r29			; Establish new frame pointer 
	subi	%r29, %r29, $(8 + 10*4)		; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	sw	0(%r29), %r30			; Save the frame pointer 
	sw	4(%r29), %r31			; Save the return address 

	; Save Registers 
	sw	8(%r29), %r1			; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2			; r2 is the parameter value "startIndex".
	sw	16(%r29), %r3			; r3 is the parameter value "endIndex".
	sw	20(%r29), %r4			; r4 is the loop-variable "i".
	sw	24(%r29), %r5			; r5 is the loop-variable "j".
	sw	28(%r29), %r6			; r6 is the loop-end "innerLoopEnd".
	sw	32(%r29), %r7			; r7 is "next_j".
	sw	36(%r29), %r8			; r8 is "value_j".
	sw	40(%r29), %r9			; r9 is "value_next_j".
	sw	44(%r29), %r10			; r10 is the start address of 'array'.
	nop

	; Load Parameters
	lw	%r2, 0(%r30)
	lw	%r3, 4(%r30)

	; Initialize start address of 'array'
	lhi	%r10, $(_array/65536)&0xffff
	addui	%r10, %r10, $(_array&0xffff)


	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;

	; innerLoopEnd = array+endIndex
	slli	%r1, %r3, $2
	addu	%r6, %r10, %r1
	; i = startIndex;
	addu	%r4, %r0, %r2
outer_loop_begin:
	; while (i < endIndex) {
	sltu	%r1, %r4, %r3
	beqz	%r1, outer_loop_end
	nop
	;   j = array+startIndex;
	slli	%r1, %r2, $2
	addu	%r5, %r10, %r1
	;   value_j = *j;
	lw	%r8, 0(%r5)
	;   next_j = j;
	addu	%r7, %r0, %r5
	;   while (j < innerLoopEnd) {
inner_loop_begin:
	sltu	%r1, %r5, %r6
	beqz	%r1, inner_loop_end
	nop
	;     next_j++;
	addui	%r7, %r7, $4
	;     value_next_j = *next_j;
	lw	%r9, 0(%r7)
	;     if (value_next_j < value_j) {
	sltu	%r1, %r9, %r8
	beqz	%r1, endif
	nop
	;       *j = value_next_j;
	sw	0(%r5), %r9
	;       *next_j = value_j;
	sw	0(%r7), %r8
	;       tmp = value_j;
	addu	%r1, %r0, %r8
	;       value_j = value_next_j;
	addu	%r8, %r0, %r9
	;       value_next_j = tmp;
	addu	%r9, %r0, %r1
	;     }
endif:
	;     j = next_j;
	addu	%r5, %r0, %r7
	;     value_j = value_next_j;  
	addu	%r8, %r0, %r9
	;   }
	j	inner_loop_begin
	nop
inner_loop_end:
	;   innerLoopEnd--;
	subui	%r6, %r6, $4
	;   i++;
	addui	%r4, %r4, $1
	; }
	j	outer_loop_begin
	nop
outer_loop_end:


	lw	%r30, 0(%r29)			; Restore frame pointer
	lw	%r31, 4(%r29)			; Restore return address

	; Restore the saved registers
	lw	%r1, 8(%r29)
	lw	%r2, 12(%r29)
	lw	%r3, 16(%r29)
	lw	%r4, 20(%r29)
	lw	%r5, 24(%r29)
	lw	%r6, 28(%r29)
	lw	%r7, 32(%r29)
	lw	%r8, 36(%r29)
	lw	%r9, 40(%r29)
	lw	%r10,48(%r29)

	add	%r29, %r0, %r30			; Restore stack pointer

	; Return
	nop
	jr	%r31
	nop


_exit:	nop
	nop


	.section	.data
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23

	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
exit:
	nop
	nop
