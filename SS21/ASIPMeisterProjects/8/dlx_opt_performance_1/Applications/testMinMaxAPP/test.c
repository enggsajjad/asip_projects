
#define max(a, b) ( (a)>(b) ? (a):(b) )
#define min(a, b) ( (a)<(b) ? (a):(b))
unsigned int A[10] = { 32, 45, 0,0,0,0,0,0,0};
int main() {

    A[4]  = max(A[0], A[1]); // Maximum
    A[5]  = min(A[0], A[1]); // Minimum
  return 0;
}

