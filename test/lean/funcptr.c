/* Function pointers, in the two shapes zlib uses:
   - `apply`: an indirect call through a parameter (simplest form);
   - `callf`: an indirect call through a *struct field*, which is exactly
     zlib's ZALLOC/ZFREE (`(*((strm)->zalloc))(...)`). */

struct ops { int (*f)(int); int tag; };

int add1(int x) { return x + 1; }

int apply(int (*g)(int), int x) { return g(x); }

int callf(struct ops *o, int x) { return (*(o->f))(x); }
