#ifndef _LIB_LECKER_H
#define _LIB_LECKER_H

asm int lecker(int index, int delta) {
	nop
	nop
	nop
	lecker @{}, @{index}, @{delta}
	nop
	nop
	nop
}

asm int satadd88(int src0, int src1) {
	nop
	nop
	nop
	satadd88 @{}, @{src0}, @{src1}
	nop
	nop
	nop
}

asm int satadd64k(int src0, int src1) {
	nop
	nop
	nop
	satadd64k @{}, @{src0}, @{src1}
	nop
	nop
	nop
}

#endif
