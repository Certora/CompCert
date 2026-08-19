/* switch with fallthrough and default; goto */
int f(int x) {
  int r = 0;
  switch (x) {
    case 0: r += 1;
    case 1: r += 2; break;
    case 5: r += 100; break;
    default: r += 7;
  }
  return r;
}
int main(void) {
  int s = f(0) + f(1) + f(5) + f(9);
  int i = 0;
loop:
  s += i;
  i++;
  if (i < 4) goto loop;
  return s;
}
