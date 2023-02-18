#include  <iostream>

int fa{};
int fb{};

void *identity(void *volatile p) { return p; }

int main() {
  void *a = (void *)fa;
  void *b = (void *)fb;

  if (a != b)
    std::cout << "a is different from b" << std::endl;


  if (identity(a) == identity(b))
    std::cout << "a is equal to b" << std::endl;

  return 0;
}