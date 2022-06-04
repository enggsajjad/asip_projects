//unsigned int A[10] = { 65, 15, 8,0,0,0,0,0,0};//dout=64
unsigned int A[10] = { 69, 25, 2,5,0,0,0,0,0};//dout=50
int a = 23;
//unsigned int A[10] = { 75, 45, 5, 3,0,0,0,0,0};//dout=48
int main() {
//pcmdec %[out1], %[op3], %[op2], %[op1]
//pcmdec valpred_dout, valpred, delta, step

  __asm__ volatile (
		"add 	r11, r0, %[op1]\n\t"
                "add    r12, r0, %[op2]\n\t"
                "add    r13, r0, %[op3]\n\t"
                "add    r14, r0, %[op4]\n\t"
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
		"dcdr r14, r13, r12, r11 \n\t"
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
                "sw    20(%[op6]),      r11 \n\t"
                "nop\n\t"
                "sw    24(%[op6]),       r12 \n\t"
                "nop\n\t"
                "sw    28(%[op6]),       r13 \n\t"
                "nop\n\t"
                "sw    32(%[op6]),       r14 \n\t"
                "nop\n\t"

                //: [op1] "+&r" (A[0]), [op2] "+&r" (A[1]), [op3] "+&r" (A[2]), [op4] "+&r" (A[3])
                //:
                :
                : [op1] "r" (A[0]), [op2] "r" (A[1]) ,[op3] "r" (A[2]),[op4] "r" (A[3]),[op6] "r" (&A[0])
                :  "r0","r11","r12","r13","r14"


        );


  return 0;
}

