#define COSY
/***********************************************************
copyright 1992 by Stichting Mathematisch Centrum, Amsterdam, The
Netherlands.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the names of Stichting Mathematisch
Centrum or CWI not be used in advertising or publicity pertaining to
distribution of the software without specific, written prior permission.

STICHTING MATHEMATISCH CENTRUM DISCLAIMS ALL WARRANTIES WITH REGARD TO
THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS, IN NO EVENT SHALL STICHTING MATHEMATISCH CENTRUM BE LIABLE
FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

******************************************************************/

/*
** Intel/DVI ADPCM coder/decoder.
**
** The algorithm for this coder was taken from the IMA Compatability Project
** proceedings, Vol 2, Number 2; May 1992.
**
** Version 1.2, 18-Dec-92.
**
** Change log:
** - Fixed a stupid bug, where the delta was computed as
**   stepsize*code/4 in stead of stepsize*(code+0.5)/4.
** - There was an off-by-one error causing it to pick
**   an incorrect delta once in a blue moon.
** - The NODIVMUL define has been removed. Computations are now always done
**   using shifts, adds and subtracts. It turned out that, because the standard
**   is defined using shift/add/subtract, you needed bits of fixup code
**   (because the div/mul simulation using shift/add/sub made some rounding
**   errors that real div/mul don't make) and all together the resultant code
**   ran slower than just using the shifts all the time.
** - Changed some of the variable names to be more meaningful.
*/

#ifndef COSY
#else
#  include "lib_audio.h"
#endif

/* Intel ADPCM step variation table */
static int indexTable[16] = {
    -1, -1, -1, -1, 2, 4, 6, 8,
    -1, -1, -1, -1, 2, 4, 6, 8,
};

static int stepsizeTable[89] = {
    7, 8, 9, 10, 11, 12, 13, 14, 16, 17,
    19, 21, 23, 25, 28, 31, 34, 37, 41, 45,
    50, 55, 60, 66, 73, 80, 88, 97, 107, 118,
    130, 143, 157, 173, 190, 209, 230, 253, 279, 307,
    337, 371, 408, 449, 494, 544, 598, 658, 724, 796,
    876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066,
    2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358,
    5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899,
    15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767
};

asm int sign(int parameter1, int parameter2, int parameter3) {
	nop
	nop
	nop
	sign	@{}, @{parameter1}, @{parameter2}, @{parameter3}
	nop
	nop
	nop
}

asm int adpcm_decoder(unsigned char* indata, int len, int* indexTable, int* stepsizeTable) {
@[
	.scratch step, sgn, valpred
	.restrict step:reg<R4>, valpred:reg<R5>, indata:reg<R18>, sgn:reg<R19>
]
	; GPR4 = step
	; GPR17 = delta
	; GPR19 = sign
	; GPR20 = vpdiff
	; GPR22 = *audioLeft
	; GPR23 = *audioRight
	; GPR25 = 32767
	; GPR26 = 88
	nop
	nop
	nop
	lhi	@{valpred},$0		; valpred
	lhi	%GPR22, $(40000004/0x10000)
	lhi	%GPR23, $(40000008/0x10000)
	lhi	%GPR7,$0		; index
	lhi	%GPR8,$0		; inputbuffer
	lhi	%GPR9,$0		; bufferstep
	addi %GPR25, %GPR0, $32767	; constant 32767
	addi %GPR26, %GPR0, $88		; constant 88
	ori	%GPR22, %GPR22, $(40000004%0x10000)
	ori	%GPR23, %GPR23, $(40000008%0x10000)
	addi @{step}, %GPR0, $7	; step = stepsizeTable[0]
	j	L_adpcm_6
	sgt	%GPR27,@{len},%GPR0

L_adpcm_5:	; writeToAudioOutL( (valpred+signedUnsignedModification) & 0xFFFF)
	sw	0(%GPR22), %GPR24
L_adpcm_6:	; len > 0
	delt	%GPR17, %GPR8, @{indata}, %GPR9
	nop	;;8,12
	nop	;;8,12
	beqz	%GPR27,L_adpcm_24	; len == 0 -> return
	slli	%GPR11,%GPR17,$2	; r11 = delta << 2 (4 byte offset)
	andi	@{sgn},%GPR17,$8	; sign = delta & 8
	andi	%GPR17,%GPR17,$7	; delta = delta & 7
	srai	%GPR20,@{step},$3		; vpdiff = step >> 3
	add	%GPR6, @{indexTable}, %GPR11		; r6 = *indexTable + offset (r11)
	nop
	andi	%GPR13,%GPR17,$4	; r13 = delta & 4
	nop
	lw	%GPR14,0(%GPR6)			; r14 = indexTable[delta]
	nop
	nop
	sne	%GPR27,%GPR13,%GPR0		; if ( delta & 4 )
	add	%GPR7,%GPR7,%GPR14		; index += indexTable[delta]
	nop
	andi	%GPR12,%GPR17,$2	; r12 = delta & 2
	andi	%GPR17,%GPR17,$1	; delta = delta & 1
	beqz	%GPR27, L_adpcm_15
	clamp	%GPR7, %GPR0, %GPR26	; clamp(index, 0, 88)
L_adpcm_14:
	add	%GPR20,%GPR20,@{step}		; vpdiff += step
L_adpcm_15:
	sne	%GPR27,%GPR12,%GPR0		; if ( delta & 2 )
	srai	%GPR12,@{step},$1		; r12 = step >> 1
	nop	;;8,12
	nop	;;8,12
	beqz	%GPR27, L_adpcm_17
	nop	;;8,12
L_adpcm_16:
	add	%GPR20,%GPR20,%GPR12		; vpdiff += step>>1
L_adpcm_17:
	sne	%GPR27,%GPR17,%GPR0		; if ( delta & 1 )
	srai	@{step},@{step},$2		; step = step>>2
	nop	;;8,12
	nop	;;8,12
	beqz	%GPR27, L_adpcm_19
	nop
L_adpcm_18:
	add	%GPR20,%GPR20,@{step}		; vpdiff += step>>2
L_adpcm_19:
	slli	@{step},%GPR7,$2		; r4 = index << 2 (4 byte offset)
	addi	@{step},%GPR0,$1		; r4_NEXT = 1
	nop
	sign	@{valpred}, @{valpred}, %GPR20, @{sgn}
	add	%GPR24, @{stepsizeTable}, @{step}		; r3 = *stepsizeTable[index] (r4_OLD)
	nop	;;1,5
	nop
	clamp	@{valpred}, @{step}, %GPR25
	lw	@{step},0(%GPR24)			; step = stepsizeTable[index]
	seq	%GPR27,%GPR9,%GPR0		; if (!bufferstep)
	addi	@{len},@{len},$-1
	andi	%GPR24,@{valpred},$65535	; valpred &= 0xFFFF
	nop	;;12,16
	beqz	%GPR27, L_adpcm_5
	sgt	%GPR27,@{len},%GPR0
	nop

; writeToAudioOutR( (valpred+signedUnsignedModification) & 0xFFFF);
L_adpcm_23:
	j	L_adpcm_6
	sw	0(%GPR23), %GPR24

; return
L_adpcm_24:
	lhi	%GPR28,$0
}

#include "adpcmData.h"

int main() {
  // 2 * numberOfArrayElements, because each sample is only 4 Bits
  int numberOfSamples = 2 * sizeof(adpcmData);

  //while (1) {      // Endlosschleife nur f�r FPGA. F�r ModelSim/dlxsim, bitte deaktivieren!
	adpcm_decoder(adpcmData, numberOfSamples, indexTable, stepsizeTable);
 //}
  return 0;
}
