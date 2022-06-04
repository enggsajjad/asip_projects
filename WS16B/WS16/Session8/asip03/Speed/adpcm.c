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
*/

/* Intel ADPCM step variation table */
int indexTable[16] = {
    -1, -1, -1, -1, 2, 4, 6, 8,
    -1, -1, -1, -1, 2, 4, 6, 8,
};

#if 1

asm void adpcm_decoder(unsigned char *indata, int len) {
@[  .barrier
    .scratch audio_addr, i, index, delta_l, delta_r
    .scratch value, index_l, index_r, vpdiff, valpred
    .restrict audio_addr:ptr, index:reg, value:reg, i:reg
    .restrict delta_l:reg, delta_r:reg, vpdiff:reg
    .restrict index_l:reg, index_r:reg, valpred:reg
 ]
_adpcm_decoder_setup:
    lhi @{audio_addr}, $(40000000 / 0x10000)
    lhi @{valpred}, $(1)
    addi @{index}, %r0, $(0)
    nop
    ori	@{audio_addr}, @{audio_addr}, $(40000000 % 0x10000)
    srli @{valpred}, @{valpred}, $(1)

_adpcm_decoder_begin:
    lw @{value}, 0(@{indata}) ; load 4 byte = 8 samples
    addi @{indata}, @{indata}, $(4)
    addi @{i}, %r0, $(8) ; samples left in loaded value
    nop

_adpcm_decoder_inner:
    srli @{index_l}, @{value}, $(26)
    srli @{index_r}, @{value}, $(22)
    srli @{delta_l}, @{value}, $(28)
    srli @{delta_r}, @{value}, $(24)
    andi @{index_l}, @{index_l}, $(0x3C)
    andi @{index_r}, @{index_r}, $(0x3C)
    andi @{delta_l}, @{delta_l}, $(0xF)
    andi @{delta_r}, @{delta_r}, $(0xF)
    lw @{index_l}, _indexTable(@{index_l})
    lw @{index_r}, _indexTable(@{index_r})

    lecker @{vpdiff}, @{index}, @{delta_l}
    nop
    satadd88 @{index}, @{index}, @{index_l}
    subi @{len}, @{len}, $(2)
    satadd64k @{valpred}, @{valpred}, @{vpdiff}
    subi @{i}, @{i}, $(2)
    lecker @{vpdiff}, @{index}, @{delta_r}
    nop
    sw 4(@{audio_addr}), @{valpred} ; audio output

    slli @{value}, @{value}, $(8)
    satadd64k @{valpred}, @{valpred}, @{vpdiff}
    nop
    satadd88 @{index}, @{index}, @{index_r}
    nop
    sw 8(@{audio_addr}), @{valpred} ; audio output

    beqz @{len}, _adpcm_decoder_end
    nop
    bnez @{i}, _adpcm_decoder_inner
    nop
    j _adpcm_decoder_begin
    nop
_adpcm_decoder_end:
}

#else

#include "lib_audio.h"
#include "lib_lecker.h" // for custom special instructions

void adpcm_decoder(unsigned char *indata, int len) {
    //int sign;			// Current adpcm sign bit
    int delta;			// Current adpcm output value
    //int step;			// Stepsize
    int valpred = 0x8000;	// Predicted value
    int vpdiff;			// Current change to valpred
    int index = 0;		// Current step change index
    int inputbuffer = 0;	// place to keep next 4-bit value
    int bufferstep = 0;		// toggle between inputbuffer/input

    for (; len > 0; --len) {
        // Step 1 - get the delta value
        if (bufferstep) {
            delta = inputbuffer & 0xf;
        } else {
            inputbuffer = *indata++;
            delta = (inputbuffer >> 4) & 0xf;
        }
        bufferstep = !bufferstep;

        // Step 3, 4 and 6 are done by 'lecker'
        vpdiff = lecker(index, delta);

        // Step 5 - clamp output value
        valpred = satadd64k(valpred, vpdiff);

        // Step 2 - Find new index value
        index = satadd88(index, indexTable[delta]);

        // Step 7 - Output value
        // Would need to write out "valpred - 0x8000" to work on PC.
        if (bufferstep) writeToAudioOutR(valpred);
        else            writeToAudioOutL(valpred);
    }
}

#endif

#include "adpcmData.h"

int main() {
    // 2 * numberOfArrayElements, because each sample is only 4 Bits
    int numberOfSamples = sizeof(adpcmData) << 1;

    //while (1) { // Endlosschleife nur für FPGA. Für ModelSim/dlxsim, bitte deaktivieren!
        adpcm_decoder(adpcmData, numberOfSamples);
    //}
    return 0;
}
