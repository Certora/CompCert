/* double and float arithmetic, comparisons and conversions.
   This is the interesting one: CompCert computes with Flocq, the Lean port uses
   the host's IEEE-754 hardware, so agreement here is real evidence for that
   substitution. */
int main(void) {
  double x = 3.5, y = 0.25;
  double s = x + y, d = x - y, p = x * y, q = x / y;
  float f = 1.5f, g = 0.75f;
  float fs = f + g, fp = f * g;
  double widened = (double)fs;
  float narrowed = (float)q;
  int i1 = (int)(s * 100.0);
  int i2 = (int)(d * 100.0);
  int i3 = (int)(p * 1000.0);
  int i4 = (int)q;
  int i5 = (int)(widened * 100.0);
  int i6 = (int)(narrowed * 10.0f);
  int i7 = (int)(fp * 1000.0f);
  int c1 = (x > y) ? 1 : 0;
  int c2 = (x == 3.5) ? 2 : 0;
  int c3 = (f < g) ? 4 : 8;
  double fromint = (double)12345;
  int i8 = (int)(fromint / 3.0);
  /* a small accumulation loop, so rounding happens repeatedly */
  double acc = 0.0;
  int k;
  for (k = 1; k <= 20; k++) acc += 1.0 / (double)k;
  int i9 = (int)(acc * 10000.0);
  return i1+i2+i3+i4+i5+i6+i7+c1+c2+c3+i8+i9;
}
