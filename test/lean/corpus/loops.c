/* while / for / do-while, break, continue, nested */
int main(void) {
  int i, j, s = 0;
  for (i = 0; i < 10; i++) {
    if (i == 3) continue;
    if (i == 8) break;
    s += i;
  }
  j = 0;
  while (j < 5) { s += j * 2; j++; }
  do { s -= 1; } while (s > 40);
  int k, t = 0;
  for (k = 0; k < 4; k++) { int q; for (q = 0; q < 3; q++) t += k * q; }
  return s + t;
}
