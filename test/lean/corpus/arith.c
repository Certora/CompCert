/* integer arithmetic, signed and unsigned, incl. the UB-free corners */
int main(void) {
  int a = 17, b = 5;
  int q = a / b, r = a % b;
  int n = -17;
  int nq = n / b, nr = n % b;          /* C truncates toward zero */
  unsigned u = 4000000000u;
  unsigned ud = u / 7u, um = u % 7u;
  long long L = 1234567890123LL;
  int hi = (int)(L >> 32), lo = (int)L;
  return q + r + nq + nr + (int)(ud % 251) + (int)um + (hi & 0xff) + (lo & 7);
}
