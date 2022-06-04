unsigned int A[10] = { 65, 15, 8,0,0,0,0,0,0};//dout=64
//unsigned int A[10] = { 49, 7, 8,0,0,0,0,0,0};//dout=50
//unsigned int A[10] = { 45, 5, 3,0,0,0,0,0,0};//dout=48
int main() {
//pcmdec %[out1], %[op3], %[op2], %[op1]
//pcmdec valpred_dout, valpred, delta, step

  __asm__ volatile (
                "nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"pcmdec %[out1], %[op3], %[op2], %[op1]\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                : [out1] "=&r" (A[5])
                : [op1] "r" (A[0]), [op2] "r" (A[1]), [op3] "r" (A[2])
        );


  return 0;
}

