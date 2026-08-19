/* signed arithmetic and comparisons, staying well clear of overflow */
int main(void) {
  int a = -1000, b = 37;
  int s = a + b, d = a - b, p = a * b;
  int q = a / b, r = a % b;
  int q2 = b / a, r2 = b % a;
  int cmp = 0;
  if (a < b) cmp += 1;
  if (a <= b) cmp += 2;
  if (a > b) cmp += 4;
  if (a >= b) cmp += 8;
  if (a == b) cmp += 16;
  if (a != b) cmp += 32;
  int neg = -a, notb = ~b, lnot = !a, lnot0 = !0;
  int min = -2147483647 - 1;          /* representable, no overflow */
  int mdiv = min / 3, mmod = min % 3;
  return (s & 0xffff) + (d & 0xffff) + (p % 9973) + q + r + q2 + r2
       + cmp + (neg & 0xff) + (notb & 0xff) + lnot + lnot0
       + (mdiv % 1009) + mmod;
}
