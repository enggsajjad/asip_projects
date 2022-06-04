	.addressing	Word
	.section	.text
main:
	; Call BubbleSort
	subi	%r29, %r29, $8		; create place for the parameters
	sw	0(%r29), %r0		; "const unsigned int startIndex"
	addi	%r1, %r0, $19
	sw	4(%r29), %r1		; "const unsigned int endIndex"
	jal	_bubbleSort
	nop
	addi	%r29, %r29, $8		; clean up place for parameters

	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address
	lw	%r1,  8(%r29)		; Restore r1
	add	%r29, %r0, %r30		; Restore stack pointer

	jal	_exit
	nop


_bubbleSort:
	add	%r30, %r0, %r29		; Establish new frame pointer 
	subi	%r29, %r29, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	sw	0(%r29), %r30		; Save the frame pointer 
	sw	4(%r29), %r31		; Save the return address 

	; Save Registers 
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex".
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".
	sw	20(%r29), %r4		; r4 is the loop-variable "i".
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	sw	28(%r29), %r6		; r6 is the loop-end "innerLoopEnd".
	sw	32(%r29), %r7		; r7 is "next_j".
	sw	36(%r29), %r8		; r8 is "value_j".
	sw	40(%r29), %r9		; r9 is "value_next_j".
	sw	44(%r29), %r10		; r10 is the start address of 'array'.
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
	; note: j (next_j) is incremented by 4 rather than 1, since j is used
	;       to address words (4 bytes). Therefore innerLoopEnd has to be
	;       decremented by 4 as well.
	
	slli %r6, %r3, $2			; innerLoopEnd = 4*endIndex
	add %r6, %r6, %r10			; innerLoopEnd = array+4*endIndex
	add %r4, %r0, %r2			; i = startIndex;
	slli %r2, %r2, $2			; startIndex = startIndex*4
_outer_loop:					; while (i < endIndex) {
	add %r5, %r2, %r10			;   j = array+4*startIndex;
	lw  %r8, 0(%r5)				;   value_j = *j;
	add %r7, %r0, %r5			;   next_j = j;
_inner_loop:					;   while (j < innerLoopEnd) {
	addi %r7, %r7, $4			;     next_j+=4;
	lw   %r9, 0(%r7)			;     value_next_j = *next_j;

	sltu %r1, %r9, %r8			;     if (value_next_j < value_j) {
	beqz %r1, _end_if
	nop

	sw 0(%r5), %r9				;       *j = value_next_j;
	sw 0(%r7), %r8				;       *next_j = value_j;
	add %r9, %r0, %r8			;       value_next_j = value_j

_end_if:						;     }
	add %r5, %r0, %r7			;     j = next_j;
	add %r8, %r0, %r9			;     value_j = value_next_j;

	sltu %r1, %r5, %r6			;   } (r1 = j < innerLoopEnd)
	bnez %r1, _inner_loop		;   }
	nop

	subi %r6, %r6, $4			;   innerLoopEnd--;
	addi %r4, %r4, $1			;   i++;

	sltu %r1, %r4, %r3			; } (r1 = i < endIndex)
	bnez %r1, _outer_loop		; }
	nop

	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	
	; innerLoopEnd = array+endIndex
	; i = startIndex;
	; while (i < endIndex) {
	;   j = array+startIndex;
	;   value_j = *j;
	;   next_j = j;
	;   while (j < innerLoopEnd) {
	;     next_j++;
	;     value_next_j = *next_j;
	;     if (value_next_j < value_j) {
	;       *j = value_next_j;
	;       *next_j = value_j;
	;       tmp = value_j;
	;       value_j = value_next_j;
	;       value_next_j = tmp;
	;     }
	;     j = next_j;
	;     value_j = value_next_j;  
	;   }
	;   innerLoopEnd--;
	;   i++;
	; }


	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address

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

	add	%r29, %r0, %r30		; Restore stack pointer

	; Return
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

