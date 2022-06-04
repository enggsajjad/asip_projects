unsigned int A[10] = { 25, 65, 1, 8,0,0,0,0,0};//dout=64
//unsigned int A[10] = { 69, 25, 2,5,0,0,0,0,0};//dout=50

//unsigned int A[10] = { 75, 45, 5, 3,0,0,0,0,0};//dout=48
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
		"pcm %[op4], %[op3], %[op2], %[op1]  \n\t"
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
                //"pcmdec %[op4], %[op3], %[op2], %[op1]  \n\t"
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

                : [op1] "+r" (A[0]), [op2] "+r" (A[1]), [op3] "+r" (A[2]), [op4] "+r" (A[3])
                :

        );


  return 0;
}

