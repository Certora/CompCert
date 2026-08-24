/* Smallest program that WRITES through pointers: exercises the separation-logic
   store rule (triple_assign / mapsto_store) end to end, and the frame rule
   (each cell is owned separately). */
void swap(unsigned int *a, unsigned int *b) {
    unsigned int t = *a;
    *a = *b;
    *b = t;
}
