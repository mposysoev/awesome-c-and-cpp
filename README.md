# Awesome C and C++

All programs presented in this repository are compilable with [GCC](https://gcc.gnu.org/) and [G++](https://gcc.gnu.org/) without any warnings.

## Cache access

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

Obviously, that`s an incorrect program. The for loop index i is out of bounds, but it's working and show us variables a and b which are not called from loop. The output depends on optimization flags at compile time, the result is repeatable in case of standard settings (-O).

## Index out of bounds

```C
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
```

```
Output:
111
0
111
222
333
444
555
0
111
7
-1239473248
684
221385646
32758
0
0
39
0
221433944
32758
0
0
0
0
0
0
...
```

This program may not start for some unknown reason. But if it starts, it shows the values of neighboring memory cells.

## Type conversion

```C
#include <stdio.h>

int main() {
  int eulers_number = 2.718281;
  printf("%f \n", eulers_number + 1.141592);

  return 0;
}
```

```
Output:
3.141592
```

Again, no warnings that something went wrong.

## Type overflow

```C
#include <stdio.h>

int main() {
  int first_big_number = 2147483627;
  int second_big_number = 2147483627;
  printf("%i \n", first_big_number + second_big_number);

  return 0;
}
```

```
Output:
-42
```

This program adds two large positive numbers, but the return equals a small negative number.

# Conclusion

Using the [Clang](https://clang.llvm.org/) compiler allows you to receive warnings when compiling these programs. The use of the [Rust language](https://www.rust-lang.org/) makes it impossible to compile equivalent programs.
