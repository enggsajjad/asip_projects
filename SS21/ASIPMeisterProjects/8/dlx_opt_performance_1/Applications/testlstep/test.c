unsigned int A[10] = { 9, 45, 0,0,0,0,0,0,0};
int main() {


  __asm__ volatile (
                "nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"lstep %[out1], %[op1]\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                : [out1] "=&r" (A[5])
                : [op1] "r" (A[0])
        );


  return 0;
}




