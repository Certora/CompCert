/* Bitfield STORES (read-modify-write), following Cop.store_bitfield.

   The carrier must be initialized.  A bitfield store first *reads* the whole
   carrier (Mint8unsigned/Mint16unsigned/Mint32) to splice the field into it, so
   storing into an uninitialized carrier reads Undef — undefined behaviour in
   CompCert's model.  Both CompCert's reference interpreter and the Lean one
   correctly get stuck on that; hence the initialized global here. */
struct B { unsigned a : 3; unsigned b : 5; int c : 4; };
struct B g = { 0u, 0u, 0 };
int main(void) {
  g.a = 5u; g.b = 21u; g.c = -3;
  int t = (int)g.a + (int)g.b + g.c;
  g.a = g.a + 1u;            /* read-modify-write */
  g.c = g.c - 1;
  t += (int)g.a * 10 + g.c;
  g.a = 9u;                  /* 9 does not fit in 3 bits: truncates to 1 */
  t += (int)g.a;
  return t & 0xff;
}
