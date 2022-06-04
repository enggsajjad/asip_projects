unsigned int A[10] = { 9, 45, 0,0,0,0,0,0,0};
int main() {


  __asm__ volatile (
                "nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"addidx %[out1], %[op2], %[op1]\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                : [out1] "=&r" (A[5])
                : [op1] "r" (A[0]), [op2] "r" (A[1])
        );


  return 0;
}

