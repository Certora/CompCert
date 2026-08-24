/* Phase-9 Wave-E item 6: inffast.c's backward-goto shape.  `dolen`/`dodist` are
   the two-level Huffman lookup — a code longer than the root table's bits jumps
   BACK to the label with `here` pointing into a second-level table.  A
   second-level entry is never itself a second-level pointer, so the jump fires
   at most once; the measure below is that bound. */

unsigned int lookup(unsigned int level)
{
  again:
    if (level == 0)
        return 7;
    level--;
    goto again;          /* backward jump */
}
