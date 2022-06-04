//unsigned int A[10] = { 9, 45, 55,0,0,0,0,0,0};//dout=9
//unsigned int A[10] = { 48, 45, 55,0,0,0,0,0,0};//dout=48
unsigned int A[10] = { 56, 45, 55,0,0,0,0,0,0};//dout=55
int main() {
//clmp %[out1], %[op3], %[op2], %[op1]
//clmp dout, compare value, less value, greater value

  __asm__ volatile (
                "nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"clmp %[out1], %[op3], %[op2], %[op1]\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
                : [out1] "=&r" (A[5])
                : [op1] "r" (A[0]), [op2] "r" (A[1]), [op3] "r" (A[2])
        );


  return 0;
}

