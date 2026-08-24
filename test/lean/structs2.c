/* Minimal struct-field access: exercises structAt / fieldsAt_split /
   eval_field_scalar against a real `Efield` AST.  Shaped like the z_stream
   accesses zlib does constantly (`strm->avail_out` etc.). */
struct st { unsigned int x; unsigned int y; };
unsigned int gety(struct st *q) { return q->y; }
