_main:  addi    r1, r0, 10

	lhi     r2, (_A >> 16)
        ori     r2, r2, (_A & 0xFFFF)

	lhi     r3, (_B >> 16)
        ori     r3, r3, (_B & 0xFFFF)

	lhi     r4, (_C >> 16)
        ori     r4, r4, (_C & 0xFFFF)

        lw      r5, 0(r4)

_loop:  lw      r6, 0(r3)
        add     r6, r6, r5
        addi    r6, r6, 5
        sw      0(r2), r6
        subi    r1, r1, 1
        addi    r2, r2, 4
        addi    r3, r3, 4
        bnez    r1, _loop

        nop

        trap #0
_A:	.data.32	1
	.data.32	2234
	.data.32	3
	.data.32	45
	.data.32	5
	.data.32	6
	.data.32	23335
	.data.32	3523
	.data.32	123
	.data.32	5

_B:	.data.32	1
	.data.32	2
	.data.32	3
	.data.32	4
	.data.32	5
	.data.32	6
	.data.32	7
	.data.32	8
	.data.32	9
	.data.32	100

_C:	.data.32	9
