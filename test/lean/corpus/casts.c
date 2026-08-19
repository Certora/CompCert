/* integer conversions and truncation */
int main(void) {
  int big = 300;
  signed char sc = (signed char)big;        /* 300 -> 44 */
  unsigned char uc = (unsigned char)(-1);   /* 255 */
  short sh = (short)70000;                  /* truncates */
  unsigned short ush = (unsigned short)(-2);
  long long l = (long long)(-5);
  unsigned long long ul = (unsigned long long)l;
  int back = (int)(ul & 0xFFu);
  return (int)sc + (int)uc + (int)(sh & 0xff) + (int)(ush & 0xff) + back;
}
