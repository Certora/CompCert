/* the is_sorted function under test, exercised on several arrays */
int is_sorted(const unsigned int *numbers, int len) {
  if (len <= 1) return 1;
  int i;
  for (i = 1; i < len; i++)
    if (numbers[i] < numbers[i-1]) return 0;
  return 1;
}
int main(void) {
  unsigned int a[4] = { 1u, 2u, 3u, 4u };
  unsigned int b[4] = { 1u, 9u, 3u, 4u };
  unsigned int c[2] = { 1u, 4294967295u };   /* unsigned: sorted */
  unsigned int d[2] = { 4294967295u, 1u };   /* unsigned: not sorted */
  return is_sorted(a,4)*1 + is_sorted(b,4)*2 + is_sorted(c,2)*4 + is_sorted(d,2)*8;
}
