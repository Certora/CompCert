/* Bitfield READS, from initialized globals.
   Exercises Cop.load_bitfield / bitfield_extract and the Bits field layout.
   Reads only; bitfieldstore.c covers the write path. */
struct B {
  unsigned a : 3;
  unsigned b : 5;
  int      c : 4;      /* signed bitfield: read back sign-extended */
  unsigned d : 1;
  int      e;
};
struct B g = { 5u, 21u, -3, 1u, 1000 };
struct B h = { 7u, 31u, 7, 0u, -2000 };
int main(void) {
  int t = (int)g.a + (int)g.b + g.c + (int)g.d + g.e;
  t += (int)h.a * 100 + (int)h.b * 10 + h.c + (int)h.d + h.e;
  /* a signed 4-bit field holding -3 must read as -3, not as 13 */
  t += (g.c < 0) ? 1000 : 0;
  t += (h.c > 0) ? 2000 : 0;
  return t;
}
