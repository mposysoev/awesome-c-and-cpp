#include <stdio.h>

int main() {

  int array[5] = {111, 222, 333, 444, 555};
  int x = array[0];
  int y = array[100];

  printf("%i \n", x);
  printf("%i \n", y);

  // random sequence generator
  for (int i = 0; i < 100; i++) {
    printf("%i \n", array[i]);
  }

  return 0;
}