/* Phase-9 Wave-B exercise: the four-layer access shape of trees.c,
   s->dyn_ltree[k].Freq (= s->dyn_ltree[k].fc.freq), read AND written,
   against zlib's REAL deflate.h — the layout is deflate_state's own. */
#include "deflate.h"

ush get_freq(deflate_state *s, int k)
{
    return s->dyn_ltree[k].Freq;
}

void set_freq(deflate_state *s, int k, ush v)
{
    s->dyn_ltree[k].Freq = v;
}
