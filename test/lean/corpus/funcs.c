/* recursion, mutual recursion, many parameters */
int fact(int n) { return n <= 1 ? 1 : n * fact(n - 1); }
int isodd(int n);
int iseven(int n) { return n == 0 ? 1 : isodd(n - 1); }
int isodd(int n) { return n == 0 ? 0 : iseven(n - 1); }
int add6(int a, int b, int c, int d, int e, int f) { return a+b+c+d+e+f; }
int main(void) {
  return fact(6) + iseven(10) + isodd(7) + add6(1,2,3,4,5,6);
}
