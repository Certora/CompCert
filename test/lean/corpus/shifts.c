/* shifts and bitwise ops, including signed right shift */
int main(void) {
  int x = -1024;
  unsigned u = 0xF0F0F0F0u;
  int s = x >> 3;                 /* arithmetic */
  unsigned t = u >> 4;            /* logical */
  int l = 3 << 5;
  int m = (int)(u & 0xFFFFu) ^ (int)(u >> 16);
  int o = (~x) | 1;
  return (s & 0xff) + (int)(t & 0xff) + l + (m & 0xff) + (o & 0xff);
}
