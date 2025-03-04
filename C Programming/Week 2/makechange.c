#include <stdio.h>
#include <math.h>

int Bills(int x);
int GetAmount();

int billNum = 0;
int userInput;

// 1, 5, 10, 20, 100

int main()
{
    // call two functions

    userInput = GetAmount();
    Bills(userInput);
    printf("You get %d bills back ", billNum);
}

int Bills(int x)
{
    while (x > 0)
    {
        if (x >= 100)
        {
            x -= 100;
            billNum += 1;
        }

        else if (x >= 20)
        {
            x -= 20;
            billNum += 1;
        }

        else if (x >= 10)
        {
            x -= 10;
            billNum += 1;
        }

        else if (x >= 5)
        {
            x -= 5;
            billNum += 1;
        }

        else if (x >= 1)
        {
            x -= 1;
            billNum += 1;
        }
    }
    return billNum;
}

int GetAmount()
{
    int y;
    // promps user for input
    printf("Enter a dollar amount: ");
    scanf("%d", &y);
    // loop back if input was negative
    while (y < 0)
    {
        printf("Please enter a positive amount ");
        scanf("%d", &y);
    }
    // return valid dollar amount as int
    return y;
}
