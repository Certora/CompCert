/* 64-bit arithmetic, signed and unsigned, and int/long conversions */
int main(void) {
  long long a = 1234567890123LL, b = 987654321LL;
  long long q = a / b, r = a % b;
  unsigned long long u = 18446744073709551615ULL;
  unsigned long long ud = u / 1000000007ULL;
  long long neg = -1234567890123LL;
  long long nq = neg / b, nr = neg % b;
  int narrow = (int)a;
  long long widened = (long long)narrow;
  long long shifted = a >> 13;
  unsigned long long ushift = u >> 40;
  return (int)(q & 0xffff) + (int)(r % 1000) + (int)(ud & 0xff)
       + (int)(nq & 0xffff) + (int)(nr % 1000) + (int)(widened & 0xff)
       + (int)(shifted & 0xffff) + (int)(ushift & 0xffff);
}
