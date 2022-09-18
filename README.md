# Awesome C and C++

All programs presented in this repository are compilable with gcc and g++ without any warnings.

# Cache access
```C
#include <stdio.h>

int main() {
  int a = 123456789;
  int b = 987654321;

  int array[1] = {0};

  for (int i = 0; i < 3; i++) {
    printf("%i\n", array[i]);
  }

  return 0;
}
```

```
Output:
0
987654321
123456789
```