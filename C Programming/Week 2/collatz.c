#include <stdio.h>
#include <math.h>

int GetStart();
int NextCollatz(int y);

int main()
{
    int startingNumber = GetStart();

    while (startingNumber > 1)
    {
        startingNumber = NextCollatz(startingNumber);
        printf("%d, ", startingNumber);
    }
}

int GetStart()
{
    printf("Enter a starting number: ");
    int x;
    int checkFlag = 0;

    while (checkFlag == 0)
    {
        scanf("%d", &x);
        if (x > 0)
        {
            checkFlag = 1;
        }
        else
        {
            printf("Please enter a positive int: ");
        }
    }
    return x;
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
