/* Phase-9 Wave-E exercise: inflate's control shape.  A loop that bails out to a
   single top-level cleanup label, which then returns — 19 `goto inf_leave` in
   the C source become 37 gotos in Clight, all to one label at the top level of
   the body, after the loop.  Reduced here to the essential shape. */

unsigned int leave_loop(unsigned int n)
{
    unsigned int acc = 0;
    while (1) {
        if (n == 0) goto done;
        acc += n;
        n--;
    }
  done:
    return acc;
}
