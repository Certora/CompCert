/* Phase-9 Wave-D exercise: a stack-allocated struct local, the shape
   compress2/uncompress2 use (`z_stream stream;` — 112 bytes, address-taken,
   fields written, address passed to a callee).  Cut down to two fields so the
   proof shows the mechanism rather than the bookkeeping. */

struct st { unsigned int a; unsigned int b; };

unsigned int sink(struct st *p);

unsigned int use_local(unsigned int x)
{
    struct st s;
    s.a = x;
    s.b = 7;
    return sink(&s);
}
