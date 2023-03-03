#include <iostream>

int main()
{
    int array[5] = { 111, 222, 333, 444, 555 };
    int x = array[0];
    int y = array[100];

    std::cout << x << "\n";
    std::cout << y << "\n";

    // random sequence generator
    for (int i = 0; i < 100; i++) {
        std::cout << array[i] << "\n";
    }

    return 0;
}