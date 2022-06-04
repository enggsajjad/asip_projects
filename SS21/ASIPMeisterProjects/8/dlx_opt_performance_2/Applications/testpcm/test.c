//unsigned int A[10] = { 25, 65, 1, 8,0,0,0,0,0};//
//unsigned int A[10] = { 69, 25, 2,5,0,0,0,0,0};//
//unsigned int A[10] = { 75, 45, 5, 3,0,0,0,0,0};//
//unsigned int A[10] = { 3, 4, 6, 3,0,0,0,0,0};//
unsigned int A[10] = { 2, 6, 1, 8,20,30,6,7,0,0};//
int main() {
//pcmdec %[out1], %[op3], %[op2], %[op1]
//pcmdec valpred_dout, valpred, delta, step

  __asm__ volatile (
                "nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "dcdr %[op4], %[op3], %[op2], %[op1]  \n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "four %[op8], %[op7], %[op6], %[op5]  \n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"
                "nop\n\t"

                : [op1] "+r" (A[0]), [op2] "+r" (A[1]), [op3] "+r" (A[2]), [op4] "+r" (A[3]),[op5] "+r" (A[4]), [op6] "+r" (A[5]), [op7] "+r" (A[6]), [op8] "+r" (A[7])
                :

        );


  return 0;
}

