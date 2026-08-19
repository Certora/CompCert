/* pointers into structs, arrays of pointers, function pointers via calls,
   nested loops writing through pointers */
struct Node { int val; struct Node *next; };
int sumlist(struct Node *n) { int s = 0; while (n) { s += n->val; n = n->next; } return s; }
void fill(int *p, int n, int base) { int i; for (i = 0; i < n; i++) p[i] = base + i * i; }
int main(void) {
  struct Node c = { 3, 0 }, b = { 2, &c }, a = { 1, &b };
  int arr[6];
  fill(arr, 6, 10);
  int *ptrs[3];
  ptrs[0] = &arr[0]; ptrs[1] = &arr[2]; ptrs[2] = &arr[5];
  int s = sumlist(&a);
  int i;
  for (i = 0; i < 3; i++) s += *ptrs[i];
  int m[3][4];
  int j;
  for (i = 0; i < 3; i++) for (j = 0; j < 4; j++) m[i][j] = i * 10 + j;
  for (i = 0; i < 3; i++) s += m[i][3];
  return s;
}
