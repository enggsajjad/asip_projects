
main:	addi	r1, r0, -4
	addi	r2, r0, 5
	addi	r3, r0, 9
	nop
	nop

	; test_1: r4=(9>=5) (should be 1)
	addi r4, r0, 1
	bgeu r3, r2, _test1_end
	nop
	addi r4, r0, 0
_test1_end:

	; test_2: r5=(5>=9) (should be 0)
	addi r5, r0, 1
	bgeu r2, r3, _test2_end
	nop
	addi r5, r0, 0
_test2_end:

	; test_3: r6 = (-4>=5) (should be 1 - note: bgeU as in Unsigned)
	addi r6, r0, 1
	bgeu r1, r2, _test3_end
	nop
	addi r6, r0, 0
_test3_end:

	; test_4: r7 = (5>=-4) (should be 0 - note: bgeU as in Unsigned)
	addi r7, r0, 1
	bgeu r2, r1, _test4_end
	nop
	addi r7, r0, 0
_test4_end:

	; test_5: r8 = (5>=5) (should be 1)
	addi r8, r0, 1
	bgeu r2, r2, _test5_end
	nop
	addi r8, r0, 0
_test5_end:

	trap #0