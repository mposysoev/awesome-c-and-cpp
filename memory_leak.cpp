void leak_function()
{
    int* ptr = new int(42);
    return;
}

int main()
{
    for (int i = 0; i < 1000; i++) {
        leak_function();
    }
    return 0;
}
