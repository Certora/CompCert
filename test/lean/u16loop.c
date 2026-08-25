/* Acceptance test for the Phase-2 CCLib additions.
   This is literally inflate_table's first loop (inftrees.c:116-117) with the
   enclosing function stripped: a u16 array local, zeroed by an indexed write.
   Exercises eval_index_lvalue, undefBytes_uncons_u16, arrayU16_snoc, and the
   entry/exit resource transfer. */
void zero16(void) {
    unsigned short count[16];
    int len;
    for (len = 0; len <= 15; len++)
        count[len] = 0;
    return;
}
