unsigned int array[10] = { 0x22, 0x12,0,0,0,0,0,0,0};
int main() {

  //array[2] = __builtin_brownie32_AVG(array[0], array[1]);
  //__builtin_brownie32_MINMAX(&min,&max,33,55);


  __asm__ volatile (
                "avg %[my_out], %[my_op1], %[my_op2]\n"
                : [my_out] "=&r" (array[3])
                : [my_op1] "r" (array[0]),[my_op2] "r" (array[1])
        );
/*
//requires two nops without 2 forwarding unit for two destination registers
  __asm__ volatile (
                "minmax %[my_out1], %[my_out2], %[my_op1], %[my_op2]\n\t"
		"nop\n\t"
		"nop"
                : [my_out1] "=&r" (array[4]), [my_out2] "=&r" (array[5])
                : [my_op1] "r" (array[0]), [my_op2] "r" (array[1])
        );
*/
//requires NO nops with 2 forwarding unit for two destination registers
  __asm__ volatile (
                "minmax %[my_out1], %[my_out2], %[my_op1], %[my_op2]\n\t"
                : [my_out1] "=&r" (array[4]), [my_out2] "=&r" (array[5])
                : [my_op1] "r" (array[0]), [my_op2] "r" (array[1])
        );
/* __asm__ volatile (
                "minmax %0, %1, %2, %3\n"
                : "=&r" (array[4]),  "=&r" (array[5])
                : "r" (array[0]), "r" (array[1])
        );*/

  return 0;
}




