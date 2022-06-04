unsigned int A[10] = { 32, 45, 0,0,0,0,0,0,0};
int main() {


  __asm__ volatile (
                "mmaxs %[out1], %[out2], %[op1], %[op2]\n\t"
                : [out1] "=&r" (A[5]), [out2] "=&r" (A[4])
                : [op1] "r" (A[0]), [op2] "r" (A[1])
        );


  return 0;
}




