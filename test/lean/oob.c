/* NEGATIVE CONTROL for the memory-safety framework.

   `read_oob` is handed a 9-element array and reads element 9 — one past the
   end.  A memory-safety proof for it MUST NOT go through.  The point of this
   file is to find out *where* it fails to go through, and to check that the
   obstruction is the bounds condition itself rather than some unrelated
   accident of how the proof was written.

   Compare test/lean/u16loop.c, which is the same shape but in bounds. */

unsigned short read_oob(unsigned short *a) {
    return a[9];        /* valid indices are 0 .. 8 */
}

/* driven from main so the executable interpreter can be pointed at it too */
int main(void) {
    unsigned short arr[9];
    int i;
    for (i = 0; i < 9; i++)
        arr[i] = (unsigned short)i;
    return (int)read_oob(arr);
}
