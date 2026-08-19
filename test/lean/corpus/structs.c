/* structs, nested structs, arrays of structs, unions, by-value copy */
struct P { int x; int y; };
struct Q { struct P p; char c; int z; };
union U { int i; unsigned u; };
int sum(struct P v) { return v.x + v.y; }
int main(void) {
  struct Q q;
  q.p.x = 3; q.p.y = 4; q.c = 'A'; q.z = 10;
  struct P arr[3];
  int i;
  for (i = 0; i < 3; i++) { arr[i].x = i; arr[i].y = i + 1; }
  union U u; u.i = -1;
  struct P copy = q.p;            /* struct assignment: By_copy */
  return sum(copy) + q.c + q.z + arr[2].x + arr[2].y + (int)(u.u & 0xff);
}
