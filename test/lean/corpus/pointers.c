/* pointers, arrays, pointer arithmetic and differences */
int main(void) {
  int a[8];
  int i;
  for (i = 0; i < 8; i++) a[i] = i * i;
  int *p = a + 3;
  int *q = a + 6;
  int d = (int)(q - p);
  int s = *p + *q + p[1] + *(a + 7);
  int **pp = &p;
  s += **pp;
  return s + d;
}
