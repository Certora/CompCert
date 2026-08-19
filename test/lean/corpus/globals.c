/* global variables with initializers, arrays, const, address-of */
int g = 42;
int arr[5] = { 1, 2, 3, 4, 5 };
const int c = 7;
int zeroed[4];
int *gp = &g;
int main(void) {
  int s = g + c + *gp;
  int i;
  for (i = 0; i < 5; i++) s += arr[i];
  for (i = 0; i < 4; i++) s += zeroed[i];   /* must be zero-initialized */
  g = 100;
  return s + *gp;
}
