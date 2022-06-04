	.section	.text
	.addressing	Word
	
	xor	%GPR14, %GPR14, %GPR14
	xor	%GPR13, %GPR13, %GPR13
	xor	%GPR12, %GPR12, %GPR12
	nop
	lhi	%GPR14, $(REPLACE/0x10000)
	lhi	%GPR13, $(REPLACE/0x10000)
	nop
	nop
	ori	%GPR14, %GPR14, $(REPLACE%0x10000)
	ori	%GPR13, %GPR13, $(REPLACE%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR13), %GPR14
	sw	-8(%GPR13), %GPR15
	addi	%GPR13, %GPR14, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR13), %GPR1
	jal	exit
	nop
	nop

