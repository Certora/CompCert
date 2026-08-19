/* Small demo program for `clightgen -lean`.
   Exercises: a struct composite, a global with initializer, a loop and an
   if/comparison, pointer + field access, a function call, and returns. */

struct point { int x; int y; };

int g = 42;

int sum_to(int n)
{
  int i, s;
  s = 0;
  for (i = 0; i < n; i++)
    s += i;
  return s;
}

int dist2(struct point *p)
{
  return p->x * p->x + p->y * p->y;
}

int main(void)
{
  return sum_to(g);
}
