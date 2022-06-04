//#  include "loadStoreByte.h"
//#  include "clockCounter.h"
//#  include "lib_lcd.h"
#  include "lib_uart.h"
unsigned int A[5] = {1,2,3,4,5};
int main() {
  u_print("Test\r\n");
  u_printInt(A[1]);
  u_print("End\r\n");
  return 0;
}




