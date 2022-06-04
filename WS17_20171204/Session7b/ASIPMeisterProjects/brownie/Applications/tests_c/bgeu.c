unsigned int array[5] = { 45, 75,0,0,0};
int main() {

  //store modified data into array locations 2,3,4
  array[2] = array[0] + array[1];
  if (array[0] < array[1])
  {
    array[3] = array[0] + 10;
  }
  else
  {
    array[3] = array[0] - 10;
  }
  return 0;
}




