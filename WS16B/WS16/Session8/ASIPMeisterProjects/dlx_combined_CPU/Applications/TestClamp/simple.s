	.addressing	Word
	.section	.text
main:
	addi %r1, %r0, $0	; loop counter
	addi %r2, %r0, $(array & 0xffff)	; mem pointer
	addi %r3, %r0, $1	; one (marker)
	nop

loop_begin:
	nop
	nop
	nop	
	slti %r4, %r1, $6
	nop
	nop
	nop
	beqz %r4, loop_end
	nop
	lw %r5, 0(%r2)
	lw %r6, 4(%r2)
	lw %r7, 8(%r2)
	nop
	nop
	nop
	clamp %r8, %r5, %r6, %r7

	nop
	nop
	nop
	sw 12(%r2), %r8	
	nop
	nop
	nop

	clamp_low %r8, %r5, %r6
	nop
	nop
	nop
	sw 16(%r2), %r8	
	nop
	nop
	nop

	clamp_high %r8, %r5, %r7
	nop
	nop
	nop
	sw 20(%r2), %r8	
	nop
	nop
	nop

case_end:
	addi %r1, %r1, $1
	addi %r2, %r2, $40
	j loop_begin
	nop
loop_end:

	addi %r1, %r0, $0	; loop counter
	addi %r2, %r0, $(array2 & 0xffff)	; mem pointer
	addi %r3, %r0, $1	; one (marker)
	nop
loop_begin2:
	nop
	nop
	nop	
	slti %r4, %r1, $4
	nop
	nop
	nop
	beqz %r4, loop_end2
	nop
	lw %r5, 0(%r2)
	lw %r6, 4(%r2)
	lw %r7, 8(%r2)
	nop
	nop
	nop

	predict %r8, %r5, %r6, %r7
	nop
	nop
	nop
	sw 12(%r2), %r8	
	nop
	nop
	nop

	predict_add %r8, %r5, %r6, %r7
	nop
	nop
	nop
	sw 16(%r2), %r8	
	nop
	nop
	nop

	predict_sub %r8, %r5, %r6, %r7
	nop
	nop
	nop
	sw 20(%r2), %r8	
	nop
	nop
	nop

	addi %r1, %r1, $1
	addi %r2, %r2, $40
	j loop_begin2
	nop
loop_end2:

	;jal exit
	nop
 ;trap #0
	.section	.data
array:
;;;;;;Test Clamp Commands
;input index
;input low
;input upper
;clamp
;clamp-low
;clamp_high

;1
	.data.32	55
	.data.32	0
	.data.32	88
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;2
	.data.32	-5
	.data.32	0
	.data.32	88
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;3
	.data.32	95
	.data.32	0
	.data.32	88
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;4
	.data.32	3276
	.data.32	-32768
	.data.32	32767
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;5
	.data.32	-32770
	.data.32	-32768
	.data.32	32767
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;6
	.data.32	32777
	.data.32	-32768
	.data.32	32767
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0

array2:
;;;;;;Test predict Commands
;input predict
;input difference
;input sign
;predict
;predict_add
;predict_sub
;7
	.data.32	55
	.data.32	88
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;8

	.data.32	55
	.data.32	88
	.data.32	1
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;9
	.data.32	88
	.data.32	55
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;9

	.data.32	88
	.data.32	55
	.data.32	1
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0