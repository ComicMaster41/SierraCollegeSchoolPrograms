#include <stdio.h>

const int LEN = 40;
int flag = 0;
int arr[40];

int NextCollatz(int y);

int main()
{
    for (int i = 0; i < 10; i++)
    {
        arr[i] = i;
    }

    for (int i = 10; i < 20; i++)
    {
        arr[i] = 100 + (i - 10) * 10;
    }

    int specialValues[] = {4, 8, 15, 16, 23, 42};
    for (int i = 20; i < 26; i++)
    {
        arr[i] = specialValues[i - 20];
    }
    int startingNumber = 7;
    for (int i = 26; i < LEN; i++)
    {
        arr[i] = startingNumber;
        startingNumber = NextCollatz(startingNumber);
    }

    // print the array
    for (int i = 0; i < LEN; i++)
    {
        printf("Array number %d is %d\n", i, arr[i]);
    }
}

int NextCollatz(int y)
{
    if (y % 2 == 0)
    {
        return y / 2;
    }
    else
    {
        return y * 3 + 1;
    }
}