#include <stdio.h>

int main() {
  for (int i=1; i <= 30; i++) {
    char num[5];
    snprintf(num, 5, "%d", i);

    if ((i % 3 == 0) && (i % 5 == 0)) {
      printf("FizzBuzz \n");
    } else if (i % 3 == 0) {
      printf("Fizz \n");
    } else if (i % 5 == 0) {
      printf("Buzz \n");
    } else {
      printf("%s \n", num);
    }
  }
  return 0;
}
