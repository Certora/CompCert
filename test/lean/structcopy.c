/* Acceptance test for Sep.triple_assign_copy.
   `*dst = here;` has accessMode (Tstruct …) = By_copy, so it steps through
   AssignLoc.copy — a raw loadbytes/storebytes block copy — which no rule in
   the separation logic could discharge before triple_assign_copy.
   The layout mirrors zlib's `struct code` (inftrees.h): 1 + 1 + 2 = 4 bytes,
   no padding. */
struct code { unsigned char op; unsigned char bits; unsigned short val; };

void put(struct code *dst) {
    struct code here;
    here.op = 0;
    here.bits = 5;
    here.val = 42;
    *dst = here;
    return;   /* explicit, so the body ends in Sreturn */
}
