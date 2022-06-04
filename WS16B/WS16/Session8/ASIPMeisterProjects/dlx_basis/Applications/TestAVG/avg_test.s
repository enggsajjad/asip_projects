	.addressing	Word
	.section	.text
main:
	addi %r1, %r0, $0	; loop counter
	addi %r2, %r0, $(array & 0xffff)	; mem pointer
	addi %r3, %r0, $1	; one (marker)
	nop

loop_begin:
	slti %r4, %r1, $4
	nop
	nop
	nop
	beqz %r4, loop_end
	nop
	lw %r5, 0(%r2)
	lw %r6, 4(%r2)
	nop
	nop
	nop
	;avg %r7, %r5, %r6
	add %r7, %r5, %r6
	nop
	nop
	nop
	sw 8(%r2), %r7	
	nop
	nop
	nop

	;minmax %r7, %r8, %r5, %r6
	add %r7, %r5, %r6
	nop
	nop
	nop
	sw 12(%r2), %r7
	nop
	nop
	nop
	sw 16(%r2), %r8
	nop
	nop
	nop
	;swap %r7, %r5
	add %r7, %r5, %r6
	nop
	nop
	nop
	sw 20(%r2), %r7
	nop
	nop
	nop
case_end:
	addi %r1, %r1, $1
	addi %r2, %r2, $24
	j loop_begin
	nop
loop_end:
	;jal exit
	nop

	.section	.data
array:
;input a
	.data.32	5
;input b
	.data.32	17
;Avg
	.data.32	0
;Min
	.data.32	0
;Max
	.data.32	0
;Swapped a
	.data.32	0


	.data.32	15
	.data.32	7
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0


	.data.32	25
	.data.32	15
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0



	.data.32	524288
	.data.32	9
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0